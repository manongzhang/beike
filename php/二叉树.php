[参考https://blog.csdn.net/zlb_lover/article/details/80788205]
<?php
	class TreeNode{
		var $val;
		var $left = null;
		var $right=null;
		public function __construct($val){
			$this->val = $val;
		}

		public function createBinaryTree($leftTree=null,$rigthTree=null){
			if(!is_null($leftTree)){
				$this->left=$leftTree;
			}
			if(!is_null($rigthTree)){
				$this->right = $rigthTree;
			}
		}
	}
$d = new TreeNode('D');
$e = new TreeNode('E');
$f = new TreeNode('F');
$c = new TreeNode('C');
$b = new TreeNode('B');
$a = new TreeNode('A');
$a->createBinaryTree($b,$c);
$b->createBinaryTree($d,$e);
$c->createBinaryTree(NULL,$f);



//前置遍历
// function preOrder($tree){
// 	echo $tree->val;
// 	if($tree->left  !=null){
// 		preOrder($tree->left);
// 	}
// 	if($tree->right != null){
// 		preOrder($tree->right);
// 	}
// }
//非递归方式遍历=前置遍历
// $arr_stack= array();
// array_push($arr_stack,$a);
// while (!empty($arr_stack)) {
// 	$center_node = array_pop($arr_stack);
// 	echo $center_node->val;
// 	if($center_node->right != null){
// 		array_push($arr_stack,$center_node->right);
// 	}

// 	if($center_node ->left != null) {
// 		array_push($arr_stack,$center_node->left);
// 	}
// }
//=========================================================================
// preOrder($a);
//中序遍历
// function preOrder($tree){
// 	if($tree->left != null){
// 		preOrder($tree->left);
// 	}
// 	echo $tree->val;
// 	if($tree->right != null){
// 		preOrder($tree->right);
// 	}
// }
// preOrder($a);
//===============================================================================
// 后序遍历
// function preOrder($tree){
// 	if($tree->left != null){
// 		preOrder($tree->left);
// 	}
// 	if($tree->right != null){
// 		preOrder($tree->right);
// 	}
// 	echo $tree->val;
// }
// preOrder($a);
array_push($arr_stack,$tree);

while(!empty($arr_stack)){
	$center_node =array_pop($arr_stack);
	array_push($visit_stack,$center_node);
	if($center_node->left != null){
		array_push($arr_stack,$center_node->left);
	}
	if($center_node ->right !=null){
		array_push($arr_stack,$center_node->right);
	}
	print_r($arr_stack);
	echo "===========================================================";
}
while(!empty($visit_stack)){
	$node = array_pop($visit_stack);
	echo $node->val;
}
?>