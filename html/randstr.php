<?
 	function randomstr( $length )
   	{
		$possible = '0123456789';
   		$str="";
   		while( strlen($str) < $length )
   		{
   			$str .= substr( $possible , 
   			(rand() % strlen( $possible)) , 1);
   		}
   		return($str);
   	}
?>
