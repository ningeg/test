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
<link href="../style_tran.css" rel="stylesheet" type="text/css" />
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
          <td valign="top" background="../images/bg_content.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><?php include("inc_menu.php"); ?></td>
            </tr>
            <tr>
              <td><img src="../images/shadow_head.jpg" width="720" height="15" /><br />
                  <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="25" align="left"><?
               $news_id=$HTTP_GET_VARS[news_id];
			if($news_id){
			$sql = "select * from newscenter6  where  news_id='$news_id'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
	}
			  ?></td>
                      <td width="667" height="33" align="left" valign="top" background="../images/wel2.jpg" class="bigWhite"><STRONG class="Topictext">&nbsp;&nbsp;&nbsp;&nbsp;<span class="NorTxtGray"><strong>
                        <?=$arr[title_th];?>
                      </strong></td>
                      <td align="left">&nbsp;</td>
                    </tr>
                </table></td>
            </tr>
            <tr>
              <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="97%" valign="top"><table width="100%" border="0" cellspacing="2" cellpadding="0">
                        
                        <tr>
                          <td align="left">&nbsp;</td>
                          <td align="left">&nbsp;</td>
                        </tr>
                        <tr>
                          <td align="left">&nbsp;</td>
                          <td align="left" class="NorTxtBlue"><span class="NorTxtGray">
                            <?=$arr[details_th];?>
                          </span></td>
                        </tr>
                        <tr>
                          <td width="2%" align="left">&nbsp;</td>
                          <td width="98%" align="left">&nbsp;</td>
                        </tr>
                        <tr>
                          <td align="left">&nbsp;</td>
                          <td align="left"><?if($arr[file_down]){?>
                              <a href="picnews/thumb/<?=$arr[file_down];?>" class="LinkNor"  target="_bank">
                              <!--       < ?=$arr[file_name];?> -->
                              </a>
                              <?}?></td>
                        </tr>
                      </table>
                    <strong><a href="n_001.html" class="NorTxtGray"></a></strong></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
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
