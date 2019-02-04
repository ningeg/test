<?
include("../DBEngine_onhost.php");
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
<title><?php include("../title.php"); ?></title>
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
<link href="../style_tran.css" rel="stylesheet" type="text/css" /></head>

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
          <td valign="top" background="../images/bg_content.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><?php include("inc_menu.php"); ?></td>
            </tr>
            <tr>
              <td><img src="../images/shadow_head.jpg" width="720" height="15" /><br />
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="25" align="left">&nbsp;</td>
                      <td width="667" height="33" align="left" valign="top" background="../images/wel2.jpg" class="bigWhite"><STRONG class="Topictext">&nbsp;&nbsp;&nbsp;&nbsp;<span class="NorTxtGray"><strong>Contact Us </strong></td>
                      <td align="left">&nbsp;</td>
                    </tr>
                </table></td>
            </tr>
            <tr>
              <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td align="left" valign="top"><p><span class="TopicRed">THAI TRANSPLANTATION SOCIETY </span><br />
                          <span class="Black12">Office:  4th Floor, The Royal Golden Jubilee Bldg., 2 Soi Soonvijai, New Petchburi Road, Bangkapi, Huaykwang, Bangkok 10310, Thailand.</span><br />
                          <br />
                          <span class="Black12">Tel:         (662) 716-6181, (662) 716-6184, (662) 716-6661-4 ext 4001<br />
Fax:	    (662) 716-6183                          </span><br />
                        <span class="Black11">E-mail: <a href="mailto:webmaster@ that-transplant.org" class="linkOrange">webmaster@ that-transplant.org</a></span></p>
                    <form action="../sendmail.php" method="post" name="form1" id="form1">
                        <table width="100%"  border="0" cellpadding="0" cellspacing="0" class="gray13">
                          <tr>
                            <td width="3%" class="text">&nbsp;</td>
                            <td width="28%" class="text">&nbsp;</td>
                            <td width="69%">&nbsp;</td>
                          </tr>
                          <tr>
                            <td height="28" class="text">&nbsp;</td>
                            <td align="right" valign="top" class="Black12">Name :&nbsp; </td>
                            <td align="left" class="Black12"><input name="name" type="text" id="name2" size="30" />
                                <span class="font_3">*</span></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td align="right" valign="top" class="Black12">Address :&nbsp;</td>
                            <td align="left" class="Black12"><textarea name="textarea" cols="30" id="address"></textarea>
                                <span class="font_3">*</span></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td align="right" valign="top" class="Black12">E-mail   :&nbsp;</td>
                            <td align="left" class="Black12"><input name="mail" type="text" id="mail" size="30" />
                                <span class="font_3">*</span></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td align="right" valign="top" class="Black12">Tel :&nbsp;</td>
                            <td align="left" valign="top" class="Black12"><input name="tel2" type="text" id="tel2" size="30" />
                                <span class="font_3">*</span></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td align="right" valign="top" class="Black12">Message :&nbsp; </td>
                            <td align="left" valign="top" class="Black12"><textarea name="frmMessage" cols="30" rows="5" id="frmMessage"></textarea>
                                <span class="font_3">*</span></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td align="right" valign="top" class="Black12">&nbsp;</td>
                            <td align="left" class="Black12"><span class="font1">
                              <?
   require("../randstr.php");
   $secretdata=randomstr(5);
   print("<img border=1 src='../img1.php?str=$secretdata'>");
   print("<input type=hidden name=text2 value='$secretdata'>");
?>
                              &nbsp;
                              <input type="text" name="text12" size="10" class="inputBox" />
                              &nbsp;&nbsp;<br />
                              Plaese input code <img src="images/0.gif" width="6" height="1" /></span></td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="Black12">&nbsp;</td>
                            <td align="left" class="Black12">&nbsp;</td>
                          </tr>
                          <tr>
                            <td>&nbsp;</td>
                            <td class="Black12">&nbsp;</td>
                            <td align="left" class="Black12"><input type="submit" name="Submit3" value="Send" /></td>
                          </tr>
                        </table>
                    </form>
                    <p>&nbsp;</p>
                    <p>&nbsp;</p></td>
                </tr>
              </table>
              </table></td>
        </tr>
      </table></td>
    </tr>
    
    <tr>
      <td height="100" align="left"><?php include("footer.php"); ?>&nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html>
