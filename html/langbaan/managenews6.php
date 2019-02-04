<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
if($HTTP_GET_VARS[del]=="1"){
$delsql = "delete from newscenter6 where news_id='$HTTP_GET_VARS[news_id]'";
DBexec($Dbs,$delsql);
}
?>
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
      class=font>&nbsp;&nbsp;&nbsp;ราย<span lang="th">การ</span></STRONG></TD>
  </TR></TBODY></TABLE>
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
    <TD width="405">
      <DIV class=style1 align=center><span lang="th">ชื่อรายการ</span></DIV></TD>
   
    <TD width="171">
      <DIV class=style1 align=center>
     แก้ไข &nbsp; /&nbsp;ลบ</DIV></TD></TR>

		<?
	if($HTTP_POST_VARS[text_search]){
 $sql= "select * from newscenter6  where title_th like '%$HTTP_POST_VARS[text_search]%'";
				  }else{

	$sql = "select * from newscenter6 order by news_id  DESC";
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
    <TD width="405">
      <DIV class=detalbody align=center><?=$arr[title_th]?> </DIV></TD>
   
    <TD width="171">
      <DIV class=detalbody align=center>&nbsp;<A 
      href="addnews6.php?news_id=<?=$arr[news_id]?>&edit=1"> 
     แก้ไข </A><!--&nbsp; /&nbsp;<A onclick='return checkdelete()'
      href="?news_id=< ?=$arr[news_id]?>&del=1">ลบ</a> --></DIV></TD></TR>
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