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
//插入排序
	$arr = [2, 3, 1, 6, 4, 7, 5, 9];
	for($i=1;$i<count($arr);$i++){
		$key = $arr[$i];
		$pos = $i;
		while($pos > 0 && $arr[$pos-1] > $key){
			$arr[$pos]=$arr[$pos-1];
			$pos = $pos-1;
		}
		$arr[$pos]=$key;
	}	
	print_r($arr);
	
//选择排序
 $nums = [4, 5, 6, 3, 2, 1];
 for($i=0;$i<count($nums);$i++){
 	$min = $i;
 	for($j=$i+1;$j<count($nums);$j++){
 		if($nums[$j] < $nums[$min]){
 			$min = $j;
 		}
 	}
 	if($min != $i){
 		$tmp = $nums[$i];
 		$nums[$i]=$nums[$min];
 		$nums[$min]=$tmp;
 	}
 }
 print_r($nums);
//归并排序
$arr=array(19,7,5,1,3,10);
	$tmp = mergeSort($arr);
	print_r($tmp);
	function mergeSort($arr){
		$start = 0;
		$end = count($arr)-1;
		if($end == 0){
			return $arr;
		}
		$mid = floor(($start+$end)/2);
		$arrChunk = array_chunk($arr,$mid+1);
		$left = mergeSort($arrChunk[0]);
		$right = mergeSort($arrChunk[1]);
		$arr3 = sort_data($left,$right);
		return $arr3;
	}
	function sort_data($arr1,$arr2){
		$arr=array();
		$i=$j=0;
		$len1=count($arr1);
		$len2 = count($arr2);
		while($i < $len1 && $j < $len2){
			if($arr1[$i] < $arr2[$j]){
				array_push($arr,$arr1[$i]);
				$i++;
			}
			else{
				array_push($arr,$arr2[$j]);
				$j++;
			}
		}
		while($i < count($arr1)){
			array_push($arr,$arr1[$i]);
			$i++;
		}

		while($j < count($arr2)){
			array_push($arr,$arr2[$j]);
			$j++;
		}

		return $arr;
	}
 //递归思想快速排序
 	$arr= array(2,13,42,34,56,23,67,365,87665,54,68,3);
	$info = quick_sort($arr);
	print_r($info);
	function quick_sort($arr){
			if(count($arr) <= 1){
				return $arr;
			}
			$left = array();
			$right = array();
			$middle= $arr[0];
			for($i=1;$i<count($arr);$i++){
				if($arr[$i] < $middle){
					array_push($left,$arr[$i]);
				}else{
					array_push($right,$arr[$i]);
				}
			}
			$left = quick_sort($left);
			$right = quick_sort($right);
			$arr2 = array_merge($left,array($middle),$right);

			return $arr2;
	}
 
 
?>