<?
include("../FCKeditor/fckeditor.php") ;

?>
		<link href="../FCKeditor/_samples/sample.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
<BODY bgColor=#f4f4f4 leftMargin=0 topMargin=0>
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cccccc><STRONG 
      class=font>&nbsp;&nbsp;&nbsp;เพิ่ม</STRONG></TD>
  </TR></TBODY></TABLE>
<FORM name=form1 action="">

<TABLE cellSpacing=3 cellPadding=3 width=90% align=center border=0>
  <TBODY>
  <TR>
    <TD class=font>
      <DIV align=right><span lang="th">หัวข้อข่าว</span> : </DIV></TD>
    <TD>
</TD></TR>
  <TR>
    <TD class=font colspan="2">
     <p align="center">รายละเอียด</TD>
    </TR>
      <TR>
    <TD class=font colspan="2">


<?php
$oFCKeditor = new FCKeditor('FCKeditor1') ;
$oFCKeditor->BasePath = '/FCKeditor/';
$oFCKeditor->Config['AutoDetectLanguage']	= true ;
$oFCKeditor->Config['DefaultLanguage']		= 'th' ;

$oFCKeditor->Value = 'หกดกหด หฟด กหฟด หก' ;
$oFCKeditor->Create() ;
?>			<br>
</TD>
    </TR>
   
