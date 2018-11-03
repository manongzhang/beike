<?php
	class Model
	{
		protected static $_config;
		protected $_conn;
		public function __construct() {
			$arrConfig = self::$_config;
			$arrDbConfig = $arrConfig['db'];			
			$this->connect($arrDbConfig);
		}
		// 链接数据库
		public function connect($arr) {
			// error_reporting(E_ALL ^ E_DEPRECATED);	//	使用MySQL，可以屏蔽错误
			$host = $arr['host'];
			$user = $arr['user'];
			$pwd = $arr['pwd'];
			$port = $arr['port'];
			$hosts = "$host:$port";
			$dbname = "nihao";
			$this->_conn = mysqli_connect($hosts, $user, $pwd, $dbname);
		}
		public static function setDbConfig($arrConfig) {
			self::$_config = $arrConfig;
		}
		public function query($sql) {
			$data = array();
			// mysql_select_db("nihao");	//	使用MySQL，选择数据库
			$res = mysqli_query($this->_conn,$sql);			
			while ($result = mysqli_fetch_all($res, MYSQLI_ASSOC)) {
				array_push($data, $result);
			}
			foreach ($data as $key => $val) {
				$info = $val;
			}
			return $info;
		}
	}
?>