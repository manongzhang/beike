<?php
// 入口文件mvc
// // 应用目录为当前目录
// define('APP_PATH', __DIR__.'/');
// // 开启调试模式
// define('APP_DEBUG', true);

// //配置文件=链接数据库的配置
// require './config/config.php';

// //加载框架入口文件
// require './fastphp/fastphp.php';
// //启动框架
// $fastobj = new Fastphp($arr);
// $fastobj->run();


// $str="abcedf";
// echo strrev($str);

// $str="abcedf";
// $newArray = array();
// $len = strlen($str);
// for($i=$len-1;$i>=0;$i--){
// 	$newArray[]=$str[$i];
// }


$str="abcedf";
function tree($str,$len){
	$len=$len-1;
	if($str[$len] == ""){
		return false;
	}else{
		echo $str[$len];
		tree($str,$len);
	}
}

$len = strlen($str);
tree($str,$len);