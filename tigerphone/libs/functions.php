<?php
/**
 * Created by PhpStorm.
 * User: phoenix
 * Date: 6/14/17
 * Time: 1:17 PM
 */


/**
 * 返回与前端约定格式的数据
 * @param int $status
 * @param array $data
 * @param string $msg
 */
function _exit($status = 4, $data = array(), $msg = ''){
    exit(json_encode(array(
        'status'=>$status,
        'msg'=>$msg,
        'data'=>$data,
    ), true));
}

/**
 * 翻译
 * @param string $key
 * @param array $replace
 * @param int $uc_type      1: 首字母大写； 2：全部单词首字母大写；3：先将slug格式转换为自然语言格式，再全部单词首字母大写
 * @param string $locale    语言代码
 * @return string
 */
function __($key, $replace = array(), $uc_type = 1, $locale = null) {
//    $pre = 'transfer.';
    !empty($replace) or $replace = [];
    $aKeyParts = explode('.', $key);
    if (count($aKeyParts) > 1) {
        list($sFile, $sKey) = $aKeyParts;
    } else {
        $sFile = '_basic';
        $sKey = $aKeyParts[0];
        $key = $sFile . '.' . $sKey;
    }
    $key = strtolower($key);
    $str = \Illuminate\Support\Facades\Lang::get($key, $replace, $locale);
    $str != $key or $str = $sKey;
    if ($uc_type > 0) {
        switch ($uc_type) {
            case 1:
                $str = ucfirst($str);
                break;
            case 2:
                $str = ucwords($str);
                break;
            case 3:
                $str = String::humenlize($str);
                $str = ucwords($str);
        }
//        $function = $uc_type == 1 ? 'ucfirst' : 'ucwords';
//        $str = $function($str);
    }
//    $str = Str::slug($str);
    return $str;
}

/**
 * trim数组中的每个value
 * @param $array
 * @return array
 */
function trimArray($array) {
    $data = [];
    foreach ($array as $key => $value) {
        if (is_array($value)) {
            $data[$key] = trimArray($value);
        } else {
            $data[$key] = (trim($value));
        }
    }
    return $data;
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
 * 获取客户的IP
 * @return string
 */
function get_client_ip() {
    if (isset($_SERVER['HTTP_CLIENT_IP']) && !empty($_SERVER['HTTP_CLIENT_IP'])) {
        file_put_contents('/tmp/ip.log', "HTTP_CLIENT_IP:" . $_SERVER['HTTP_CLIENT_IP'] . "\n", FILE_APPEND);
    }
    if (isset($_SERVER['HTTP_X_FORWARDED_FOR']) && !empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        file_put_contents('/tmp/ip.log', "HTTP_X_FORWARDED_FOR:" . $_SERVER['HTTP_X_FORWARDED_FOR'] . "\n", FILE_APPEND);
    }
    if (isset($_SERVER['HTTP_PROXY_USER']) && !empty($_SERVER['HTTP_PROXY_USER'])) {
        file_put_contents('/tmp/ip.log', "HTTP_PROXY_USER:" . $_SERVER['HTTP_PROXY_USER'] . "\n", FILE_APPEND);
    }
    if (isset($_SERVER['REMOTE_ADDR']) && !empty($_SERVER['REMOTE_ADDR'])) {
        file_put_contents('/tmp/ip.log', "REMOTE_ADDR:" . $_SERVER['REMOTE_ADDR'] . "\n", FILE_APPEND);
    }
    if (isset($_SERVER['HTTP_CLIENT_IP']) && !empty($_SERVER['HTTP_CLIENT_IP'])) {
        return $_SERVER['HTTP_CLIENT_IP'];
    }
    if (isset($_SERVER['HTTP_X_FORWARDED_FOR']) && !empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        return strtok($_SERVER['HTTP_X_FORWARDED_FOR'], ',');
    }
    if (isset($_SERVER['HTTP_PROXY_USER']) && !empty($_SERVER['HTTP_PROXY_USER'])) {
        return $_SERVER['HTTP_PROXY_USER'];
    }
    if (isset($_SERVER['REMOTE_ADDR']) && !empty($_SERVER['REMOTE_ADDR'])) {
        return $_SERVER['REMOTE_ADDR'];
    } else {
        return "0.0.0.0";
    }
}