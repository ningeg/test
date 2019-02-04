<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=windows-874"><LINK 
href="css.css" type=text/css 
rel=stylesheet>

<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
<BODY bgColor=#f4f4f4 leftMargin=0 topMargin=0>
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cccccc><STRONG 
      class=font>&nbsp;&nbsp;&nbsp;เพิ่มผู้เข้าใช้งาน</STRONG></TD></TR></TBODY></TABLE>
<FORM name=form1 action="savestaff.php" method=post>
<?
			if($HTTP_GET_VARS[staff_id]){
			$sql = "select * from staff where  staff_id='$HTTP_GET_VARS[staff_id]'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
	}
			  ?>
<TABLE cellSpacing=3 cellPadding=3 width=600 align=center border=0>
  <TBODY>
  <TR>
    <TD class=font width=117>
      <DIV align=right>คำนำหน้าชื่อ : </DIV></TD>
    <TD width=149><SELECT id=Title  name=Title  class="inputBox"> <OPTION 
        <?if($arr[staff_title]=="นางสาว"){ echo "selected"; }?>>นางสาว</OPTION> <OPTION <?if($arr[staff_title]=="นาย"){ echo "selected"; }?>>นาย</OPTION>
        <OPTION <?if($arr[staff_title]=="นาง"){ echo "selected"; }?>>นาง</OPTION></SELECT></TD>
    <TD width=84>&nbsp;</TD>
    <TD width=211>&nbsp;</TD></TR>
  <TR>
    <TD class=font>
      <DIV align=right>ชื่อ : </DIV></TD>
    <TD><INPUT id=Name   name=Name value="<?=$arr[staffname];?>" class="inputBox"></TD>
    <TD>
      <DIV class=font align=right>นามสกุล : </DIV></TD>
    <TD><INPUT id=Lname  name=Lname value="<?=$arr[stafflname];?>"  class="inputBox"></TD></TR>
  <TR>
    <TD class=font>
      <DIV align=right><span lang="th">ตำแหน่ง</span> : </DIV></TD>
    <TD colSpan=3><INPUT id=position size=62 name=position value="<?=$arr[staff_position];?>"  class="inputBox"></TD></TR>
  <TR>
    <TD class=font>
      <DIV align=right>username : </DIV></TD>
    <TD><INPUT id=username size=12 name=username value="<?=$arr[username];?>"  class="inputBox">
   
       </TD>
    <TD>
      <DIV class=font align=right>password : </DIV></TD>
    <TD><INPUT type="password"  id=password size=12 name=password value="<?=$arr[password];?>"  class="inputBox">
     
       </TD></TR>
  <TR>
    <TD class=font>
      <DIV align=right><span lang="th">เบอร์โทรศัพท์</span> : </DIV></TD>
    <TD class=font><INPUT id=phone 
      maxLength=10 size=12 name=phone value="<?=$arr[staff_tel];?>"  class="inputBox"> </TD>
    <TD>
      &nbsp;</TD>
    <TD class=font>&nbsp;</TD></TR>
  <TR>
    <TD class=font>&nbsp;</TD>
    <TD></TD>
    <TD>&nbsp;</TD>
    <TD>&nbsp;</TD></TR>
  <TR>
    <TD class=font>&nbsp;</TD>
    <TD colSpan=3><?if($HTTP_GET_VARS[edit]){?>
	<input type="hidden" name="staff_id" value="<?=$arr[staff_id];?>">
	<INPUT type=submit value="   บันทึกข้อมูล   " name=Update><?}else{?><INPUT type=submit value="   บันทึกข้อมูล   " name=Submit><? }?>
      &nbsp; 
<INPUT type=reset value="   ยกเลิก   " name=Submit2></TD></TR></TBODY></TABLE></FORM>
<DIV align=center>

</DIV></TD></TR></TBODY></TABLE><BR><BR></DIV></FORM></BODY></HTML>