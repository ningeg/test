<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
if($HTTP_POST_VARS[Submit]){
$insert = "insert into staff set staff_title='$HTTP_POST_VARS[Title]',staffname='$HTTP_POST_VARS[Name]',stafflname='$HTTP_POST_VARS[Lname]',staff_position='$HTTP_POST_VARS[position]',staff_tel='$HTTP_POST_VARS[phone]',username='$HTTP_POST_VARS[username]',password='$HTTP_POST_VARS[password]'";
DBexec($Dbs,$insert);
Header("Location:stafflist.php");
}
if($HTTP_POST_VARS[Update]){
$update = "update staff set staff_title='$HTTP_POST_VARS[Title]',staffname='$HTTP_POST_VARS[Name]',stafflname='$HTTP_POST_VARS[Lname]',staff_position='$HTTP_POST_VARS[position]',staff_tel='$HTTP_POST_VARS[phone]',username='$HTTP_POST_VARS[username]',password='$HTTP_POST_VARS[password]'  where staff_id='$HTTP_POST_VARS[staff_id]'";
DBexec($Dbs,$update);
 Header("Location:stafflist.php");
}
?>