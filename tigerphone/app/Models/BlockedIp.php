<?php

class BlockedIp extends BaseModel {
    protected $table = 'blocked_ips';
    protected $fillable = [
        'ip_start',
        'ip_end',
        'ip_extend',
        'ip_long_diff',
    ];

    public static $resourceName = 'BlockedIp';

    public static function checkInBlockedIps($sIpLong) {
        $oQuery = self::where('ip_start_long', '<=', $sIpLong)->where('ip_end_long', '>=', $sIpLong);
        $data = $oQuery->first();
        // $queries = DB::getQueryLog();
        // $last_query = end($queries);
        // pr($last_query);
        // exit;
        // TODO 白名单机制，以后可以考虑加白名单表
        $aWhiteList = [
            ['start' => '203.208.27.0', 'end' => '203.208.27.255',],
            ['start' => '203.208.29.0','end' => '203.208.29.255',],
            ['start' => '112.199.74.178','end' => '112.199.74.178',],
            ['start' => '112.198.14.202','end' => '112.198.14.202',],
            ['start' => '116.93.127.170','end' => '116.93.127.170',],
            ['start' => '123.51.187.168','end' => '123.51.187.168',],
            ['start' => '211.72.5.99','end' => '211.72.5.99',],
            ['start' => '180.232.99.74','end' => '122.52.179.169',],
            ['start' => '116.93.37.2','end' => '116.93.37.2',],
            ['start' => '124.105.171.81','end' => '124.105.171.81',],
            ['start' => '124.105.59.223','end' => '124.105.59.223',],
            ['start' => '122.52.11.36','end' => '122.52.11.36',],
            ['start' => '222.127.5.42','end' => '222.127.5.42',],
            ['start' => '121.97.157.12','end' => '121.97.157.12',],
            ['start' => '203.177.171.195','end' => '203.177.171.195',],
            ['start' => '222.127.178.109','end' => '222.127.178.109',],
            ['start' => '112.199.74.176','end' => '112.199.74.183',],
            ['start' => '112.198.14.200','end' => '112.198.14.207',],
            ['start' => '116.93.127.168','end' => '116.93.127.175',],
            ['start' => '180.232.67.94','end' => '180.232.67.94',],
            ['start' => '119.92.205.54','end' => '119.92.205.56',],
            ];
        $bBlocked = !!$data;
        if ($data) {
            foreach ($aWhiteList as $key => $value) {
                if ($sIpLong >= ip2long($value['start']) && $sIpLong <= ip2long($value['end'])) $bBlocked = false;
            }
        }
        return $bBlocked;
    }
}
