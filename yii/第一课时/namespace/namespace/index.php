<?php
	//require "A.php";
	//require "B.php";
	//$apple = new Apple();
	//$apple->show();
	//因为上面引入了2个文件都是相同的apple的类所以报错.
	//思考在一个项目里面如果类过多。有没有这种重复命名的文件
	


	//解决上面的文件引入命令空间的思路
	// require "A.php";
	// require "B.php";
	// $appleA = new a\b\c\Apple();
	// $appleA->show();
	// $appleB = new d\e\f\Apple();
	// $appleB->show();
	
	
	//使用use关键字来描述用哪个类
	// require "A.php";
	// require "B.php";
	// use a\b\c\Apple;
	// $apple = new Apple();
	// $apple->show();

	// require "A.php";
	// use a\b\c\Apple as app;
	// $apple = new App();
	// $apple->show();


?>