<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
if($HTTP_GET_VARS[del]=="1"){
$delsql = "delete from cust_tb where cust_id='$HTTP_GET_VARS[cust_id]'";
DBexec($Dbs,$delsql);
}
?>
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=windows-874"><LINK 
href="css.css" type=text/css 
rel=stylesheet>
<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
<BODY bgColor=#f4f4f4 leftMargin=0 topMargin=0>
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cccccc><STRONG 
      class=font>&nbsp;&nbsp;&nbsp;���<span lang="th">�����觫����Թ��ҷ���������</span></STRONG></TD></TR></TBODY></TABLE>
    <form name="formsearch" method="post" action="" >
</form>
<DIV align=center>
<TABLE cellSpacing=2 cellPadding=2 width=300 border=0>
  <TBODY>
  
  <TR>
    <TD colSpan=2>
      <DIV align=center><INPUT id=text_search name=text_search size="20"> <INPUT type=submit value="   ����   " name=Search> 
</DIV></TD></TR></TBODY></TABLE></form><BR>
<HR>
<BR>
<TABLE borderColor=#ffffff cellSpacing=0 borderColorDark=#ffffff cellPadding=0 
width=700 borderColorLight=#999999 border=1>
  <TBODY>

  <TR class=font bgColor=#60aad2>
    <TD width="163" align="center">
      <span lang="th">�Ţ������駫����Թ���</span></TD>
   
    <TD width="212" align="center">
      <span lang="th">���</span></TD>
    <TD width="163" align="center">
      <span lang="th">�ѹ����Թ���</span></TD>

    <TD width="159">
      <DIV class=style1 align=center>
    ��������´ &nbsp; /&nbsp;ź</DIV></TD></TR>

		<?
		$page=$HTTP_GET_VARS[page];
	if($text_search){
 $sql= "select * from cust_tb  where cust_name like '%$text_search%'";
				  }else{

	$sql = "select * from cust_tb  where cust_status='buy' and cust_payment = 'Y' and cust_delivery='Y' order by cust_id  DESC";
}
  $res1 = DBexec($Dbs,$sql);
 
  $rows = DBNumrows($res1);

  if($page == "") $page = 1 ; 

					$end = $page * 20; 

					$st = $end - 20; 

if($end > $rows ) $end = $rows ;

for($i=$st;$i<$end;$i++){

			$arr = DBfetch_array($res1,$i);
if($bg =="#FFFFFF"){

			$bg = "#E0EDF7" ; 

			}else{

			$bg = "#FFFFFF";

			}
	
		?>
  <TR class=font>
    <TD  >
      <DIV class=detalbody align=center><?=$arr[refno]?> </DIV></TD>
   <TD   width="160">
      <DIV class=detalbody align=center><?=$arr[cust_name]?> <?=$arr[cust_lname]?></DIV></TD>
       <TD width="163" align="center">
      <span lang="th"> <?$yyre = substr($arr[cust_date],0,4);
			  $yyre = $yyre + 543;
$ORDERDATE = substr($arr[cust_date],6,2)."/".
														   substr($arr[cust_date],4,2)."/".
														   $yyre." ".
														   substr($arr[cust_date],8,2).":".
														   substr($arr[cust_date],10,2).":".
														   substr($arr[cust_date],12,2);?>
												<?=$ORDERDATE?>&nbsp;</span></TD>
    <TD width="155">
      <DIV class=detalbody align=center>&nbsp;<A 
      href="orderdetailstran.php?cust_id=<?=$arr[cust_id]?>&edit=1"> 
      ��������´ </A>&nbsp; /&nbsp;<A onclick='return checkdelete()'
      href="?cust_id=<?=$arr[cust_id]?>&del=1">ź</a></DIV></TD></TR>
  <? } ?>

         

          <tr>

            <td align="right" colspan="3" width="538"><?

				 $allpage = $rows / 20 ; 

				 if($allpage > "1"){

				echo "<span class='bo'>˹��</span>";

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