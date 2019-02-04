<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
if($del=="1"){
$delsql = "delete from member where mem_id='$mem_id'";
DBexec($Dbs,$delsql);
}
if($HTTP_POST_VARS[Update]){
$news_id=$HTTP_POST_VARS[news_id];
$mem_id=$HTTP_POST_VARS[mem_id];
	 $sql = "select * from letter_tb  where  news_id='$news_id'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
 $msgtxt = eregi_replace("\"","'",$arr[details_th]);
 $msg = "<html>

<head>
<meta http-equiv='Content-Language' content='en-us'>
<meta name='GENERATOR' content='Microsoft FrontPage 5.0'>
<meta name='ProgId' content='FrontPage.Editor.Document'>
<meta http-equiv='Content-Type' content='text/html; charset=windows-1252'>
<title>New Page 1</title>
<link href='http://www.clinicalresearchcollaboration.org/style_icrcc.css' rel='stylesheet' type='text/css'>
</head>

<body>

<table border='0' cellpadding='0' cellspacing='0' style='border-collapse: collapse' width='70%' id='AutoNumber1' bgcolor='#F6F6F6'>
  <tr>
    <td width='100%'>
    <p align='center'>
    <img src='http://www.clinicalresearchcollaboration.org/backend/images/logobackend.gif' border='0' width='305' height='96'></td>
  </tr>
  <tr>
    <td width='100%' class='NorTxtGray'>
    <p style='margin-left: 15'>$msgtxt</td>
  </tr>
</table>

</body>

</html>";
$nocard = count(@$mem_id);
 for ($i = 0; $i < $nocard; $i++) {

$sql2 = "select * from member WHERE mem_id='$mem_id[$i]'";
 $res2 = DBexec($Dbs,$sql2);

  $rows2 = DBNumrows($res2);
   $arr2 = DBfetch_array($res2,0);
   $custmail = $arr2[email];

   									$subject  ="$arr[title_th]";
									$tomail = "$custmail";
									$headers = "From: ICRCC <info@clinicalresearchcollaboration.org>\n";
									$headers.= "Content-type: text/html; charset=windows-874\n"; 
			    $s = mail( $tomail ,$subject,$msg, $headers);  
 }
 echo "<html><body><script language=javascript1.1>alert('Êè§¨´ËÁÒÂàÃÕÂºÃéÍÂáÅéÇ¤èÐ'); window.location='memletter.php';</script><noscript>Your browser doesn't support JavaScript 1.1 or it's turned off in your browsers preferences.</noscript></body></html>";
	exit;
}
?>
<HTML><HEAD><TITLE></TITLE>
<META http-equiv=Content-Type content="text/html; charset=windows-874"><LINK 
href="css.css" type=text/css 
rel=stylesheet>
<META content="MSHTML 6.00.2900.2180" name=GENERATOR>
<SCRIPT language=JavaScript>
<!--
function goThere(form){
	var linkList=form.selectThis.selectedIndex
	if(!linkList==""){window.location.href=form.selectThis.options[linkList].value;}
}
<!--
function goThere2(form){
	var linkList=form.selectThis2.selectedIndex
	if(!linkList==""){window.location.href=form.selectThis2.options[linkList].value;}
}
function goSubmit(f){
 f.action = "addnocard.php?Movecard=true";
 f.submit();
}//End if
//-->
var checkflag = "false";
function checkall(field) {
f = document.formmove;
  CurPoll = f["mem_id[]"];
if (checkflag == "false") {
 for(i=0;i<CurPoll.length;i++){
CurPoll[i].checked = true;}
checkflag = "true";
return "Uncheck All"; }
else {
 for(i=0;i<CurPoll.length;i++){
CurPoll[i].checked = false; }
checkflag = "false";
return "Check All"; }
}
function Initialize() {
   el = document.getElementById('joblist');
   if(el.style.visibility == 'visible'){
      el.style.visibility = 'hidden';
   }else{
      el.style.visibility = 'visible';
      Xmen=document.body.scrollLeft+window.event.clientX-60;
      Ymen=document.body.scrollTop+window.event.clientY-40;
      el.style.left=Xmen +'px';
      el.style.top=Ymen +'px';
   }
}
</SCRIPT>
</HEAD>
<BODY bgColor=#f4f4f4 leftMargin=0 topMargin=0>
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cccccc><STRONG 
      class=font>&nbsp;&nbsp;&nbsp;ÃÒÂª×èÍÊÁÒªÔ¡</STRONG></TD></TR></TBODY></TABLE>
 <form name="formsearch" method="post" action="" >
<DIV align=center>
<TABLE cellSpacing=2 cellPadding=2 width=300 border=0>
  <TBODY>
  
  <TR>
    <TD colSpan=2>
      <DIV align=center><INPUT id=text_search name=text_search> <INPUT type=submit value="   ¤é¹ËÒ   " name=Search> 
</DIV></TD></TR></TBODY></TABLE></form><BR><HR>
<BR>
<TABLE borderColor=#ffffff cellSpacing=0 borderColorDark=#ffffff cellPadding=0 
width=700 borderColorLight=#999999 border=1>
  <TBODY>
 <FORM name="formmove" action=""  method=post>
  <TR class=font bgColor=#60aad2>
    <TD>
      <DIV class=style1 align=center><INPUT TYPE="checkbox" NAME="alltickets" VALUE="ALL" onClick="JavaScript:checkall();">&nbsp;All</font></DIV></TD>
    <TD>
      <DIV class=style1 align=center>ª×èÍ</DIV></TD>
     <TD>
      <DIV class=style1 align=center>ÍÕàÁÅÅì</DIV></TD>

   </TR>

<?
$news_id=$HTTP_GET_VARS[news_id];
	$page=$HTTP_GET_VARS[page];
		$text_search=$HTTP_POST_VARS[text_search];
if($text_search){
 $sql= "select * from member  where name like '%$text_search%'";
				  }else{
	$sql = "select * from member  order by mem_id DESC";
}
  $res1 = DBexec($Dbs,$sql);

  $rows = DBNumrows($res1);

  if($page == "") $page = 1 ; 

					$end = $page * 15; 

					$st = $end - 15; 

if($end > $rows ) $end = $rows ;

for($i=$st;$i<$end;$i++){

			$arr = DBfetch_array($res1,$i);
if($bg =="#FFFFFF"){

			$bg = "#E0EDF7" ; 

			}else{

			$bg = "#FFFFFF";

			}
		$LASTLOGIN = substr($arr[signup],4,2)."/".
														   substr($arr[signup],6,2)."/".
														   substr($arr[signup],0,4)." ".
														   substr($arr[signup],8,2).":".
														   substr($arr[signup],10,2).":".
														   substr($arr[signup],12,2);
		?>
  <TR class=font>
    <TD><input type="checkbox" name="mem_id[]" value="<? echo $arr[mem_id]; ?>">
      </TD>
    <TD>
      <DIV class=detalbody align=center><?=$arr[name]?></DIV></TD>
    
    <TD>
      <DIV class=detalbody align=center><?=$arr[email]?></DIV></TD>
    <TD>
      </TD></TR>
  <? } ?>

      <tr>

            <td align="right" colspan="6">   <input type="hidden" name="news_id" value="<?=$news_id;?>">
<input type="hidden" name="Update" value="Update">
	<INPUT type=submit value=" Send Letter " name=Update></td></tr>

          <tr>

            <td align="right" colspan="6"><?
				 $allpage = $rows / 15; 

				 if($allpage > "1"){
for($a2=0;$a2<$allpage;$a2++){
$nopage = $nopage + 1;
}
	
			?>Page <strong><?=$page;?></strong> of <?=$nopage;?> [<?=$rows;?> Records]</span> <br />
                         <?if($page > 1){?>   <span class="font2"><a href="<?=$PHP_SELF;?>?page=<?=$page-1?>&news_id=<?=$news_id;?>" class="font1">Back</a><?}?> <strong>
                            <?
				for($p=0;$p<$allpage;$p++){
 ?>
<a href="<?=$PHP_SELF;?>?page=<?=$p+1?>&news_id=<?=$news_id;?>" class="font1"><?=$p+1?></a></strong> l <?}?> <?if($page < $allpage){?><a href="<?=$PHP_SELF;?>?page=<?=$page+1?>&news_id=<?=$news_id;?>" class="font1"><strong>Next</strong></a><?}?></span>
                            <?}?> </td>

          </tr>
		  </form>
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
