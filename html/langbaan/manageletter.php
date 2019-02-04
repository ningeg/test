<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
if($HTTP_GET_VARS[del]=="1"){
$delsql = "delete from letter_tb where news_id='$HTTP_GET_VARS[news_id]'";
DBexec($Dbs,$delsql);
}
if($HTTP_GET_VARS[send]=="1"){
$update = "update letter_tb set status='1'";
$update .= " where news_id='$HTTP_GET_VARS[news_id]'";
DBexec($Dbs,$update);

$sql = "select * from letter_tb  where  news_id='$HTTP_GET_VARS[news_id]'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
 $msg = eregi_replace("\"","'",$arr[details_th]);
$sql2 = "select * from emailsub";
 $res2 = DBexec($Dbs,$sql2);

  $rows2 = DBNumrows($res2);

for($a=0;$a<$rows2;$a++){

			$arr2 = DBfetch_array($res2,$a);
		$custmail = $arr2[email];

   									$subject  ="$arr[title_th]";
									$tomail = "$custmail";
									$headers = "From: ICRCC <info@clinicalresearchcollaboration.org>\n";
									$headers.= "Content-type: text/html; charset=windows-874\n"; 
							   $s = mail( $tomail ,$subject,$msg, $headers);   
								

  
	  $a++;
			}

echo "<html><body><script language=javascript1.1>alert('ส่งจดหมายเรียบร้อยแล้วค่ะ'); window.location='manageletter.php';</script><noscript>Your browser doesn't support JavaScript 1.1 or it's turned off in your browsers preferences.</noscript></body></html>";
	exit;

}
?>
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=windows-874">
<LINK 
href="css.css" type=text/css 
rel=stylesheet>
<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
<BODY bgColor=#f4f4f4 leftMargin=0 topMargin=0>
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cccccc><STRONG 
      class=font>&nbsp;&nbsp;&nbsp;<span lang="th">ส่งจดหมายให้สมาชิก E-News Letter</span></STRONG></TD></TR></TBODY></TABLE>
    <form name="formsearch" method="post" action="" >
<DIV align=center>
<TABLE cellSpacing=2 cellPadding=2 width=300 border=0>
  <TBODY>
  
  <TR>
    <TD colSpan=2>
      <DIV align=center><INPUT id=text_search name=text_search> <INPUT type=submit value="   ค้นหา   " name=Search> 
</DIV></TD></TR></TBODY></TABLE></form><BR>
<HR>
<BR>
<TABLE borderColor=#ffffff cellSpacing=0 borderColorDark=#ffffff cellPadding=0 
width=700 borderColorLight=#999999 border=1>
  <TBODY>

  <TR class=font bgColor=#60aad2>
    <TD width="353">
      <DIV class=style1 align=center><span lang="th">หัวข้อจดหมาย</span></DIV></TD>
   
    <TD width="133">
      &nbsp;</TD>
   
    <TD width="171">
      <DIV class=style1 align=center>
     สถานะ <span lang="en-us">/ </span>แก้ไข &nbsp; /&nbsp;ลบ</DIV></TD></TR>

		<?
		$page=$HTTP_GET_VARS[page];
	if($HTTP_POST_VARS[text_search]){
 $sql= "select * from letter_tb  where title_th like '%$HTTP_POST_VARS[text_search]%'";
				  }else{

	$sql = "select * from letter_tb  order by news_id  DESC";
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
    <TD width="353">
      <DIV class=detalbody align=center><?=$arr[title_th]?> </DIV></TD>
   
    <TD width="133">
      <p align="center"><span lang="th"><A 
      href="?news_id=<?=$arr[news_id]?>&send=1">ส่งจดหมาย</A></span></TD>
   
    <TD width="171">
      <DIV class=detalbody align=center><?if($arr[status]=="0"){ echo "ยังไม่ส่ง"; }else{ echo "ส่งแล้ว"; }?>&nbsp;/&nbsp;<A 
      href="addletter.php?news_id=<?=$arr[news_id]?>&edit=1"> 
     แก้ไข </A>&nbsp; /&nbsp;<A onclick='return checkdelete()'
      href="?news_id=<?=$arr[news_id]?>&del=1">ลบ</a></DIV></TD></TR>
  <? } ?>

         

          <tr>

            <td align="right" colspan="3"><?

				 $allpage = $rows / 20 ; 

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