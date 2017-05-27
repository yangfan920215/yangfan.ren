<?php
/**
 * redis操作类
 * @author yangfan.ren@foxmail.com
 * @date 2016-8-15
 + build date 2017-5-17
 */

/**
 * 构造对象:$redisapp = redisapp::init($redis_conf);
 * 签名:$redisapp->sign('test', 120);
 */

class redisapp{
	
	private static $redisapp = null;
	
	private $redis = null;
	
	/**
	 * 单例模式，防止对象被克隆
	 */
	private function __clone() {}
	
	/**
	 * 构造函数
	 * @param unknown $conf
	 */
	private function __construct($config) {
		$host = isset($config['host']) ? $config['host'] : '127.0.0.1';
		$port = isset($config['port']) ? $config['port'] : 6379;
		$maxConnTime = isset($config['maxConnTime']) ? $config['maxConnTime'] : 5;
		
		// 生成redis访问对象
		$this->redis = new Redis();
		$this->redis->connect($host, $port, $maxConnTime) or die('redis初始化失败！');
	}
	
	/**
	 * 单例出示化对象
	 * @return object
	 */
	public static function init($config) {
		if (!isset(self::$redisapp)) {
			self::$redisapp = new redisapp($config);
		}
		return self::$redisapp;
	}
	
	/**
	 * redis签名处理(不关心value值的情况,只是使用一个key占据位置)
	 * @param unknown $key
	 * @param unknown $timeout	默认生效期为一年
	 * @return boolean
	 */
	public function sign($key, $timeout = 31536000){
		// 严格模式
		$val = false;
		
		if($this->redis) {
			// 签入,若不存在该key或key值不是一个整数,会返回false
			$val = $this->redis->incr($key);
			// 若key没有设置生存时间,进行设置
			if($this->redis->ttl($key) < 1) {
				$this->redis->expire($key, $timeout);
			}
		}
		// 返回处理结果		
		return $val;
	}
}