<?php
	class Controller {
		public $cName;
		public $aName;
		public function __construct($cName,$aName){
			$this->cName = $cName;
			$this->aName = $aName;
		}
		
		//赋值
		public function assign(){

		}
		//渲染模板
		public function display($filename){
			$fiilePath = APP_PATH."Application/Views/{$this->cName}/{$filename}";
			require $fiilePath;
		}
	}
?>