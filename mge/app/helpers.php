<?php
/**
 * Created by PhpStorm.
 * User: phoenix
 * Date: 7/3/17
 * Time: 9:36 PM
 */
function xtime($sDate, $eDate){
    $cle = strtotime($eDate) - strtotime($sDate);

    /* 这个只是提示
    echo floor($cle/60); //得出一共多少分钟
    echo floor($cle/3600); //得出一共多少小时
    echo floor($cle/3600/24); //得出一共多少天
    */
    /*Rming()函数，即舍去法取整*/
    $d = floor($cle/3600/24);
    $h = floor(($cle%(3600*24))/3600);  //%取余
    $m = floor(($cle%(3600*24))%3600/60);
    $s = floor(($cle%(3600*24))%60);
    return "$d 天 $h 小时 $m 分 $s 秒";
}