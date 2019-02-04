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
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-874" />
<title>
<?php include("title.php"); ?>
</title>
<meta name="description" content="Ë¹èÇÂäµà´ç¡ Ã¾.¾ÃÐÁ§¡Ø®à¡ÅéÒ">
<meta name="keywords" content="äµ, à´ç¡, SLE, ÅéÒ§äµ, à»ÅÕèÂ¹äµ">
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
            <td colspan="2" valign="top" bgcolor="#FFFFFF"><?php include("inc_menu2.php"); ?></td>
          </tr>
          <tr>
            <td valign="top" bgcolor="#FFFFFF"><?php include("inc_menu_left.php"); ?></td>
            <td valign="top" background="images/bg_content.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td></td>
                </tr>
                <tr>
                  <td>&nbsp;</td>
                </tr>
                <tr>
                  <td align="left"><table width="715" border="0" align="center" cellpadding="0" cellspacing="0">
                      <tr>
                        <td align="left">&nbsp;</td>
                      </tr>
                      <tr>
                        <td><table width="100%" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                              <td valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                  <tr>
                                    <td width="97%" valign="top"><p>
                                        <?
               $news_id=$HTTP_GET_VARS[news_id];
			if($news_id){
			$sql = "select * from newscenter  where  news_id='$news_id'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
	}
			  ?>
                                      </p>
                                      <table width="100%" border="0" cellspacing="2" cellpadding="0">
                                        <tr>
                                          <td width="98%" class="NorTxtBlue" ><div id="wel">
                                              <?=$arr[details_th];?>
                                            </div></td>
                                        </tr>
                                      </table></td>
                                  </tr>
                                </table></td>
                            </tr>
                          </table></td>
                      </tr>
                      <tr>
                        <td>&nbsp;</td>
                      </tr>
                      <tr>
                        <td align="left" ><table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#edebec">
                            <tr>
                              <td><img src="images/head_content01.jpg" /></td>
                              <td align="right"><a href="news.php" class="LinkBlack">More..</a> &nbsp;&nbsp;&nbsp; </td>
                            </tr>
                          </table></td>
                      </tr>
                      <tr>
                        <td><table width="100%" border="0" align="center" cellpadding="5" cellspacing="1"   bgcolor="#EDEBEC">
                            <?
					  $page=$page;
$sql4  = "select  * from  newscenter3  order by news_id  DESC limit 6";

$res4 = DBexec($Dbs,$sql4);
$rows4 = DBNumrows($res4);
if($page == "") $page = 1 ; 
					$end = $page * 10; 
					$st = $end - 10; 
if($end > $rows ) $end = $rows ;
					
echo "<tr>\n";
$td = 0;

for($i=0;$i<$rows4;$i++){
$arr4 = DBfetch_array($res4,$i);
 $detailsshow3 = strip_tags($arr4[details_th]);  
						?>
                            
                              <td width="100" align="left" valign="top" ><table width="80" border="0" cellpadding="0" cellspacing="3" class="borrr2">
                                  <tr>
                                    <td><a href="newdetails5.php?news_id=<?=$arr4[news_id];?>"><img  
                  src="picnews/full/<?=$arr4[pic_b];?>" width="230"  height="132" align="left" border="0" /></a></td>
                                  </tr>
                                </table><br />
<div id="Know">
                                <a href="newdetails5.php?news_id=<?=$arr4[news_id];?>">
                                <?if($arr4[pic_s]){?>
                                <?}?>
                                <span class="TopicBlack"> </span></a>
                                <div id="contentWrap"> <a href="newdetails5.php?news_id=<?=$arr4[news_id];?>"  class="LinkTopicBack">
                                  <?=$arr4[title_th];?>
                                  </a> <br />
                                  <span class="Gray11">
                                  <?=substr($detailsshow3,0,200);?>
                                  </span></div></td>
                              <?
			 $td = $td +1;
			if ($td == 3) {
				echo "</tr>\n";

				echo "<tr>\n";
				$td = 0;
			}	
} //end looping result loop

if ($td != 0) { echo "</tr>\n\n"; } //close tr 
?>
                            </tr>
                            
                              <td colspan="2">
                          </table></td>
                      </tr>
                      <tr>
                        <td align="left" ><br />
<table width="100%" border="0" cellpadding="0" cellspacing="0"  bgcolor="#EDEBEC">
                            <tr>
                              <td ><img src="images/head_content02.jpg" /></td>
                              <td align="right" ><a href="knowledge.php" class="LinkBlack">More...</a>&nbsp;&nbsp;&nbsp;</td>
                            </tr>
                          </table>
                          <table width="100%" border="0" align="center" cellpadding="5" cellspacing="1"   bgcolor="#EDEBEC">
                            <?
					  $page=$page;
$sql4  = "select  * from  newscenter5  order by news_id  DESC limit 6";

$res4 = DBexec($Dbs,$sql4);
$rows4 = DBNumrows($res4);
if($page == "") $page = 1 ; 
					$end = $page * 10; 
					$st = $end - 10; 
if($end > $rows ) $end = $rows ;
					
echo "<tr>\n";
$td = 0;

for($i=0;$i<$rows4;$i++){
$arr4 = DBfetch_array($res4,$i);
 $detailsshow3 = strip_tags($arr4[details_th]);  
						?>
                            
                              <td width="100" align="left" valign="top" ><table width="80" border="0" cellpadding="0" cellspacing="3" class="borrr2">
                                  <tr>
                                    <td><a href="newdetails5.php?news_id=<?=$arr4[news_id];?>"><img  
                  src="picnews/full/<?=$arr4[pic_b];?>" width="230"  height="132" align="left" border="0" /></a></td>
                                  </tr>
                                </table><br />
<div id="Know">
                                <a href="newdetails5.php?news_id=<?=$arr4[news_id];?>">
                                <?if($arr4[pic_s]){?>
                                <?}?>
                                <span class="TopicBlack"> </span></a>
                                <div id="contentWrap"> <a href="newdetails5.php?news_id=<?=$arr4[news_id];?>"  class="LinkTopicBack">
                                  <?=$arr4[title_th];?>
                                  </a> <br />
                                  <span class="Gray11">
                                  <?=substr($detailsshow3,0,200);?>
                                  </span></div></td>
                              <?
			 $td = $td +1;
			if ($td == 3) {
				echo "</tr>\n";

				echo "<tr>\n";
				$td = 0;
			}	
} //end looping result loop

if ($td != 0) { echo "</tr>\n\n"; } //close tr 
?>
                            </tr>
                            
                              <td colspan="2">
                          </table>
                      <tr>
                        <td></td>
                      </tr>
                    </table>
              </table></td>
          </tr>
        </table></td>
    </tr>
    <tr>
      <td height="100" align="left"><?php include("footer.php"); ?>
        &nbsp;</td>
    </tr>
  </table>
</div>
</body>
</html>
