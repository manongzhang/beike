<?php
	define("APP_PATH", __DIR__."/");	//	定义框架的入口文件
	define("LIB_PATH", APP_PATH."Fastphp");	//	框架内核代码目录
	define("APP_DEBUG", true);	//	在调试环境可以打开，在线上就必须关闭
	reporting();	// 错误调试
	require (APP_PATH."Fastphp/Fastphp.php");	//	内核的入口文件
	require (APP_PATH."conf/config.php");	//	配置文件
	(new Fastphp($arrConfig))->run();	//	启动内核

	// 错误调试
	function reporting() {
		if (APP_DEBUG) {
			error_reporting(E_ALL);
			ini_set("display_errors", "on");
		}else{
			ini_set("display_errors", "off");
			error_reporting(E_ALL);
			ini_set("log_errors", "on");
			ini_set("error_log", "D:/phpStudy/WWW/mvc/log/error.log");
		}
	}
?>