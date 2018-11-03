<?php
	// 这是内核入口文件
	class Fastphp
	{
		protected $config;
		public function __construct($arrConfig) {
			$this->config = $arrConfig;
		}
		public function run() {
			spl_autoload_register(array($this, "loadClass"));
			$this->setDbConfig($this->config);	//	调用model
			$this->route();	//	路由方法
			$this->removeMagicQuoto();	//	防止sql注入
		}

		// 防止sql注入
		public function stripslashesDeep($arr) {
			$value = is_array($arr) ? array_map($this, $arr) : stripcslashes($arr);
			// addcslashes(str, charlist)
			// htmlspecialchars(string)
			// stripcslashes(str)
			return $value;
		}
		// $_GET $_POST $_REQUEST $_COOKIE $_SESSION
		public function removeMagicQuoto() {
			if (get_magic_quotes_gpc()) {
				$_GET = isset($_GET) ? $this->stripslashesDeep($_GET) : "";
				$_POST = isset($_POST) ? $this->stripslashesDeep($_POST) : "";
				$_REQUEST = isset($_REQUEST) ? $this->stripslashesDeep($_REQUEST) : "";
				$_COOKIE = isset($_COOKIE) ? $this->stripslashesDeep($_COOKIE) : "";
				$_SESSION = isset($_SESSION) ? $this->stripslashesDeep($_SESSION) : "";
			}
		}

		// 路由方法  很重要
		public function route() {
			$uri = $_SERVER['REQUEST_URI'];
			$arr = parse_url($uri);
			$param = isset($arr['query']) ? $arr['query'] : "";	//	参数
			!is_null($param) ? parse_str($param,$arrparam) : "";
			$path = isset($arr['path']) ? $arr['path'] : "";
			$path = trim($path,"/");
			// $arrInfo = explode("/",$path);
			$arrInfo = strstr($path,"/") ? explode("/",$path) :array();
			$cName = isset($arrInfo[1]) ? $arrInfo[1] : "index";	//	控制器
			$aName = isset($arrInfo[2]) ? $arrInfo[2] : "index";	//	方法
			$ControllerName = $defaultName = ucfirst($cName)."Controller";	//	控制器名
			$objclass = new $ControllerName($cName,$aName);	//	在视图需要使用
			// $objclass->$aName();
			call_user_func_array(array($objclass,$aName),array("param"=>$param));
		}

		public function loadClass($className) {
			$framework = __DIR__."/".$className.".php";
			$controller = APP_PATH."application/controller/".$className.".php";	//	控制器
			$model = APP_PATH."application/models/".$className.".php";	//	模型
			// 自定义类
			
			if (file_exists($framework)) {
				include $framework;
			}
			if (file_exists($controller)) {
				include $controller;
			}
			if (file_exists($model)) {
				include $model;
			}
		}

		public function setDbConfig($arrConfig) {
			Model::setDbConfig($arrConfig);
		}
	}
?>