<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
if(empty($cuscookies)){
 $dt=date("YmdHis");
$value="$dt$REMOTE_ADDR";
if(isset($value))
{
  SetCookie("cuscookies",$value,time()+2592000);//Set Cookie for 30 days 
}
 }
?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874" />
<title><?php include("title.php"); ?></title>
<meta name="description" content="หน่วยไตเด็ก รพ.พระมงกุฎเกล้า">
<meta name="keywords" content="ไต, เด็ก, SLE, ล้างไต, เปลี่ยนไต">
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
<?
if ($HTTP_POST_VARS[code] !="" && $HTTP_POST_VARS[code2] !=""    )
   {
   		if ( $HTTP_POST_VARS[code] !=$HTTP_POST_VARS[code2] )
   		{
   			print("ERROR!!!... ");
   			exit();
   		}
   		else
   		{
if($HTTP_POST_VARS[Submit]){

$path = "picboard";
$date = date("Y-m-d");
$post_pic_size = $_FILES['post_pic']['size'];
$post_pic_name = $_FILES['post_pic']['name'];
$post_pic = $_FILES['post_pic']['tmp_name'];
if($post_pic_size >= 50000){
echo"<tr><td width='100%' colspan='2'><p align='center'><b><font face='Arial, Helvetica, sans-serif' size='2'><br>ขนาดภาพใหญ่เกิน 50 KB กรุณาตรวจสอบขนาดภาพแล้วลองใหม่อีกครั้ง.<a href='JavaScript:history.back()'> กลับไปโพสข้อความต่อ</a></font></b></td></tr>";
		exit;
}else{
if(($post_pic!="") && ($post_pic!="none")){
						$time = date("Ymdhis"); 	
		$newsname = $time."_".$post_pic_name; 
copy($post_pic , "$path/$newsname");
}

$insert = "insert into board_post set post_name='$HTTP_POST_VARS[post_name]',post_details='$HTTP_POST_VARS[post_details]' ,post_email='$HTTP_POST_VARS[post_email]',post_pic='$newsname'";
$insert .=",post_date='".date("YmdHis")."',post_ip='$ip',subject_id='$HTTP_POST_VARS[subject_id]'";

DBexec($Dbs,$insert);

$update = "update board_subject  set  subject_reply=subject_reply+1 where subject_id='$HTTP_POST_VARS[subject_id]'";
$res1 = DBexec($Dbs,$update);
echo "<meta http-equiv=\"refresh\" content=\"1;URL=board_detail.php?subject_id=$HTTP_POST_VARS[subject_id]\">";
}
}
}
}
if($HTTP_GET_VARS[v]=="1"){
$update = "update board_subject  set  subject_view=subject_view+1 where subject_id='$HTTP_GET_VARS[subject_id]'";
$res1 = DBexec($Dbs,$update);
}
?>
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
                    <td width="667" height="33" align="left" valign="top" background="images/wel2.jpg" class="bigWhite"><STRONG class="Topictext">&nbsp;&nbsp;&nbsp;&nbsp;<span class="NorTxtGray">เว็บบอร์ด</td>
                    <td align="left">&nbsp;</td>
                  </tr>
                </table></td>
            </tr>
            <tr>
              <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr bgcolor="#FFFFFF">
                  <td align="center" valign="top"><table width="100%" border="0" cellspacing="10" cellpadding="0">
                      <?
		$subject_id=$HTTP_GET_VARS[subject_id];
if($subject_id){
			$sql = "select * from board_subject  where subject_id='$subject_id'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
			 $yy = substr($arr[subject_date],0,4);
  $yy = $yy + 543;
$POSTDATE = substr($arr[subject_date],6,2)."/".
														   substr($arr[subject_date],4,2)."/".
														   $yy." ".
														   substr($arr[subject_date],8,2).":".
														   substr($arr[subject_date],10,2).":".
														   substr($arr[subject_date],12,2);
			  ?>
                      <?    if($HTTP_COOKIE_VARS[MEM_LOGIN])
	{?>
                      <tr>
                        <td align="right" valign="middle"  class="Topic"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td align="left">&nbsp;</td>
                              <td align="right"><span class="text1"><a href="add_board.php" class="LinkBlack"><img src="images/0033_bala.png" border="0" /> ตั้งกระท</a></span></td>
                            </tr>
                        </table></td>
                      </tr>
                    <?}?>
                      <tr>
                        <td height="40" align="left" valign="middle" bgcolor="#D1D1D1"><span class="White13">&nbsp;&nbsp;&nbsp;<span class="bigBlack">
                          <?=$arr[subject_name]?>
                        </span></span></td>
                      </tr>
                      <tr>
                        <td height="40" align="left" valign="middle" bgcolor="#e8e8e8" class="borderBrown"><table width="100%" border="0" cellspacing="0." cellpadding="5">
                            <tr>
                              <td>&nbsp;<br />
                                <br />
                                <span class="text">
                                <?if($arr[board_pic]){?>
                                <p align="center"><img src="picboard/<?=$arr[board_pic];?>" />
                                    <? } ?>
                                </p>
                                <?=process($arr[board_details])?>
                                <br />
                                <span class="Black12"><br />
                                <strong class="Black12B">ชื่อ:</strong>
                                <?=$arr[board_name]?>
                                  <strong>วันเวลา :</strong>                                  
                                  <?=$POSTDATE;?>                              
                                  </span></td>
                            </tr>
                        </table></td>
                      </tr>
                    </table>
                      <? } ?>
                      <?
 $sql1= "select * from board_post  where subject_id='$subject_id' order by post_id ASC";
  $res1 = DBexec($Dbs,$sql1);
  $rows1 = DBNumrows($res1);
 for($i=0;$i<$rows1;$i++){
$arr1 = DBfetch_array($res1,$i);
  $yyre = substr($arr1[post_date],0,4);
			  $yyre = $yyre + 543;
$REPLYDATE = substr($arr1[post_date],6,2)."/".
														   substr($arr1[post_date],4,2)."/".
														   $yyre." ".
														   substr($arr1[post_date],8,2).":".
														   substr($arr1[post_date],10,2).":".
														   substr($arr1[post_date],12,2);
	  ?>
                      <table width="100%" border="0" cellpadding="0" cellspacing="10">
                        <tr class="borderBrown">
                          <td align="left" valign="middle" class="borderBrown"><table width="100%" border="0" cellpadding="5" cellspacing="0." class="borrr2">
                              <tr>
                                <td align="right" class="TopicBlack">&nbsp;&nbsp; ความคิดเห็นที่
                                  <?=$i+1;?>                                </td>
                              </tr>
                              <tr>
                                <td><span class="text">
                                  <?if($arr1[post_pic]){?>
                                  <p align="center"><img src="picboard/<?=$arr1[post_pic];?>" <?if($w > "500"){?>width="500"<? } ?> />
                                      <? } ?>
                                  </p>
                                  <?=process($arr1[post_details])?>
                                </span></td>
                              </tr>
                              <tr>
                                <td><table width="100%" border="0" cellpadding="0" cellspacing="10">
                                    <tr>
                                      <td align="left" valign="middle" background="images/dot_h.gif"><img src="images/space.gif" width="5" height="1" /></td>
                                    </tr>
                                </table></td>
                              </tr>
                              <tr>
                                <td class="Black12"><strong class="Black12B">ชื่อ:</strong>
                                    <?=$arr1[post_name]?>
                                    <strong>วันเวลา :</strong>
                                    <?=$REPLYDATE;?>                                
                                    </td>
                              </tr>
                          </table></td>
                        </tr>
                      </table>
                    <? } ?>
                      <table width="100%" border="0" cellpadding="0" cellspacing="10">
                        <tr>
                          <td align="left" valign="middle" bgcolor="#F0F0F0" class="White13"><br />
                              <form id="member" name="member" method="post" action="" onsubmit="return ckform()" enctype="multipart/form-data">
                                <? echo"<INPUT TYPE=hidden NAME=\"subject_id\" VALUE=\"$subject_id\">"; ?>
                                <div align="center"><span class="TopicBlack">แสดงความคิดเห็น</span><br />
                                </div>
                                <table width="90%" border="0" align="center" cellpadding="0" cellspacing="1">
                                  <tbody>
                                    <tr>
                                      <td valign="top"><table width="100%" border="0" align="center" cellpadding="3" cellspacing="0">
                                          <tbody>
                                            <tr bgcolor="#ffffff">
                                              <td width="167" rowspan="3" align="right" valign="top" bgcolor="#f0f0f0" class="TopicBlack"><p align="right" class="BlueTopic"><span class="BoldOrange">*</span>รายละเอียด :<br />
                                                      <br />
                                                </p>
                                                  <p align="right"> </p>
                                                <p align="right"> </p></td>
                                              <td align="left" bgcolor="#f0f0f0" class="text"><a href="javascript:setURL()"><img alt="แทรกลิงค์ URL" src="pic/link.gif" border="0" /></a> <a href="javascript:setsmile('[---]')"><img alt="ย่อหน้า" src="pic/indent.gif" border="0" /></a> <a href="javascript:setBold()"><img alt="ตัวหนา" src="pic/b.gif" border="0" /></a> <a href="javascript:setItalic()"><img alt="ตัวเอียง" src="pic/i.gif" border="0" /></a> <a href="javascript:setUnderline()"><img alt="เส้นใต้" src="pic/u.gif" border="0" /></a> <a href="javascript:setColor('red','แดง')"><img alt="สีแดง" src="pic/redcolor.gif" border="0" /></a> <a href="javascript:setColor('green','เขียว')"><img alt="สีเขียว" src="pic/greencolor.gif" border="0" /></a> <a href="javascript:setColor('blue','น้ำเงิน')"><img alt="สีน้ำเงิน" src="pic/bluecolor.gif" border="0" /></a> <a href="javascript:setColor('orange','ส้ม')"><img alt="สีส้ม" src="pic/orangecolor.gif" border="0" /></a> <a href="javascript:setColor('pink','ชมพู')"><img alt="สีชมพู" src="pic/pinkcolor.gif" border="0" /></a> <a href="javascript:setColor('gray','เทา')"><img alt="สีเทา" src="pic/graycolor.gif" border="0" /></a></td>
                                            </tr>
                                            <tr bgcolor="#ffffff">
                                              <td align="left" bgcolor="#f0f0f0"><a href="javascript:setsmile(':b1:')"><img 
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
                  width="21" border="0" /></a></td>
                                            </tr>
                                            <tr bgcolor="#ffffff">
                                              <td width="552" align="left" bgcolor="#f0f0f0"><textarea id="post_details" name="post_details" rows="9" cols="50"></textarea>
                                                *</td>
                                            </tr>
                                            <tr bgcolor="#ffffff">
                                              <td align="right" valign="top" bgcolor="#f0f0f0" class="TopicBlack">อีเมล์ :</td>
                                              <td align="left" bgcolor="#f0f0f0" class="text"><input id="post_email" size="40" name="post_email" value="<?=$HTTP_COOKIE_VARS[MEM_EMAIL];?>" /></td>
                                            </tr>
                                            <tr bgcolor="#ffffff">
                                              <td align="right" valign="top" bgcolor="#f0f0f0" class="TopicBlack"><span class="BoldOrange">*</span>ชื่อ :</td>
                                              <td align="left" bgcolor="#f0f0f0" class="text"><input id="post_name" size="40" name="post_name" value="<?=$HTTP_COOKIE_VARS[MEM_NAME];?>" /></td>
                                            </tr>
                                            <tr bgcolor="#ffffff">
                                              <td align="right" valign="top" bgcolor="#f0f0f0" class="TopicBlack">รูปภาพ : </td>
                                              <td align="left" bgcolor="#f0f0f0" class="Black12"><input id="post_pic" type="file" size="40" name="post_pic" />
                                                  <br />
                                                  <span class="red12">ขนาดไม่เกิน 100   KB และต้องเป็นไฟล์ jpg หรือ gif เท่านั้น</span></td>
                                            </tr>
                                            <tr bgcolor="#ffffff">
                                              <td align="right" valign="top" bgcolor="#f0f0f0" class="TopicBlack"><span class="BoldOrange">*</span>กรอกตัวเลข :</td>
                                              <td align="left" bgcolor="#f0f0f0" class="Black12"><table cellspacing="0" cellpadding="3" width="100%" border="0">
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
                                <br />
                                <table cellspacing="0" cellpadding="0" width="10%" align="center" border="0">
                                  <tbody>
                                    <tr>
                                      <td><div align="center">
                                          <input type="submit" value="Submit" name="Submit" />
                                      </div></td>
                                      <td><div align="center">
                                          <input type="reset" value="Reset" name="Submit2" />
                                      </div></td>
                                    </tr>
                                  </tbody>
                                </table>
                              </form></td>
                        </tr>
                    </table></td>
                </tr>
              </table></td>
            </tr>
          </table></td>
        </tr>
      </table></td>
    </tr>
    
    <tr>
      <td height="100" align="left"><?php include("footer.php"); ?>&nbsp;</td>
    </tr>
  </table>
     <script language="JavaScript" type="text/JavaScript">

function ckform()
{

	  var regMail=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i


var v2=document.member.post_details.value;
var v3=document.member.post_name.value;
var v4=document.member.code.value;
 if(v2=="")
{
    alert("กรุณากรอกรายละเอียดกระทู้");
	 document.member.post_details.focus(); 
     return false;	 
}else if(v3=="")
{
    alert("กรุณากรอกชื่อ");
	 document.member.post_name.focus(); 
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
	document.member.post_details.value = document.member.elements.post_details.value+" "+what;
	document.member.post_details.focus();
}
          </script>
</div>
</body>
</html>
