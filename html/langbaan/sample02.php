<?php 

include("../FCKeditor/fckeditor.php") ;
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
	<head>
		<title>FCKeditor - Sampledsfsdf</title>
		<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
		<meta name="robots" content="noindex, nofollow">
		<link href="../FCKeditor/_samples/sample.css" rel="stylesheet" type="text/css" />
		
	</head>
	<body>
	
<form action="../FCKeditor/_samples/php/sampleposteddata.php" method="post" target="_blank">
<?php
$oFCKeditor = new FCKeditor('FCKeditor1') ;
$oFCKeditor->BasePath = '/FCKeditor/';
$oFCKeditor->Value = 'AO3/4aEe??COA>>A??N?a??O1?I1aEOAi??OA?OEA Christmas & Serenade' ;
$oFCKeditor->Create() ;
?>			<br>
			<input type="submit" value="Submit">
		</form>
	</body>
</html>