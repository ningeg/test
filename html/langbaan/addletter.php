<?
include ('./loggedin.inc.php');
include("../FCKeditor/fckeditor.php") ;
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
if($HTTP_POST_VARS[Submit]){
$insert = "insert into letter_tb set title_eng='$HTTP_POST_VARS[title_eng]',title_th='$HTTP_POST_VARS[title_th]',details_eng='$HTTP_POST_VARS[details_eng]',details_th='$HTTP_POST_VARS[details_th]',status='0',pic_s='$thumb1_name',pic_b='$picture1name',ddpost='".date("YmdHis")."'";
DBexec($Dbs,$insert);
 Header("Location:manageletter.php");
}
if($HTTP_POST_VARS[Update]){
$update = "update letter_tb set title_eng='$HTTP_POST_VARS[title_eng]',title_th='$HTTP_POST_VARS[title_th]',details_eng='$HTTP_POST_VARS[details_eng]',details_th='$HTTP_POST_VARS[details_th]'";


$update .= " where news_id='$HTTP_POST_VARS[news_id]'";
DBexec($Dbs,$update);
 Header("Location:manageletter.php");
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
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
      class=font>&nbsp;&nbsp;&nbsp;สร้างจดหมายใหม่</STRONG></TD></TR></TBODY></TABLE>
<FORM name=form1 action="" method=post enctype="multipart/form-data">
<?
$news_id=$HTTP_GET_VARS[news_id];
			if($news_id){
			$sql = "select * from letter_tb  where  news_id='$news_id'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
	}
			  ?>
<TABLE cellSpacing=3 cellPadding=3 width=600 align=center border=0>
  <TBODY>
  <TR>
    <TD class=font>
      <DIV align=right>Subject : </DIV></TD>
    <TD><INPUT id=title_th size=62 name=title_th value="<?=$arr[title_th];?>"  class="inputBox"></TD></TR>
  <TR>
    <TD class=font colspan="2">
     <p align="center">Details</TD>
    </TR>
      <TR>
    <TD class=font colspan="2">
     <?php
$oFCKeditor = new FCKeditor('details_th') ;
$oFCKeditor->BasePath = '../FCKeditor/';
$oFCKeditor->Width  = '100%' ;
$oFCKeditor->Height = '400' ;
$oFCKeditor->Value = $arr[details_th];
$oFCKeditor->Create() ;
?></TD>
    </TR>


  <TR>
    <TD class=font>&nbsp;</TD>
    <TD><?if($HTTP_GET_VARS[edit]){?>
	<input type="hidden" name="news_id" value="<?=$arr[news_id];?>">
	<input type="hidden" name="Update" value="Update">
	<INPUT type=submit value="   บันทึกข้อมูล   " name=Update><?}else{?>
	<input type="hidden" name="Submit" value="Submit">
	<INPUT type=submit value="   บันทึกข้อมูล   " name=Submit><? }?>
      &nbsp; 
<INPUT type=reset value="   ยกเลิก   " name=Submit2></TD></TR></TBODY></TABLE></FORM>
<DIV align=center>

</DIV></TD></TR></TBODY></TABLE><BR><BR></DIV></FORM></BODY></HTML>