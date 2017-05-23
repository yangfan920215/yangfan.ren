<?php
/**
 * http请求构造功能类
 * @package class
 * @author yangfan.ren@foxmail.com
 + build date 2017-01-23
 */

/**
 * 同步GET方式请求:$ret = http::do_get('http://code.yangfan.ren/response.php?x=1');
 * 同步POST方式请求:$ret = http::do_post('http://code.yangfan.ren/response.php', array('a'=>1, 'b'=>2));
 * 异步POST方式请求:$ret = http::do_post_async('http://code.yangfan.ren/response.php', array('a'=>1, 'b'=>3));
 */
 
class _http {
	
	/**
	 * 通过GET发送请求
	 * @param string $url 请求的链接
	 * @param int $timeout 请求超时时间
	 * @return mixed
	 * @since 1.0.1
	 */
	public static function do_get($url, $timeout = 5) {
		$code = self::get_support();
		
		switch($code) {
			case 1:
				return self::curl($url, '', $timeout);
			case 2:
				return self::socket_get($url, $timeout);
			case 3:
				return  self::_file_get_contents($url, $timeout);
			default:
				return false;	
		}
	}
	
	/**
	 * 通过POST方式发送数据
	 * @param string $url 请求的链接
	 * @param array $data 请求的参数
	 * @param int $timeout 请求超时时间
	 * @return mixed
	 * @since 1.0.1
	 */
	public static function do_post($url, $data = array(), $timeout = 5) {
		$code = self::get_support();
		switch($code) {
			case 1:return self::curl($url, $data, $timeout);break;
			case 2:return self::socket_post($url, $data, $timeout);break;
			default:return false;	
		}
	}
	
	/**
	 * 通过POST方式发送数据
	 * @param string $url 请求的链接
	 * @param array $data 请求的参数
	 * @param int $timeout 请求超时时间
	 * @return mixed
	 * @since 1.0.1
	 */
	public static function do_post_async($url, $data = array(), $timeout = 5) {
		$code = self::get_support();
		switch($code) {
			case 1: self::curl($url, $data, $timeout, 'async');break;
			case 2: self::socket_post($url, $data, $timeout, 'async');break;
		}
	} 
	 
	/**
	 * 获取支持读取远程文件的方式
	 * @return number
	 * @since 1.0.1
	 */
	private static function get_support() {		
		if(function_exists('curl_init')) {
			//curl方式
			return 1;
		} else if(function_exists('fsockopen')) {
			//socket
			return 2;
		} else if(function_exists('file_get_contents')) {
			//php系统函数file_get_contents
			return 3;
		} else if(ini_get('allow_url_fopen')&&function_exists('fopen')) {
			//php系统函数fopen
			return 4;
		} else{
			return 0;
		}	
	}
	
	/**
	 * 获取http内容
	 * @param object $fsock socket句柄
	 * @return mixed
	 * @since 1.0.1
	 */
	private static function get_http_content($fsock = null) {
		$out = null;
		while($buff = @fgets($fsock, 2048)) {
			$out .= $buff;
		}
		fclose($fsock);
		$pos = strpos($out, "\r\n\r\n");
		$head = substr($out, 0, $pos);    //http head
		$status = substr($head, 0, strpos($head, "\r\n"));    //http status line
		$body = substr($out, $pos + 4, strlen($out) - ($pos + 4));//page body
		if(preg_match("/^HTTP\/\d\.\d\s([\d]+)\s.*$/", $status, $matches)){
			if(intval($matches[1]) / 100 == 2) {
				return $body;  
			} else {
				return false;
			}
		} else {
			return false;
		}
	}
	
	/**
	 * socket模拟GET发送请求
	 * @param string $url 请求的链接
	 * @param int $timeout 请求超时时间
	 * @return mixed
	 * @since 1.0.1
	 */
	private static function socket_get($url, $timeout = 5) {
		$url2 = parse_url($url);
		$url2['path'] = isset($url2['path'])? $url2['path']: '/' ;
		$url2['port'] = isset($url2['port'])? $url2['port'] : 80;
		$url2['query'] = isset($url2['query'])? '?'.$url2['query'] : '';
		$host_ip = @gethostbyname($url2['host']);
		$fsock_timeout = $timeout;  //超时时间
		if(($fsock = fsockopen($host_ip, $url2['port'], $errno, $errstr, $fsock_timeout)) < 0){
			return false;
		}
		$request =  $url2['path'] .$url2['query'];
		$in  = "GET " . $request . " HTTP/1.1\r\n";
		$in .= "Accept: */*\r\n";
	//	$in .= "User-Agent: Payb-Agent\r\n";
		$in .= "Host: " . $url2["host"] . "\r\n";
		$in .= "Connection: Close\r\n\r\n";
		if(!@fwrite($fsock, $in, strlen($in))){
			@fclose($fsock);
			return false;
		}
		return self::get_http_content($fsock);
	}
	
	/**
	 * socket模拟POST发送请求
	 * @param string $url 请求的链接
	 * @param array $data 请求的参数
	 * @param string $timeout 请求超时时间
	 * @return mixed
	 * @since 1.0.1
	 */
	private static function socket_post($url, $post_data = array(), $timeout = 5) {
		$url2 = parse_url($url);
		$url2['path'] = isset($url2['path']) ?  $url2['path'] : '/';
		$url2['port'] = isset($url2["port"]) ? $url2['port'] : 80;
		$host_ip = @gethostbyname($url2['host']);
		$fsock_timeout = $timeout; //超时时间
		if(($fsock = fsockopen($host_ip, $url2['port'], $errno, $errstr, $fsock_timeout)) < 0) {
			return false;
		}
		$url2['query'] = isset($url2['query']) ? '?' . $url2['query'] : '';
		$request =  $url2['path'].$url2['query'];
		if(is_array($post_data)){
			$post_data2 = http_build_query($post_data);
		}else{
			$post_data2 = $post_data;
		}
		$in  = "POST " . $request . " HTTP/1.1\r\n";
		$in .= "Accept: */*\r\n";
		$in .= "Host: " . $url2["host"] . "\r\n";
//		$in .= "User-Agent: Lowell-Agent\r\n";
		$in .= "Content-type: application/x-www-form-urlencoded\r\n";
		$in .= "Content-Length: " . strlen($post_data2) . "\r\n";
		$in .= "Connection: Close\r\n\r\n";
		$in .= $post_data2 . "\r\n\r\n";
		unset($post_data2);
		if(!@fwrite($fsock, $in, strlen($in))){
			@fclose($fsock);
			return false;
		}
		if($type != 'async') {
			//非异步调用， 需要返回值
			return self::get_http_content($fsock);;
		}
	}
	
	/**
	 * curl模拟GET/POST发送请求
	 * @param string $url 请求的链接
	 * @param array $data 请求的参数
	 * @param string $timeout 请求超时时间
	 * @return mixed
	 * @since 1.0.1
	 */
	private static function curl($url, $data = array(), $timeout = 5, $type = '') {
		$ch = curl_init();
		if (!empty($data) && $data) {
/* 			if(is_array($data)){
				$formdata = http_build_query($data);
			} else {
				$formdata = $data;
			} */
			$formdata = $data;
			curl_setopt($ch, CURLOPT_POST, true);
			curl_setopt($ch, CURLOPT_POSTFIELDS, $formdata);
		}
		curl_setopt($ch, CURLOPT_URL, $url);
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
		curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
		curl_setopt($ch, CURLOPT_TIMEOUT, $timeout);
		curl_setopt($ch, CURLOPT_ENCODING, '');

/*
        验证https,$CA代指是否强制验证https
        if ($SSL && $CA) {
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, true);   // 只信任CA颁布的证书
            curl_setopt($ch, CURLOPT_CAINFO, $cacert); // CA根证书（用来验证的网站证书是否是CA颁布）
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 2); // 检查证书中是否设置域名，并且是否与提供的主机名匹配
        } else if ($SSL && !$CA) {
            curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false); // 信任任何证书
            curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, 1); // 检查证书中是否设置域名
        }*/


        $result = curl_exec($ch);
		
		curl_close($ch);
		if($type != 'async') {
			//非异步调用， 需要返回值
			return $result;
		}
	}
	
	/**
	 * php系统函数file_get_contents
	 * @param string $url 请求的链接
	 * @param string $timeout 请求超时时间
	 * @return mixed
	 * @since 1.0.1
	 */
    private static function _file_get_contents($url, $timeout = 5) {
		$ctx = stream_context_create(array(
            'http'=>array(
                    'timeout'=>$timeout
                    )
                )
        );
        $result = @file_get_contents($url,0,$ctx);
		return $result;
	}
}

