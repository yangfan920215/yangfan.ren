<?php
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

// 加载composer
require('./vendor/autoload.php');

// 业务逻辑

// html结构
?>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8" />
<title>code.yangfan.ren</title>
</head>
<body>
<video id="videoPlayer" controls="" poster="http://i1.letvimg.com/lc10_yunzhuanma/201708/05/03/52/e54399040076011bbe21600e1092ac3f_v2_NDgzNzE2NDE2/thumb/2_640_360.jpg" autoplay="true" src="http://play.g3proxy.lecloud.com/vod/v2/MjYwLzIvODAvYmNsb3VkLzEwMDAwMS92ZXJfMDBfMjItMTExMTk3MjE2NC1hdmMtNDE5NjU1LWFhYy00ODAwMC02OTg5Njk5LTQxOTQyMTAwNi0yMTNiNDlhODMwNDNjYzZlMDcwMzgyNzBhMzExMzExZS0xNTAxODg1Nzg4NDU1Lm1wNA==?b=479&amp;mmsid=241857708&amp;tm=1503380670&amp;key=817acf1dc17401586989a3074e097e00&amp;platid=2&amp;splatid=209&amp;playid=0&amp;tss=ios&amp;vtype=13&amp;cvid=0&amp;payff=0&amp;uuid=70c74ab2&amp;pip=78f3f5e858034bf6b60d7dd4a866e69d&amp;tag=macos&amp;sign=bcloud_100001&amp;termid=2&amp;pay=0&amp;ostype=macos&amp;hwtype=un" style="width: 100%; height: 100%;"></video>
<script type="text/javascript">
</script>
</body>
</html>