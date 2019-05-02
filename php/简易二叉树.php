<?php
	//php实现二叉树
	class TreeNode{
		public $data=null;
		public $children=[];
		public function __construct($data){
			$this->data = $data;
		}

		public function addChildren($node){
			$this->children[]=$node;
		}
	}

	class Tree{
		public $root = null;
		public function __construct($node){
			$this->root=$node;
		}

		public function traverse($node,$level=0){
			if($node){
				echo "\r\n";
				echo str_repeat("-", $level).$node->data;
				foreach ($node->children as $children) {
					$this->traverse($children,$level+1);
				}
			}
		}
	}
$ceo = new TreeNode('ceo');
$tree = new Tree($ceo);
$cfo = new TreeNode('cfo');
$cto = new TreeNode('cto');
$cmo = new TreeNode('cmo');
$coo = new TreeNode('coo');
$ceo->addChildren($cfo);
$ceo->addChildren($cto);
$ceo->addChildren($cmo);
$ceo->addChildren($coo);
$seniorArchitect = new TreeNode("Senior Architect");
$softwareEngineer = new TreeNode("SoftwareEngineer");
$userInterfaceDesigner = new TreeNode("userInterface Designer");
$qualityAssuranceEngineer = new TreeNode("qualityAssurance Engineer");
$cto->addChildren($seniorArchitect);
$seniorArchitect->addChildren($softwareEngineer);
$cto->addChildren($userInterfaceDesigner);
$cto->addChildren($qualityAssuranceEngineer);
$tree->traverse($tree->root);
?>