<?php
//php迭代代码实现思路
	interface Step {
		public static function go(Closure $next);
	}

	class FirstStep implements Step{
		public static function go(Closure $next){
			echo "start first";
			$next();
		}
	}
class SecondStep implements Step{
		public static function go(Closure $next){
			echo "second start";
			$next();
		}
	}
function goFun($step,$className){
	return function() use ($step,$className){
		return $className::go($step);
	};
}
function then(){
	$arr=["FirstStep","SecondStep"];
	$prepare = function(){echo "start....";};
	$go = array_reduce($arr, "goFun",$prepare);
	$go();
}
then();
?>
