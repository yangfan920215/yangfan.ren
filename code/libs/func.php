<?php
/**
 * @author yangfan.ren@foxmail.com
 * @datetime 2016-12-14 17:51
 * @version 1.0
 */

/**
 * 自动载入类
 * @param string $classname  类名
 */
spl_autoload_register('autoload');
function autoload($classname) {
	// 优先加载本地类库
	$dirs = array(
		'./libs/class/' . $classname . '.class.php',
		'./libs/class/email/' . $classname . '.class.php',
		'./libs/class/db/' . $classname . '.class.php',
	);

	foreach ($dirs as $value) {
		if (file_exists($value)) {
			require_once $value;
			return;
		};
	}

	// 类库不存在
	function_exists('_exit') ? _exit($classname . ' don\'t exist') : exit(json_encode(array('status'=>-1, 'data'=>$classname . ' don\'t exist')));
}


/**
 * 获取IP地址
 * @return string
 */
function getIP(){
	if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown"))
		$ip = getenv("HTTP_CLIENT_IP");
	else if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown"))
		$ip = getenv("HTTP_X_FORWARDED_FOR");
	else if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown"))
		$ip = getenv("REMOTE_ADDR");
	else if (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown"))
		$ip = $_SERVER['REMOTE_ADDR'];
	else
		$ip = "";
	return $ip;
}

function isHttps(){
	return isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == "on" ? true : false;
}

/**
 * 监控访问信息并打印日志
 * @param string $ret
 * @param bool $isPrintData
 * @param array $printGlobalType
 * @return bool
 */
function monitor($ret = '', $isPrintData = true, $printGlobalType = array()){
	defined('LOG_PATH') or define('LOG_PATH', '/data/wwwroot/yangfan.ren/code/data/log');

	// 汇总数据
	$data = array();

	// 如果定义了日志目录,或日志目录已存在,使用之
	if (is_writable(LOG_PATH)) {
		$log_path = LOG_PATH;
	}else{
		echo 'writeLog failed,' . LOG_PATH . ' can\'t find the logFile write in';
		return false;
	}
	// 日志目录
	$fileName = $log_path . '/' . date('Y-m-d') . '.log';

	//　访问的uri
	$_SERVER['SERVER_NAME'] = isset($_SERVER['SERVER_NAME']) ? $_SERVER['SERVER_NAME'] : '';
	$_SERVER['SERVER_PORT'] = isset($_SERVER['SERVER_PORT']) ? $_SERVER['SERVER_PORT'] : '';
	$_SERVER['REQUEST_URI'] = isset($_SERVER['REQUEST_URI']) ? $_SERVER['REQUEST_URI'] : '';
	
	if (function_exists('isHttps')) {
		$http = isHttps() ? 'https' : 'http';
	}else{
		$http = isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] == "on" ? 'https' : 'http';
	}
	
	$request_url = $http . '://' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER["SERVER_PORT"] . $_SERVER["REQUEST_URI"];

	// 获取日志文件句柄,w+为覆盖写,x+为谨慎写,文件若已存在会抛出一个警告
	$fp = fopen($fileName, 'a+b');

	// 判断创建或打开文件是否  创建或打开文件失败，请检查权限或者服务器忙;
	if($fp === false){
		echo 'function monitor error, can\'t open the file';
		return false;
	}
	
	if (function_exists('getIP')) {
		$ip = getIP();
	}else{
		if (getenv("HTTP_CLIENT_IP") && strcasecmp(getenv("HTTP_CLIENT_IP"), "unknown"))
			$ip = getenv("HTTP_CLIENT_IP");
		else if (getenv("HTTP_X_FORWARDED_FOR") && strcasecmp(getenv("HTTP_X_FORWARDED_FOR"), "unknown"))
			$ip = getenv("HTTP_X_FORWARDED_FOR");
		else if (getenv("REMOTE_ADDR") && strcasecmp(getenv("REMOTE_ADDR"), "unknown"))
			$ip = getenv("REMOTE_ADDR");
		else if (isset($_SERVER['REMOTE_ADDR']) && $_SERVER['REMOTE_ADDR'] && strcasecmp($_SERVER['REMOTE_ADDR'], "unknown"))
			$ip = $_SERVER['REMOTE_ADDR'];
		else
			$ip = "";
	}
	
	// 日志信息
	$logs = '[IP:' . $ip . '] - [TIME:' . date("Y-m-d H:i:s") . '] - [url:{' . $request_url . '}] - [var:{' . var_export($ret, true) . '}]';
	
	// 打印数据
	if ($isPrintData) {
		// POST数据
		if (!empty($_POST)) {
			$data['post'] = $_POST;
		}
		$php_input = file_get_contents("php://input");
		
		if (!empty($php_input)) {
			$data['post_input'] = $php_input;
		}
		
		$logs .= ' - [data:{' . str_replace(' ', '', var_export($data, true)) . '}]';
	}

	// 打印其他全局信息
	foreach ($printGlobalType as $value){
		$name = '_' . strtoupper($value);
		
		if (isset($GLOBALS[$name]) && !empty($GLOBALS[$name])) {
			$logs .= ' - [' . $value . ':{' . str_replace(' ', '', var_export($GLOBALS[$name], true)) . '}]';
		}
	}
	
	// 换行符,不能用单引号
	$logs .=  "\r\n";

	// 记录访问url,参数和返回值
	if(fwrite($fp, $logs, strlen($logs))){
		fclose($fp);
		return true;
	}else{
		echo 'function monitor error, can\'t write in file';
		return false;
	}
}


/**
 * 调试函数
 * @param mixd $data
 * @param string $is_ext
 */
function D($data, $is_ext = TRUE){
	echo '<pre>';
	print_r($data);
	if ($is_ext) {
		exit;
	}
}

/**
 * 退出并返回json格式数据
 * @param string $msg
 * @param unknown $status
 */
function _exit($msg = '', $status = -1){
	exit(json_encode(array('status'=>$status, 'data'=>$msg), JSON_UNESCAPED_UNICODE));
}

/**
 * 以smtp的方式发送邮件
 * @param unknown $adress	收信人邮箱地址
 * @param unknown $title	邮件标题
 * @param unknown $sender	邮件发送人
 * @param unknown $contentDir	邮件内容目录
 * @param unknown $attachment	附件文件地址
 * @return boolean
 */
function sendSmtpMail($adress, $title, $sender, $contentDir, $attachment = false){
	//Create a new PHPMailer instance
	$mail = new PHPMailer;
	//Tell PHPMailer to use SMTP
	$mail->isSMTP();
	//Enable SMTP debugging
	// 0 = off (for production use)
	// 1 = client messages
	// 2 = client and server messages
	$mail->SMTPDebug = 0;
	//Ask for HTML-friendly debug output
	$mail->Debugoutput = 'html';

	// 邮件发送服务器
	$mail->Host = "smtp.ym.163.com";
	// 邮件发送服务器端口
	$mail->Port = 465;

	// 是否使用SMTP认证
	$mail->SMTPAuth = true;
	$mail->SMTPSecure = 'ssl';

	// 邮件发送账户邮箱名
	$mail->Username = "noreply@ugmars.com";
	// 邮件发送账户密码
	$mail->Password = "abc1234";

	// 设置发信人名称
	$mail->setFrom('noreply@ugmars.com', $sender);

	//Set an alternative reply-to address
	//$mail->addReplyTo('549216762@qq.com', 'First Last');

	//Set who the message is to be sent to
	$mail->addAddress($adress, 'Dear players');

	//Set the subject line
	$mail->Subject = $title;
	//Read an HTML message body from an external file, convert referenced images to embedded,
	//convert HTML into a basic plain-text alternative body

	if (file_exists($contentDir)) {
		$mail->msgHTML(file_get_contents($contentDir), dirname(__FILE__));
	}

	if (file_exists($attachment)) {
		 $mail->addAttachment($attachment);
	}

	if (!$mail->send()) {
		if (function_exists ( 'monitor' )) {
			monitor($mail->ErrorInfo, false);
		}
		return false;
	} else {
		return true;
	}
}

/**
 * 创建目录，支持递归创建
 * @param string $path 目录
 * @return bool
 */
function _mkdir($path) {
	$result = false;
	$dir = explode('/', $path);

	$p = '';
	for ($i=0; $i<count($dir); $i++) {
		if(!empty($dir[$i])) {
			$p .= $dir[$i].'/';
			if (!file_exists($p)) {
				$result = mkdir($p);
				if (!$result) break;
			}
		}
	}
	return $result;
}