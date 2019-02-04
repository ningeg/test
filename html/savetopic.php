<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
$ip = $_SERVER['REMOTE_ADDR'];
$sort=$_POST['sort'];		
if(strcmp($_POST['code'],$_POST['code2'])!=0){ 
echo "<html><body><script language=javascript1.1>alert('กรุณากรอกตัวเลขเพื่อยืนยันการตั้งกระทู้ให้ถูกต้อง'); window.location='javascript:void(history.go(-1))';</script><noscript>Your browser doesn't support JavaScript 1.1 or it's turned off in your browsers preferences.</noscript></body></html>";
	}else{
$image= $_FILES['image']['tmp_name'];

if($image!=""){
$a="picboard/".time().$_FILES['image']['name'];
copy($image,$a);
$pic=time().$_FILES['image']['name'];
@unlink($image= $_FILES['image']['tmp_name']);
		}
			
			if ($Show != true)
		{
			$Show=false;
		}
$date = date("Y-m-d");
$insert = "insert into board_subject set subject_name='$HTTP_POST_VARS[subject_name]',board_details='$HTTP_POST_VARS[board_details]',board_name='$HTTP_POST_VARS[board_name]',board_email='$HTTP_POST_VARS[board_email]',board_type='$HTTP_POST_VARS[board_type]' ,board_pic='$pic' ,board_icq='Y'";
$insert .=",board_ip='$ip',subject_date='".date("YmdHis")."'";
DBexec($Dbs,$insert);
echo "<html><body><script language=javascript1.1>alert('บันทึกข้อมูลเรียบร้อยแล้ว'); window.location='board.php?sort=$HTTP_POST_VARS[board_type]';</script><noscript>Your browser doesn't support JavaScript 1.1 or it's turned off in your browsers preferences.</noscript></body></html>";
}
?>