<?php
	// 视图类
	class View
	{
		protected $_cName;
		protected $_aName;
		protected $_variable;
		protected $_viewPath;
		public function __construct($cName, $aName) {
			$this->_cName = $cName;	//	控制器名
			$this->_aName = $aName;	//	方法名
			$this->_viewPath = APP_PATH."application/views/".$this->_cName."/";	//	视图路径
		}
		// 模板赋值
		public function assign($key, $value) {
			$this->_variable[$key] = $value;
		}
		// 调用模板
		public function display($fileName = "") {
			!empty($this->_variable) ? extract($this->_variable) : $this->_variable;
			$fileName = empty($fileName) ? $this->_aName : $fileName;	//	视图模板名称
			$filePath = $this->_viewPath.$fileName.".php";	//	视图路径
			if (file_exists($filePath)) {
				include($filePath);
			}
		}
	}
?>