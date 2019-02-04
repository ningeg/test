<?php
session_start();
echo $_SESSION["newsession"];
unset($_SESSION["newsession"]);
echo $_SESSION["newsession"];
if ($_GET["logout"] == "true") {
include ('./loggedin.inc.php');
		echo "qqq".$_SESSION["newsession"];
		echo "www".$_SESSION["USER_NAME"]== "";
		
echo "<html>\n";
echo "<header>\n<META HTTP-EQUIV=\"Refresh\" CONTENT=\"1; url=index.php\" target=\"_top\">\n</header>\n\n";
	echo "<body>\n <font face=\"Arial, Helvetica, sans-serif\" size=\"2\">Signing out . . .";
	echo "\n</font></body>\n</html>";  
}
?>