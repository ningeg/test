<?
session_start();
/*session is started if you don't write this line can't use $_Session  global variable*/
$_SESSION["newsession"]=$_POST[username];
$_SESSION["newsession"];
include("../DBEngine_onhost.php");
$Dbs=ConnectDB();
$HTTP_POST_VARS[Submits];
if($_SESSION["newsession"]!=""){
$selectuser = "select * from staff where username = '".mysql_real_escape_string($_POST['username'])."' and password = '".mysql_real_escape_string($_POST['passwords'])."'";
$rsselect = DBexec($Dbs,$selectuser);
$rows = DBNumrows($rsselect);
if($rows==1){
	Header("Location:main.php");
	}else{ echo "user or password wrong!!!";}
}else{
echo "<html><body><script language=javascript1.1>alert('ชื่อหรือพาสเวิร์ดนี้ไม่มีในระบบค่ะ กรุณาตรวจสอบอีกครั้ง'); window.location='index.php';</script><noscript>Your browser doesn't support JavaScript 1.1 or it's turned off in your browsers preferences.</noscript></body></html>";
		exit;
}
?>
