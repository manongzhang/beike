<?php
	$fd = fsockopen("www.laravel.com",80,$errno,$errmsg,30);
	$content = "----ABC\r\n";
	$content.='Content-Disposition:form-data;name="ufile";filename="timg.jpg"'."\r\n";
	$content.="Content-Type:image/jpg\r\n";
	$content.="\r\n";
	$content.=file_get_contents("./timg.jpg");
	$content.="\r\n";
	//$content.="\r\n----ABC--\r\n\r\n";

	$content.="----ABC\r\n";
	$content.='Content-Disposition:form-data;name="username"'."\r\n\r\n";
	$content.="lisi\r\n";
	$content.="----ABC--\r\n\r\n";


	$out  = "POST /demo01.php HTTP/1.1"."\r\n";
	$out .= "HOST:www.laravel.com\r\n";
	$out .= "Connection: keep-alive\r\n";
	$out.="Content-Type:multipart/form-data;boundary=--ABC\r\n";
	$out.="Content-Length:".strlen($content)."\r\n";
	$out.="\r\n";
	$out.=$content;
	fwrite($fd, $out);
	$contents = stream_get_contents($fd);
	var_dump($contents);
?>