<?php
/**
 * PDO数据库操作类
 * @package class
 * @author yangfan.ren@foxmail.com
 + build date 2017-5-17
 */

/**
 * 构造对象:
 * 		$pdo = pdoapp::init($conf_db['host'], $conf_db['port'], $conf_db['user'], $conf_db['pwd'], $conf_db['db']);
 * 事务的开启,回滚和提交:
 * 		$pdo->beginTrans();
 * 		$pdo->backTrans();
 * 		$pdo->commTrans();
 * 简单的SELECT语句:
 * 		$ret = $pdo->find('preheat_user', 
 * 			array(
 * 				'email'=>array('val'=>$email, 'type'=>'str', 'len'=>255), 
 * 				'gid'=>array('val'=>$gid, 'type'=>'int'),
 * 			)
 * 		);
 * 简单的INSERT语句构造:
 * 		$ret = $pdo->add('preheat_user', array('email'=>$email, 'iphone'=>$phone, 'gid'=>$gid));
 *
 */
class pdoapp {
	
	/**
	 * 单例
	 * 
	 * @var unknown
	 */
	private static $pdoapp = null;
	
	/**
	 * pdo对象
	 * 
	 * @var unknown
	 */
	private $pdo = null;
	
	/**
	 * 单例模式，防止对象被克隆
	 */
	private function __clone() {
	}
	
	/**
	 * 构造函数
	 * 
	 * @param unknown $conf        	
	 */
	private function __construct($host, $port, $user, $pwd, $dbName, $dbType = 'mysql') {
		$this->pdo = $this->conn ( $host, $port, $user, $pwd, $dbName, $dbType);
	}
	
	/**
	 * 单例出示化对象
	 * 
	 * @return object
	 */
	public static function init($host, $port, $user, $pwd, $dbName, $dbType = 'mysql') {
		if (!isset ( self::$pdoapp )) {
			self::$pdoapp = new pdoapp ( $host, $port, $user, $pwd, $dbName, $dbType );
		}
		return self::$pdoapp;
	}
	
	/**
	 * 以PDO方式链接数据库
	 * 
	 * @param unknown $host        	
	 * @param unknown $port        	
	 * @param unknown $user        	
	 * @param unknown $pwd        	
	 * @param unknown $dbName        	
	 * @param string $dbType        	
	 * @return PDO
	 */
	private function conn($host, $port, $user, $pwd, $dbName, $dbType = 'mysql') {
		$dsn = $dbType . ":host=" . $host . ";dbname=" . $dbName . ";port=" . $port;
		
		try {
			return new PDO ( $dsn, $user, $pwd);
			
		} catch ( Exception $e ) {
			$errMsg = $e->getMessage ();
			
			if (function_exists ( 'monitor' )) {
				monitor ( $errMsg, false );
			}
			
			function_exists ( '_exit' ) ? _exit ( $errMsg ) : exit ( $errMsg );
		}
	}
	
	/**
	 * 新增数据
	 * @param unknown $tableName 表名
	 * @param array $data 例: array('id'=>2, 'uname'=>'姓名', 'age'=>18)
	 * @return unknown
	 */
	public function add($tableName, array $data) {
		$num = count($data);
		$field = implode(array_keys($data), ',');
		$value = array_values($data);
		
		for ($i = 0; $i < $num; $i++) {
			$valStr .= $i + 1 != $num ? '?,' : '?';
		}
		
		$sql = "INSERT INTO `" . $tableName . "` (" . $field . ") VALUES(" . $valStr . ")";  
		
		$this->statement = $this->pdo->prepare ( $sql );
		
		$result = $this->statement->execute($value);
		
		if ($result === false) {
			$errInfo = $this->statement->errorInfo();
			$errMsg = isset($errInfo[2]) ? $errInfo[2] : '未知异常:表\'' . $tableName . '\' 新增数据失败';
			
			if (function_exists ( 'monitor' )) {
				monitor ( $errMsg, false );
			}
		}
		
		return $result;
	}
	
	/**
	 * 查询数据
	 * @param unknown $tableName
	 * @param array $where
	 * @return multitype:unknown
	 */
	public function find($tableName, array $where){
		$num = count($where);
		$whereStr = '';
		foreach ($where as $key=>$value) {
			$whereStr .= end(array_keys($where)) === $key ? $key . ' = :' . $key : $key . ' = :' . $key . ' AND ';
		}
		
		$sql = "SELECT * FROM `" . $tableName ."` WHERE " . $whereStr;
		
		$this->statement = $this->pdo->prepare($sql);
		
		// 必须用&引用传递,否则不会生效
 		foreach ($where as $key=>&$value) {
			$type = isset($value['type']) ? $value['type'] : _exit('type参数配置异常');
			
			if ($type === 'int') {
				$this->statement->bindParam(":$key", intval($value['val']), PDO::PARAM_INT);
			}elseif($type === 'str'){
				$len = isset($value['len']) ? $value['len'] : _exit('len参数配置异常');
				$this->statement->bindParam(":$key", $value['val'], PDO::PARAM_STR, intval($len));
			}else{
				_exit('type配置异常');
			}
		}
		
		$result = $this->statement->execute();
		
		if ($result === false) {
			$errInfo = $this->statement->errorInfo();
			$errMsg = isset($errInfo[2]) ? $errInfo[2] : '未知异常:表\'' . $tableName . '\'查询数据失败';
				
			if (function_exists ( 'monitor' )) {
				monitor ( $errMsg, false );
			}
			exit;
		}
		
		$data = array();
		while($row = $this->statement->fetch(PDO::FETCH_ASSOC)){
			$data[] = $row;
		};
		
		return $data;
	}
			
	public function beginTrans(){
		$this->pdo->beginTransaction();
	}
	
	public function commTrans(){
		$this->pdo->commit();
	}
	
	public function backTrans(){
		$this->pdo->rollBack();
	}
}