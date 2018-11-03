<?php
	class IndexController extends Controller {
		public function aa(){
			$arr = array("aaaa","ddd");
			//$this->assign("info",$arr);
			$filename="index.php";
			$this->display($filename);
		}
	}
?>