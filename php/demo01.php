<?php
//IOC容器
   class Book{
  	public function aa(){
		echo "this is aa";	
	} 

	public function bb(){
		echo "this is bb";	
	}
   }
   class persion {
  	public function p_info() {
		echo "this is persion";	
	}


	public function p_total(){
		echo "this is perison bb";	
	}
   }
   class Ioc{
      protected static $register=array(); 
      public static function register($name,Closure $function){
	  static::$register[$name]=$function; 
      }


      public static function reslove($name){
	      if(static::$register[$name]) {
	     	$name = static::$register[$name]; 
		return $name();
	      } 
      }
   }
   $obj= Ioc::register('book',function(){
  	 $book = new Book(); 
	 return $book;
   });

   $obj = Ioc::reslove('book');
   $obj->aa();
?>
