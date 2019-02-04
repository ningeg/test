<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
if(empty($cuscookies)){
 $dt=date("YmdHis");
$value="$dt$REMOTE_ADDR";
if(isset($value))
{
   SetCookie("cuscookies",$value,time()+1800);//Set Cookie for 5 hours
}
 }
 if ($HTTP_POST_VARS[text1] !="" && $HTTP_POST_VARS[text2] !=""    )
   {
   		if ( $HTTP_POST_VARS[text1] !=$HTTP_POST_VARS[text2] )
   		{
   			print("ERROR!!!... ");
   			exit();
   		}
   		else
   		{
if($Submit){
$path = "pic/picboard";
$date = date("Y-m-d");
if(($board_pic!="") && ($board_pic!="none")){
$board_pic_size = $HTTP_POST_FILES['board_pic']['size'];
if($board_pic_size >= 100000){
echo"<tr><td width='100%' colspan='2'><p align='center'><b><font face='Arial, Helvetica, sans-serif' size='2'><br>ขนาดภาพใหญ่เกิน 100 KB กรุณาตรวจสอบขนาดภาพแล้วลองใหม่อีกครั้ง.<a href='JavaScript:history.back()'> กลับไปโพสข้อความต่อ</a></font></b></td></tr>";
		exit;
}else{
						$time = date("Ymdhis") ; 	
		$newsname = $time."_".$board_pic_name; 
copy($board_pic , "$path/$newsname");
}
}
$insert = "insert into board_subject set subject_name='$subject_name',board_details='$board_details',board_name='$board_name',board_email='$board_email',board_type='0'";
if($newsname){
$insert .=",board_pic='$newsname'";
}
$insert .=",board_ip='$REMOTE_ADDR',subject_date='".date("YmdHis")."'";
DBexec($Dbs,$insert);
Header("Location:webboard.php");
}
}
}
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874" />
<title><?php include("title.php"); ?></title>
<style type="text/css">
<!--

-->
</style>
<script type="text/JavaScript">
<!--



function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>
<link href="style_tran.css" rel="stylesheet" type="text/css" />
</head>

<body>
<div align="center">
  <table width="900" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td><?php include("inc_head.php"); ?></td>
    </tr>
    <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td valign="top" bgcolor="#FFFFFF"><?php include("inc_menu_left.php"); ?></td>
          <td valign="top" background="images/bg_content.jpg"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td><?php include("inc_menu.php"); ?></td>
            </tr>
            <tr>
              <td><img src="images/shadow_head.jpg" width="720" height="15" /><br />
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="25" align="left">&nbsp;</td>
                    <td width="667" height="33" align="left" valign="top" background="images/wel2.jpg" class="bigWhite"><STRONG class="Topictext">&nbsp;&nbsp;&nbsp;&nbsp;<span class="NorTxtGray">ตั้งกระทู้ใหม่</td>
                    <td align="left">&nbsp;</td>
                  </tr>
                </table></td>
            </tr>
            <tr>
              <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td valign="top"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="10">
                    
                    <tr>
                      <td align="left" valign="middle" class="White13"><form id="member" name="member" onsubmit="return ckform()" action="savetopic.php" method="post" enctype="multipart/form-data">
                          <table cellspacing="1" cellpadding="0" width="90%" align="center" border="0">
                            <tbody>
                              <tr>
                                <td valign="top"><table cellspacing="0" cellpadding="3" width="100%" align="center" border="0">
                                    <tbody>
                                      <tr bgcolor="#ffffff">
                                        <td width="159" align="right" bgcolor="#ffffff" class="Black13" >&nbsp;</td>
                                        <td align="left" bgcolor="#ffffff" class="Black13" style="display:none;"><select id="board_type" name="board_type">
                                            <?php
				if($HTTP_GET_VARS[sort]==1){
		echo "<option value=\"1\" selected=\"selected\">การเรียน</option>\n";
	//	echo "<option value=\"2\">แหล่งงาน</option>\n";
//	echo "<option value=\"4\">Alumni</option>\n";
		}
		elseif($HTTP_GET_VARS[sort]==4){
//	echo "<option value=\"4\" selected=\"selected\">Alumni</option>\n";
	echo "<option value=\"1\">การเรียน</option>\n";
	//	echo "<option value=\"2\">แหล่งงาน</option>\n";
				}
				else{	
		//	echo "<option value=\"2\" selected=\"selected\">แหล่งงาน</option>\n";
				echo "<option value=\"1\">การเรียน</option>\n";
		//		echo "<option value=\"4\">Alumni</option>\n";
				}
	
				?>
                                        </select></td>
                                      </tr>
                                      <tr bgcolor="#ffffff">
                                        <td align="right" bgcolor="#ffffff" class="TopicBlack"><span class="BoldOrange"> *</span>หัวข้อ :</td>
                                        <td width="513" align="left" bgcolor="#ffffff" class="Black13"><input id="subject_name" size="60" name="subject_name" /></td>
                                      </tr>
                                      <tr class="borrer2" >
                                        <td align="right" valign="top" class="TopicBlack">Emotions : </td>
                                        <td bgcolor="f7f7f7"><a href="javascript:setsmile(':b1:')"><img 
                  height="21" 
                  src="img_board/b1.gif" 
                  width="21" border="0" /></a><a 
                  href="javascript:setsmile(':b2:')"><img height="21" 
                  src="img_board/b2.gif" 
                  width="21" border="0" /></a><a 
                  href="javascript:setsmile(':b3:')"><img height="21" 
                  src="img_board/b3.gif" 
                  width="21" border="0" /></a><a 
                  href="javascript:setsmile(':b4:')"><img height="21" 
                  src="img_board/b4.gif" 
                  width="21" border="0" /></a><a 
                  href="javascript:setsmile(':b5:')"><img height="21" 
                  src="img_board/b5.gif" 
                  width="21" border="0" /></a><a 
                  href="javascript:setsmile(':b6:')"><img height="21" 
                  src="img_board/b6.gif" 
                  width="21" border="0" /></a><a 
                  href="javascript:setsmile(':b7:')"><img height="21" 
                  src="img_board/b7.gif" 
                  width="21" border="0" /></a><a 
                  href="javascript:setsmile(':b8:')"><img height="21" 
                  src="img_board/b8.gif" 
                  width="21" border="0" /></a><a 
                  href="javascript:setsmile(':b9:')"><img height="21" 
                  src="img_board/b9.gif" 
                  width="21" border="0" /></a><a 
                  href="javascript:setsmile(':b10:')"><img height="21" 
                  src="img_board/b10.gif" 
                  width="21" border="0" /></a><a 
                  href="javascript:setsmile(':b11:')"><img height="21" 
                  src="img_board/b11.gif" 
                  width="21" border="0" /><br />
                                              <span class="Black13"><a href="javascript:setURL()"><img alt="แทรกลิงค์ URL" src="pic/link.gif" border="0" /></a> <a href="javascript:setsmile('[---]')"><img alt="ย่อหน้า" src="pic/indent.gif" border="0" /></a> <a href="javascript:setBold()"><img alt="ตัวหนา" src="pic/b.gif" border="0" /></a> <a href="javascript:setItalic()"><img alt="ตัวเอียง" src="pic/i.gif" border="0" /></a> <a href="javascript:setUnderline()"><img alt="เส้นใต้" src="pic/u.gif" border="0" /></a> <a href="javascript:setColor('red','แดง')"><img alt="สีแดง" src="pic/redcolor.gif" border="0" /></a> <a href="javascript:setColor('green','เขียว')"><img alt="สีเขียว" src="pic/greencolor.gif" border="0" /></a> <a href="javascript:setColor('blue','น้ำเงิน')"><img alt="สีน้ำเงิน" src="pic/bluecolor.gif" border="0" /></a> <a href="javascript:setColor('orange','ส้ม')"><img alt="สีส้ม" src="pic/orangecolor.gif" border="0" /></a> <a href="javascript:setColor('pink','ชมพู')"><img alt="สีชมพู" src="pic/pinkcolor.gif" border="0" /></a> <a href="javascript:setColor('gray','เทา')"><img alt="สีเทา" src="pic/graycolor.gif" border="0" /></a></span></a></td>
                                      </tr>
                                      <tr bgcolor="#ffffff">
                                        <td align="right" valign="top" bgcolor="#ffffff" class="TopicBlack"><p align="right"><span class="BoldOrange">*</span>รายละเอียด :<br />
                                                <br />
                                          </p>
                                            <p align="right"> </p>
                                          <p align="right"> </p></td>
                                        <td width="513" align="left"><textarea id="board_details" name="board_details" rows="9" cols="60"></textarea></td>
                                      </tr>
                                      <tr bgcolor="#ffffff">
                                        <td align="right" valign="top" bgcolor="#ffffff" class="TopicBlack">อีเมล์ :</td>
                                        <td align="left" bgcolor="#ffffff" class="Black13"><input id="board_email" value="<?=$HTTP_COOKIE_VARS[MEM_EMAIL];?>" size="40" name="board_email"></td>
                                      </tr>
                                      <tr bgcolor="#ffffff">
                                        <td align="right" valign="top" bgcolor="#ffffff" class="TopicBlack"><span class="BoldOrange">*</span>ชื่อ :</td>
                                        <td align="left" bgcolor="#ffffff" class="Black13"><input id="board_name"  size="40"  name="board_name"  value="<?=$HTTP_COOKIE_VARS[MEM_NAME];?> " /></td>
                                      </tr>
                                      <tr bgcolor="#ffffff">
                                        <td align="right" valign="top" bgcolor="#ffffff" class="TopicBlack">รูปภาพ : </td>
                                        <td align="left" bgcolor="#ffffff" class="Black11"><input id="image" type="file" size="40" name="image" />
                                            <br />
                                            <span class="red12">ขนาดไม่เกิน 100   KB และต้องเป็นไฟล์ jpg หรือ gif เท่านั้น</span></td>
                                      </tr>
                                      <tr bgcolor="#ffffff">
                                        <td align="right" valign="top" bgcolor="#ffffff" class="TopicBlack"><span class="BoldOrange">*</span>กรอกตัวเลข :</td>
                                        <td align="left" bgcolor="#ffffff" class="Black11"><table cellspacing="0" cellpadding="3" width="100%" border="0">
                                            <tbody>
                                              <tr>
                                                <td width="10%"><?
   require("randstr.php");
   $secretdata=randomstr(5);
   print("<img border=1 src='img1.php?str=$secretdata'>");
  // print("<input type=hidden name=text2 value='$secretdata'>");
?></td>
                                                <td width="90%"><input id="code" size="12" name="code" />
                                                    <span class="text"> *เพื่อยืนยันการตั้งกระทู้</span></td>
                                              </tr>
                                            </tbody>
                                        </table></td>
                                      </tr>
                                    </tbody>
                                </table></td>
                              </tr>
                            </tbody>
                          </table>
                        <input name="code2" type="hidden" id="code2" value="<?=$secretdata?>" />
                          <input name="board_icq" type="hidden" id="board_icq" value="Y" />
                          <br />
                          <table cellspacing="0" cellpadding="0" width="10%" align="center" border="0">
                            <tbody>
                              <tr>
                                <td><div align="center">
                                    <input type="submit" value="Submit" name="Submit2" />
                                </div></td>
                                <td><div align="center">
                                    <input type="reset" value="Reset" name="Submit2" />
                                </div></td>
                              </tr>
                            </tbody>
                          </table>
                      </form></td>
                    </tr>
                    <script language="JavaScript" type="text/javascript">

function ckform()
{

	  var regMail=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i


var v1=document.member.subject_name.value;
var v2=document.member.board_details.value;
var v3=document.member.board_name.value;
var v4=document.member.code.value;

if(v1=="")
{
    alert("กรุณากรอกหัวข้อ");
	 document.member.subject_name.focus(); 
     return false;
	 
}else if(v2=="")
{
    alert("กรุณากรอกรายละเอียดกระทู้");
	 document.member.board_details.focus(); 
     return false;	 
}else if(v3=="")
{
    alert("กรุณากรอกชื่อ");
	 document.member.board_name.focus(); 
     return false;
}else if(v4=="")
{
    alert("กรุณายืนยันตัวเลขในการตั้งกระทู้");
	 document.member.code.focus(); 
     return false;
  
}else
  return true; 

}
function setURL()
{
	var temp = window.prompt('ใส่ URL ที่คุณต้องการสร้างเป็นลิงค์','http://'); 
	if(temp) setsmile('[url]'+temp+'[/url]');
}

function setImage()
{
	var temp = window.prompt('ใส่ URL ของรูปที่คุณต้องการให้แสดงในคำตอบของคุณ','http://'); 
	if(temp) setsmile('[img]'+temp+'[/img]');
}

function setBold()
{
	var temp = window.prompt('ใส่ข้อความที่คุณต้องการทำเป็นตัวหนา',''); 
	if(temp) setsmile('[b]'+temp+'[/b]');
}

function setItalic()
{
	var temp = window.prompt('ใส่ข้อความที่คุณต้องการทำเป็นตัวเอียง',''); 
	if(temp) setsmile('[i]'+temp+'[/i]');
}

function setUnderline()
{
	var temp = window.prompt('ใส่ข้อความที่คุณต้องการให้มีเส้นใต้',''); 
	if(temp) setsmile('[u]'+temp+'[/u]');
}

function setColor(color,name)
{
	var temp = window.prompt('ใส่ข้อความที่คุณต้องการให้เป็นสี'+name,''); 
	if(temp) setsmile('[color='+color+']'+temp+'[/color]');
}

function setsmile(what)
{
	document.member.board_details.value = document.member.elements.board_details.value+" "+what;
	document.member.board_details.focus();
}
                  </script>
                  </table></td>
                </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
    </tr>
          
       <script language="JavaScript" type="text/JavaScript">

function ckform()
{

	  var regMail=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i


var v1=document.member.subject_name.value;
var v2=document.member.board_details.value;
var v3=document.member.board_name.value;
var v4=document.member.code.value;

if(v1=="")
{
    alert("กรุณากรอกหัวข้อ");
	 document.member.subject_name.focus(); 
     return false;
	 
}else if(v2=="")
{
    alert("กรุณากรอกรายละเอียดกระทู้");
	 document.member.board_details.focus(); 
     return false;	 
}else if(v3=="")
{
    alert("กรุณากรอกชื่อ");
	 document.member.board_name.focus(); 
     return false;
}else if(v4=="")
{
    alert("กรุณายืนยันตัวเลขในการตั้งกระทู้");
	 document.member.code.focus(); 
     return false;
  
}else
  return true; 

}
function setURL()
{
	var temp = window.prompt('ใส่ URL ที่คุณต้องการสร้างเป็นลิงค์','http://'); 
	if(temp) setsmile('[url]'+temp+'[/url]');
}

function setImage()
{
	var temp = window.prompt('ใส่ URL ของรูปที่คุณต้องการให้แสดงในคำตอบของคุณ','http://'); 
	if(temp) setsmile('[img]'+temp+'[/img]');
}

function setBold()
{
	var temp = window.prompt('ใส่ข้อความที่คุณต้องการทำเป็นตัวหนา',''); 
	if(temp) setsmile('[b]'+temp+'[/b]');
}

function setItalic()
{
	var temp = window.prompt('ใส่ข้อความที่คุณต้องการทำเป็นตัวเอียง',''); 
	if(temp) setsmile('[i]'+temp+'[/i]');
}

function setUnderline()
{
	var temp = window.prompt('ใส่ข้อความที่คุณต้องการให้มีเส้นใต้',''); 
	if(temp) setsmile('[u]'+temp+'[/u]');
}

function setColor(color,name)
{
	var temp = window.prompt('ใส่ข้อความที่คุณต้องการให้เป็นสี'+name,''); 
	if(temp) setsmile('[color='+color+']'+temp+'[/color]');
}

function setsmile(what)
{
	document.member.board_details.value = document.member.elements.board_details.value+" "+what;
	document.member.board_details.focus();
}
          </script>
    <tr>
      <td align="left"></td>
    </tr>
  </table>
<?php include("footer.php"); ?>
</div>
</body>
</html>
