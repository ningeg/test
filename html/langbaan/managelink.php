<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
if($_GET[del]=="1"){
$delsql = "delete from link_tb where l_id='$_GET[l_id]'";
DBexec($Dbs,$delsql);
}
if($_GET[event] == "up"){


$up_sql = "select * from  link_tb   where l_id is not null  order by  c_position asc";
$up_res  = DBexec($Dbs,$up_sql);
$up_rows = DBNumrows($up_res);

for($i=0;$i<$up_rows;$i++){
$arr = DBfetch_array($up_res,$i);

if($arr[c_position]  == $_GET[old] ){

$newpos = $i - 1 ; 
 			$newar = DBfetch_array($up_res,$newpos);
			
			//****** Change position   up *********

		$update1 = "update  link_tb   set  c_position = '$newar[c_position]' where l_id='$arr[l_id]'";
		DBexec($Dbs,$update1); 			
			
			//********* Change position down *******
			
			$update2 = "update link_tb  set c_position ='$arr[c_position]' where  l_id='$newar[l_id]'";
			DBexec($Dbs,$update2);

break;
}


}




}
// *********** &uml;&ordm;&agrave;&Aring;&times;&egrave;&Iacute;&sup1;&cent;&eacute;&Iacute;&Aacute;&Ugrave;&Aring;&cent;&Ouml;&eacute;&sup1;  ********


// **********  &agrave;&times;&Aring;&times;&egrave;&Iacute;&sup1;&cent;&eacute;&Iacute;&Aacute;&Ugrave;&Aring;&Aring;&sect;  ***********
if($_GET[event] == "down"){


$up_sql = "select * from  link_tb   where l_id is not null  order by c_position asc";
$up_res  = DBexec($Dbs,$up_sql);
$up_rows = DBNumrows($up_res);

for($i=0;$i<$up_rows;$i++){
$arr = DBfetch_array($up_res,$i);

if($arr[c_position]  == $_GET[old] ){

$newpos = $i + 1 ; 
 			$newar = DBfetch_array($up_res,$newpos);
			
			//****** Change position   up *********

		$update1 = "update  link_tb   set  c_position = '$newar[c_position]' where l_id='$arr[l_id]'";
		DBexec($Dbs,$update1); 			
			
			//********* Change position down *******
			
			$update2 = "update link_tb  set c_position ='$arr[c_position]' where  l_id='$newar[l_id]'";
			DBexec($Dbs,$update2);

break;
}


}




}
// *********** &uml;&ordm;&agrave;&Aring;&times;&egrave;&Iacute;&sup1;&cent;&eacute;&Iacute;&Aacute;&Ugrave;&Aring;&Aring;&sect;  ********
?>
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
      class=font>&nbsp;&nbsp;&nbsp;รายชื่<span lang="th">อลิงค์พันธมิตร</span></STRONG></TD></TR></TBODY></TABLE>
  <form name="formsearch" method="post" action="" >
</form>
<DIV align=center>
<TABLE cellSpacing=2 cellPadding=2 width=300 border=0>
  <TBODY>
  
  <TR>
    <TD colSpan=2>
      <DIV align=center><INPUT id=text_search name=text_search size="20"> <INPUT type=submit value="   ค้นหา   " name=Search> 
</DIV></TD></TR></TBODY></TABLE></form><BR>
<HR>
<BR>
<TABLE borderColor=#ffffff cellSpacing=0 borderColorDark=#ffffff cellPadding=0 
width=700 borderColorLight=#999999 border=1>
  <TBODY>

  <TR class=font bgColor=#60aad2>
    <TD width="405">
      <DIV class=style1 align=center><span lang="th">ลิงค์พันธมิตร</span></DIV></TD>
    <TD width="116">
      <p align="center">up / down</TD>
    <TD width="171">
      <DIV class=style1 align=center>
     แก้ไข &nbsp; /&nbsp;ลบ</DIV></TD></TR>

	<?
	$page=$_GET[page];
	if($Search){
 $sql= "select * from link_tb  where category_th like '%$text_search%'";
				  }else{

					
	$sql = "select * from link_tb  order by c_position  DESC";
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
  <TR class=font bgcolor="<?=$bg;?>">
    <TD width="405">
      <DIV class=detalbody align=center><?=$arr[l_name]?> </DIV></TD>
    <TD width="116">
	<p align="center"><?if($i >0){?>
                        <a href="?event=up&old=<?=$arr[c_position]?>"><img src="images/down.gif" width="20" height="20" alt="&agrave;&Aring;&times;&egrave;&Iacute;&sup1;&cent;&Ouml;&eacute;&sup1;" border="0"></a> 
                        <?}?> &nbsp;  <?if($i < $rows - 1){?>
                        <a href="?event=down&old=<?=$arr[c_position]?>"><img src="images/up.gif" width="20" height="20" alt="&agrave;&Aring;&times;&egrave;&Iacute;&sup1;&Aring;&sect;" border="0"></a> 
                        <?}?>
      &nbsp;</TD>
    <TD width="171">
      <DIV class=detalbody align=center>&nbsp;<A 
      href="addlink.php?l_id=<?=$arr[l_id]?>&edit=1"> 
     แก้ไข </A>&nbsp; /&nbsp;<A onclick='return checkdelete()'
      href="?l_id=<?=$arr[l_id]?>&del=1">ลบ</a></DIV></TD></TR>
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