<?php
	namespace vendor\animal;
	use yii\base\Component;
	use yii\base\event;
	class MyEvent extends event{
		public $message;
	}
	class Cat extends Component{
		public function shout(){
			$myevernt = new MyEvent();
			$myevernt->message="aaa222222222aaaaaaaaa";
			$this->trigger('miao',$myevernt);
		}
	}
?>