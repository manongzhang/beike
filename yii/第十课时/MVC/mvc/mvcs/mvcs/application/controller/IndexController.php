<?php
	class IndexController extends Controller
	{
		public function index() {
			$user = new UserModel();
			$sql = "select * from xinxi";
			$data = $user->query($sql);
			$this->view->assign("data", $data);
			$this->view->display("show");
		}
	}
?>