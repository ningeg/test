<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=TIS-620" />
<title>Untitled Document</title>
</head>

<body>
        <?
		$name = $_POST["name"];
	$textarea = $_POST["textarea"];
	$mail = $_POST["mail"];
		$tel2 = $_POST["tel2"];
	$frmMessage = $_POST["frmMessage"];
	
	$header  = "MIME-Version: 1.0\r\n";
	$header .= "Content-type: text/plain; charset=TIS-620\r\n";
	$header .= "From: Website\r\n";
	$header .= "Reply-To:adisornuic@yahoo.com\r\n";
	$header .= "X-Mailer: PHP/picoHosting";
	
		$mail_message="
	ชื่อ : $name
	ที่อยู่ : $textarea
	email : $mail
	เบอร์โทร : $tel2
	ข้อความ : $frmMessage
	
	";
	
		mail( "adisornuic@yahoo.com,chanapai@hypermance.com,chanapai007@yahoo.com", "Message From Website", $mail_message,$header );
		echo "Thank you for your message";
		echo "<meta http-equiv=\"refresh\" content=\"3;URL=contact.php\" />
";
		?>

</body>
</html>