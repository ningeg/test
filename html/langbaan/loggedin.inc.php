<?
session_start();
if($_SESSION["newsession"] == ""){
	Header("Location: index.php");
	exit;
	}
	?>
