<?php

// 公共资源访问地址
$resourceCssUrl_conf = 'http://res.yangfan.ren/css';
$resourceJsUrl_conf = 'http://res.yangfan.ren/js';
$resourceImgUrl_conf = 'http://res.yangfan.ren/img';
$resourceFontsUrl_conf = 'http://res.yangfan.ren/fonts';
// 数据库
$db_conf = array (
		'host' => '112.74.126.106',
		'port' => 3306,
		'user' => 'webdba',
		'pwd' => 'admin123',
		'db' => 'test'
);
// redis
$redis_conf = array(
	'host'=>'112.74.126.106',
	'port'=>'6379',
	'maxConnTime'=>5,
);
$sendEmails = array(
    'noreply3@ugmars.com',
);