<?
session_start();
//function ConnectDB($dbHost="localhost",$dbUser="root",$dbPass="1234",$dbname="thca_db"){
function ConnectDB($dbHost="localhost",$dbUser="kidneyfo_db",$dbPass="hn9ZE94v",$dbname="kidneyfo_db"){
   $conn=mysql_connect($dbHost,$dbUser,$dbPass) or die("Can not conect to $dbname");
   mysql_select_db($dbname); 
   return $conn;
}

$dbName="kidneyfo_db";

?>

<?
function DBexec($Dbs,$SQL){
  $result = mysql_query($SQL);
  return $result; 
}
?>

<?
function DBfetch_array($result,$row)
{
  mysql_data_seek($result,$row);
  $array = mysql_fetch_array($result);
  return $array;
}
?>

<?
function loadThaiUTF8(){
	global $DbConn;
        $cs1 = "SET character_set_results=utf8";
		DBexec($DbConn,$cs1);
		
		$cs2 = "SET character_set_client =utf8";
		DBexec($DbConn,$cs2);
		
		$cs3 = "SET character_set_connection =utf8";
		DBexec($DbConn,$cs3);
}
?>

<?
function MakeImageName($filetype,$ID,$imageType){       
	  $HTMLImgName="";
	  switch(trim($filetype)){
		case "image/pjpeg":
			$HTMLImgName=trim($ID."_".$imageType).".jpg";   
		break;
		case "image/jpeg":
			$HTMLImgName=trim($ID."_".$imageType).".jpg";   
		break;
		case "image/jpg":
			$HTMLImgName=trim($ID."_".$imageType).".jpg";   
		break;
		case "image/x-png":
			$HTMLImgName=trim($ID."_".$imageType).".png";    
		break;
		case "image/png":
			$HTMLImgName=trim($ID."_".$imageType).".png";    
		break;
		case "image/gif":
			$HTMLImgName=trim($ID."_".$imageType).".gif";    
		break;
	}
	 return $HTMLImgName;		
}
?>


<?
function formatdateThaiFullmonth($monthstring) {
  	switch($monthstring) {
      case "01":
              $newMonth = "���Ҥ�";
              break;
      case "02":
              $newMonth = "����Ҿѹ��";
              break;
      case "03":
              $newMonth = "�չҤ�";
              break;
      case "04":
              $newMonth = "����¹";
              break;
      case "05":
              $newMonth = "����Ҥ�";
              break;
      case "06":
              $newMonth = "�Զع�¹";
              break;
      case "07":
              $newMonth = "�á�Ҥ�";
              break;
      case "08":
              $newMonth = "�ԧ�Ҥ�";
              break;
      case "09":
              $newMonth = "�ѹ��¹";
              break;
      case "10":
              $newMonth = "���Ҥ�";
              break;
      case "11":
              $newMonth = "��Ȩԡ�¹";
              break;
      default:
              $newMonth = "�ѹ�Ҥ�";
  }
  $newDate = "$newMonth";
  return($newDate);
  }
