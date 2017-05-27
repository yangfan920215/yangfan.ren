<?php
/**
 * 验证类
 * @package class
 * @author yangfan.ren@foxmail.com
 + build date 2017-01-23
 */

/**
 * 验证是否为BigInt类型:validator::isBigint($value)
 * 验证是否为正整数:validator::isInteger($value)
 * 验证是否为大于0的INT类型:validator::isUserId($value)
 * 验证是否为手机号码:validator::isMobile($value)
 */
class _validator
{
	/**
	 * 验证是否为BigInt类型
	 * @author Haver.Guo
	 * @param string $value 检查值
	 * @return bool
	 */
	static function isBigint($value){
		$pattern = '/^-?[0-9]+$/';	//数字正则
		if(!preg_match($pattern, $value)){
			return false;
		}
		if($value<-9223372036854775808 || $value>9223372036854775807){
			return false;
		}
		return true;
	}
	
	/**
	 * 判断是否为正整数
	 * @author Haver.Guo
	 * @param string $value 检查值
	 */
	static function isInteger($value){
		$pattern = '/^[0-9]+$/';	//数字正则
		return preg_match($pattern, $value);
	}

	/**
	 * 检查是否用户游戏ID(大于0的INT类型)
	 * @author Haver.Guo
	 * @param string $value
	 * @return bool
	 */
	static function isUserId($value){
		$pattern = '/^[0-9]+$/';	//数字正则
		if(!preg_match($pattern, $value)){
			return false;
		}
		if($value>2147483647){
			return false;
		}
		return true;
	}
	
	/**
	 * 验证是否手机号（1xxxxxxxxxx形式）
	 * @author Haver.Guo
	 * @param string $str 手机号
	 * @return bool
	 */	
	static function isMobile($str){
		return preg_match("/^1\d{10}$/", $str);
	}
	
	/*
	static function isUnsignedNumeric($value){
		$pattern = '/^[0-9]+$/';	//数字正则
		return preg_match($pattern, $value);
	}*/
}