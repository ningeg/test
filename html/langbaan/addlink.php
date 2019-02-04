<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
$picture1 = $_FILES['picture1']['tmp_name'];
$picture1_name = $_FILES['picture1']['name'];
		if($picture1!="")
{
 $time = time();
		 $ddt="../picnews/thumb/s_$time.${picture1_name}";
		 $thumb1_name = "s_".$time.".".$picture1_name;
	 $ddt="../picnews/thumb/s_$time.${picture1_name}";
	 	 copy($picture1 , "$ddt");
}
if($_POST[Submit]){
$sql = "select  *  from  link_tb   where l_id is not null order by c_position desc limit 1 ";
$res = DBexec($Dbs,$sql);
$rows = DBNumrows($res);
$newpos = 1 ; 
if($rows <> "0"){

$arr = DBfetch_array($res,0);
$newpos = $arr[c_position] + 1  ; 
}
$insert = "insert into link_tb  set l_name='$_POST[l_name]',l_url='$_POST[l_url]',l_logo='$thumb1_name',c_position='$newpos'";
DBexec($Dbs,$insert);
Header("Location:managelink.php");
}
if($_POST[Update]){
$update = "update  link_tb   set  l_name='$_POST[l_name]',l_url='$_POST[l_url]'";
if($thumb1_name){
$update .=",l_logo='$thumb1_name'";
} 
$update .= " where l_id='$_POST[l_id]'";
DBexec($Dbs,$update);

 Header("Location:managelink.php");
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=windows-874">
<LINK 
href="css.css" type=text/css 
rel=stylesheet>

<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
<BODY bgColor=#f4f4f4 leftMargin=0 topMargin=0>
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cccccc><STRONG 
      class=font>&nbsp;&nbsp;&nbsp;เพิ่ม<span lang="th">ลิงค์พันธมิตร</span></STRONG></TD></TR></TBODY></TABLE>
<FORM name=form1 action="" method=post enctype="multipart/form-data">
<?
			if($_GET[l_id]){
			$sql = "select * from link_tb  where  l_id='$_GET[l_id]'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
	}
			  ?>
<TABLE cellSpacing=3 cellPadding=3 width=600 align=center border=0>
  <TBODY>
  <TR>
    <TD class=font>
      <DIV align=right><span lang="th">ชื่อ</span> : </DIV></TD>
    <TD><INPUT id=l_name size=62 name=l_name value="<?=$arr[l_name];?>"  class="inputBox"></TD></TR>
  <TR>
    <TD class=font>
      <DIV align=right><span lang="en-us">URL</span> : </DIV></TD>
    <TD><INPUT id=l_url size=62 name=l_url value="<?=$arr[l_url];?>"  class="inputBox"></TD></TR>   
	<TR>
    <TD class=font>
      <DIV align=right>ภาพโลโก้ : </DIV></TD>
    <TD class=font><INPUT id=picture1 size=12 name=picture1  type="file"  class="inputBox">
    ( 
	.jpg Only 120x60pixel)<br>
	<?if($arr[l_logo]){?><img  alt="  Search" hspace=5 
                  src="../picnews/thumb/<?=$arr[l_logo];?>" 
                align=left border=1><? }?>
   
</TD>
    </TR><TR>
    <TD class=font>&nbsp;</TD>
    <TD><?if($_GET[edit]){?>
	<input type="hidden" name="l_id" value="<?=$arr[l_id];?>">
	<input type="hidden" name="Update" value="Update">
	<INPUT type=submit value="   บันทึกข้อมูล   " name=Update><?}else{?>
	<input type="hidden" name="Submit" value="Submit">
	<INPUT type=submit value="   บันทึกข้อมูล   " name=Submit><? }?>
      &nbsp; 
<INPUT type=reset value="   ยกเลิก   " name=Submit2></TD></TR></TBODY></TABLE></FORM>
<DIV align=center>

</DIV></TD></TR></TBODY></TABLE><BR><BR></DIV></FORM></BODY></HTML>