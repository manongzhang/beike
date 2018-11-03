<?php
	class Controller
	{
		protected $view;
		public function __construct($cName, $aName) {
			$this->view = new View($cName, $aName);
		}
	}
?>