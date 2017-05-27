<?php
/**
 * Created by PhpStorm.
 * User: yangfan.ren@foxmail.com
 * Date: 2017/2/13
 * Time: 12:03
 * Func: 解析XML格式数据
 */

class _xml {

    /**
     * 解析XML文档并生成数组后返回
     * @param $xmls
     * @return array|string
     */
	public static function parseXml($xmls) {
		$resarr = array ();
		$xmlstring = str_replace ( '\\', '', $xmls );
		$xmlstring = preg_replace ( array ('/&lt;/', '/&quot;/', '/&gt;/' ), array ('<', '"', '>' ), $xmlstring );
		try {		    
			$xml = new SimpleXMLElement ( $xmlstring );
			$root = $xml->children ();			
			if ($root) {
				//获取XML各节点元素
				$resarr = self::getChildRoot ( $xml, $root );				
			}
		} catch ( Exception $e ) {
			return $e->getMessage ();
		}
		return $resarr;
	}

    /**
     * @param $xml
     * @param $childArr
     * @return array
     */
    private static function getChildRoot($xml, $childArr) {
		$arr = array ();				
		foreach ( $childArr as $k => $v ) {
			if(count($xml->$k)>0){
				if ($xml->$k->children ()) {
					$arr [$k] = self::getChildRoot ( $xml->$k, $xml->$k->children () );
				} else {
					$arr [$k] = ( string ) $v;
				}
			}
		}
		return $arr;
	}

}
