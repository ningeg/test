<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874">
<title></title>
<style type="text/css">
<!--
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-image: url();
}
-->
</style>
<link href="style_spa.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/JavaScript">
<!--



function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
//-->
</script>
<style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #BD520D;
	font-weight: bold;
}
-->
</style>
</head>

<body>
<table width="97%"  border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><p align="center">&nbsp;</p>
        <?
		$name = $_POST["name"];
	$textarea = $_POST["textarea"];
	$mail = $_POST["mail"];
		$tel2 = $_POST["tel2"];
	$frmMessage = $_POST["frmMessage"];
		

	if ( !empty( $name ) && !empty($mail)  && !empty($frmMessage) ) {
		$mail_to = "adisornuic@yahoo.com,chanapai@hypermance.com,chanapai007@yahoo.com";
		$mail_subject = "Message From สมาคมปลูกถ่ายอวัยวะ";
		$mail_message = "From:$name \n";
		$mail_message .= "ชื่อ. : ".$name."\n";
		$mail_message .= "ที่อยู่:".$textarea."\n";
		$mail_message .= "e-mail:".$mail ."\n";
		$mail_message .= "โทรศัพท์:".$tel2 ."\n";
		$mail_message .= "ข้อความ:".$frmMessage."\n";
		$mail_headers .= "From : $name <$mail>\n";
	$mail_headers .= "Cc: webmaster@transplantthai.org";
	$mail_headers .= "Content-type: text/html; charset=UTF-8\n";
	ini_set("sendmail_from",$name);
		mail( $mail_to, $mail_subject, $mail_message , $mail_headers );
?>
      <p align="center"><span class="boldnomal">Thank You</span><br>
        </p>
      <p align="center">
          <input name="button" type="button" class="inputbox" onClick="location.href='index.html';" value="Home Page">
      </p>
      <?
	} else {
?>
      <p align="center"><span class="boldnomal">!! Error !!</span> <br>
        </p>
      <p align="center">
        <input name="button2" type="button" class="inputbox" onClick="history.back();" value="Back">
      </p>
      <? } ?>
    </td>
  </tr>
  <tr>
    <td align="center"><img src="images/space.gif" width="10" height="10"> </td>
  </tr>
  <tr>
    <td align="center">&nbsp;</td>
  </tr>
</table>
</body>
</html>
