<?php

/**
 * Created by PhpStorm.
 * User: yangfan.ren@foxmail.com
 * Date: 2017/2/13
 * Time: 12:03
 * Func: 获取Web客户端的各类信息
 */
class _client{

    /**
     * 获得访客浏览器类型
     * @return string
     */
    public static function GetBrowser(){
        if(!empty($_SERVER['HTTP_USER_AGENT'])){
            $br = $_SERVER['HTTP_USER_AGENT'];
            if (preg_match('/MSIE/i',$br)) {
                $br = 'MSIE';
            }elseif (preg_match('/Firefox/i',$br)) {
                $br = 'Firefox';
            }elseif (preg_match('/Chrome/i',$br)) {
                $br = 'Chrome';
            }elseif (preg_match('/Safari/i',$br)) {
                $br = 'Safari';
            }elseif (preg_match('/Opera/i',$br)) {
                $br = 'Opera';
            }else {
                $br = 'Other';
            }
            return $br;
        }else{return "获取浏览器信息失败！";}
    }

    /**
     * 获得访客浏览器语言
     * @return string
     */
    public static function GetLang(){
        if(!empty($_SERVER['HTTP_ACCEPT_LANGUAGE'])){
            $lang = $_SERVER['HTTP_ACCEPT_LANGUAGE'];
            $lang = substr($lang,0,5);
            if(preg_match("/zh-cn/i",$lang)){
                $lang = "简体中文";
            }elseif(preg_match("/zh/i",$lang)){
                $lang = "繁体中文";
            }else{
                $lang = "English";
            }
            return $lang;

        }else{return "获取浏览器语言失败！";}
    }

    /**
     * 获取访客操作系统
     * @return string
     */
    public static function GetOs(){
        if(!empty($_SERVER['HTTP_USER_AGENT'])){
            $OS = $_SERVER['HTTP_USER_AGENT'];
            if (preg_match('/win/i',$OS)) {
                $OS = 'Windows';
            }elseif (preg_match('/mac/i',$OS)) {
                $OS = 'MAC';
            }elseif (preg_match('/linux/i',$OS)) {
                $OS = 'Linux';
            }elseif (preg_match('/unix/i',$OS)) {
                $OS = 'Unix';
            }elseif (preg_match('/bsd/i',$OS)) {
                $OS = 'BSD';
            }else {
                $OS = 'Other';
            }
            return $OS;
        }else{return "获取访客操作系统信息失败！";}
    }

    /**
     * 获得访客真实ip
     * @return mixed|string
     */
    public static function Getip(){
        if(!empty($_SERVER["HTTP_CLIENT_IP"])){
            $ip = $_SERVER["HTTP_CLIENT_IP"];
        }
        if(!empty($_SERVER['HTTP_X_FORWARDED_FOR'])){ //获取代理ip
            $ips = explode(',',$_SERVER['HTTP_X_FORWARDED_FOR']);
        }
        if(isset($ip)){
            $ips = array_unshift($ips,$ip);
        }

        $count = isset($ips) ? count($ips) : 0;
        for($i=0;$i<$count;$i++){
            if(!preg_match("/^(10|172\.16|192\.168)\./i",$ips[$i])){//排除局域网ip
                $ip = $ips[$i];
                break;
            }
        }
        $tip = empty($_SERVER['REMOTE_ADDR']) ? $ip : $_SERVER['REMOTE_ADDR'];
        if($tip=="127.0.0.1"){ //获得本地真实IP
            return self::get_onlineip();
        }else{
            return $tip;
        }
    }

    /**
     * 获得本地真实IP
     * @return mixed|string
     */
    private function get_onlineip() {
        $mip = file_get_contents("http://city.ip138.com/city0.asp");
        if($mip){
            preg_match("/\[.*\]/",$mip,$sip);
            $p = array("/\[/","/\]/");
            return preg_replace($p,"",$sip[0]);
        }else{return "获取本地IP失败！";}
    }

    /**
     * 根据ip获得访客所在地地名
     * @param string $ip
     * @return string
     */
    public static function Getaddress($ip=''){
        if(empty($ip)){
            $ip = self::Getip();
        }
        $ipadd = file_get_contents("http://int.dpool.sina.com.cn/iplookup/iplookup.php?ip=".$ip);//根据新浪api接口获取
        if($ipadd){
            $charset = iconv("gbk","utf-8",$ipadd);
            preg_match_all("/[\x{4e00}-\x{9fa5}]+/u",$charset,$ipadds);

            return $ipadds;   //返回一个二维数组
        }else{return "addree is none";}
    }
}