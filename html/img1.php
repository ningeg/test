<?
$str=$HTTP_GET_VARS[str];
	   Header("Content-type:image/png");
	   $im = ImageCreate(50,18);
	   ImageColorAllocate($im,255,255,255);
	   $b = ImageColorAllocate($im,0,0,0);
	   ImageString($im,5,1,1,$str,$b);
	   ImagePNG($im);
	   ImageDestroy($im);
?> 