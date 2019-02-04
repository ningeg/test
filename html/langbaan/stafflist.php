<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
if($HTTP_GET_VARS[del]=="1"){
$delsql = "delete from staff where staff_id='$HTTP_GET_VARS[staff_id]'";
DBexec($Dbs,$delsql);
}
?>
<HTML><HEAD><TITLE>BaaIT.com</TITLE>
<META http-equiv=Content-Type content="text/html; charset=windows-874"><LINK 
href="css.css" type=text/css 
rel=stylesheet>
<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
<BODY bgColor=#f4f4f4 leftMargin=0 topMargin=0>
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cccccc><STRONG 
      class=font>&nbsp;&nbsp;&nbsp;รายชื่อผู้เข้าใช้งาน</STRONG></TD></TR></TBODY></TABLE>
<FORM name=form1 action=savestaff.php method=post>
<DIV align=center>
<TABLE cellSpacing=2 cellPadding=2 width=300 border=0>
  <TBODY>
  <TR>
    <TD class=font width=128><INPUT type=radio CHECKED value=radiobutton 
      name=radiobutton> ค้นหาตามชื่อ</TD>
    <TD class=font width=158><INPUT type=radio value=radiobutton 
      name=radiobutton> ดูทั้งหมด</TD></TR>
  <TR>
    <TD colSpan=2>
      <DIV align=center><INPUT id=keyword name=keyword> <INPUT type=submit value="   ค้นหา   " name=Submit3> 
</DIV></TD></TR></TBODY></TABLE><BR>
<HR>
<BR>
<TABLE borderColor=#ffffff cellSpacing=0 borderColorDark=#ffffff cellPadding=0 
width=700 borderColorLight=#999999 border=1>
  <TBODY>

  <TR class=font bgColor=#60aad2>
    <TD>
      <DIV class=style1 align=center>คำนำหน้า</DIV></TD>
    <TD>
      <DIV class=style1 align=center>ชื่อ</DIV></TD>
    <TD>
      <DIV class=style1 align=center>นามสกุล</DIV></TD>
    <TD>
      <DIV class=style1 align=center>ตำแหน่ง</DIV></TD>
    <TD>
      <DIV class=style1 align=center>เข้าใช้งานครั้งสุดท้าย</DIV></TD>
    <TD>
      <DIV class=style1 align=center>
     แก้ไข &nbsp; /&nbsp;ลบ</DIV></TD></TR>

<?
	$sql = "select * from staff  order by staff_id DESC";

  $res1 = DBexec($Dbs,$sql);

  $rows = DBNumrows($res1);

  if($page == "") $page = 1 ; 

					$end = $page * 10; 

					$st = $end - 10; 

if($end > $rows ) $end = $rows ;

for($i=$st;$i<$end;$i++){

			$arr = DBfetch_array($res1,$i);
if($bg =="#FFFFFF"){

			$bg = "#E0EDF7" ; 

			}else{

			$bg = "#FFFFFF";

			}
		$LASTLOGIN = substr($arr[lastlogin],4,2)."/".
														   substr($arr[lastlogin],6,2)."/".
														   substr($arr[lastlogin],0,4)." ".
														   substr($arr[lastlogin],8,2).":".
														   substr($arr[lastlogin],10,2).":".
														   substr($arr[lastlogin],12,2);
		?>
  <TR class=font>
    <TD>
      <DIV class=detalbody align=center><?=$arr[staff_title]?></DIV></TD>
    <TD>
      <DIV class=detalbody align=center><?=$arr[staffname]?></DIV></TD>
    <TD>
      <DIV class=detalbody align=center><?=$arr[stafflname]?></DIV></TD>
    <TD>
      <DIV class=detalbody align=center><?=$arr[staff_position]?></DIV></TD>
    <TD>
      <DIV class=detalbody align=center><?=$LASTLOGIN?></DIV></TD>
    <TD>
      <DIV class=detalbody align=center>&nbsp;<A 
      href="addstaff.php?staff_id=<?=$arr[staff_id]?>&edit=1"> 
     แก้ไข </A>&nbsp; /&nbsp;<A onclick='return checkdelete()'
      href="?staff_id=<?=$arr[staff_id]?>&del=1">ลบ</a></DIV></TD></TR>
  <? } ?>

         

          <tr>

            <td align="right" colspan="6"><?

				 $allpage = $rows / 10 ; 

				 if($allpage > "1"){

				echo "<span class='bo'>หน้า</span>";

				 for($p=0;$p<$allpage;$p++){

				 

				 ?>

				&nbsp;<a href="<?=$PHP_SELF;?>?zone=<?=$zone?>&page=<?=$p+1?>"> 

                                 <?=$p+1?>

                                  </a> &nbsp;,&nbsp; 

       <?

				 }

				 }

				 ?>  </td>

          </tr>
<SCRIPT language=JavaScript>
function checkdelete() { 
if (window.confirm("Are you sure you want to delete this record?")) { 
return true;
}
else{
return false;
}
}

</SCRIPT>
</TBODY></TABLE><BR><BR></DIV></FORM></BODY></HTML>
