<?php
echo 'xxx';
exit;
/**
 * 入口文件
 * @author yangfan.ren@foxmail.com
 * @datetime 2016-12-14 17:35
 * @version 1.0
 */
// 编码设置
header ( 'Content-Type:text/html;charset=utf-8' );

// 错误级别,-1开启全部错误,0关闭全部PHP错误报告
error_reporting ( -1 );
// error_reporting(0);

// 设置时区
date_default_timezone_set ( "Asia/Shanghai" );

// 定义站点根目录
define ( 'SROOT', __DIR__ );

// 公共libs目录
define ( 'CLASS_PATH', SROOT . '/libs/' );

// 加载公共函数
require SROOT . '/libs/func.php';

// 加载配置
require SROOT . '/conf/config.php';

// html结构
?>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8" />
<title>code.yangfan.ren</title>
</head>
<body>
<?php
    echo client::Getip() . '<br/>';
    D(client::Getaddress(), false);
    echo '<br/>';
    echo client::GetBrowser(). '<br/>';
    echo client::GetLang(). '<br/>';
    echo client::GetOs(). '<br/>';
    exit;
?>
<script type="text/javascript">

</script>
</body>
</html>