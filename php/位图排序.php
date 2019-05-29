<?php
//位图排序
$bitmap=array_fill(0,1,0);
$arr =[1,4,3,6,7];
$size = PHP_INT_SIZE * 8;

foreach ($arr as $key => $value){
	$index = floor($value/$size);
	$pos = $value%$size;
	$tmp = 1 << $pos;
	$bitmap[$index]=$bitmap[$index] | $tmp;
}

foreach ($bitmap as $k => $v) {
	$start = $k*$size;
	for($i=0;$i<$size;$i++){
		$t =1<< $i;
		if($v & $t){
			echo $start+$i;//$start=0 $i=1;
			echo "<br />";
		}
	}
}
?>