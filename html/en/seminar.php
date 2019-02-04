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
			$sql = "select * from newscenter4  where  news_id='$news_id'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
	}
			  ?></td>
                      <td width="667" height="33" align="left" valign="top" background="../images/wel2.jpg" class="bigWhite"><STRONG class="Topictext">&nbsp;&nbsp;&nbsp;&nbsp;<span class="NorTxtGray"><strong>
                        MEETINGS &amp; EVENTS                      </strong></td>
                      <td align="left">&nbsp;</td>
                    </tr>
                </table></td>
            </tr>
            <tr>
              <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                    <td valign="top"><table width="100%" border="0" align="center" cellpadding="1" cellspacing="2">
                        <?
                   $page=$HTTP_GET_VARS[page];  
	if($text_search){
 $sql= "select * from newscenter4  where title_th like '%$text_search%'";
				  }else{

	$sql = "select * from newscenter4 order by news_id  DESC";
}
  $res1 = DBexec($Dbs,$sql);

  $rows = DBNumrows($res1);

  if($page == "") $page = 1 ; 

					$end = $page * 20; 

					$st = $end - 20; 

if($end > $rows ) $end = $rows ;

for($i=$st;$i<$end;$i++){

			$arr = DBfetch_array($res1,$i);

 $yy = substr($arr[ddpost],0,4);

$POSTDATE = substr($arr[ddpost],8,2)."/". substr($arr[ddpost],5,2)."/".$yy;

 $detailsshow3 = strip_tags($arr[details_eng]);  
	
		?>
                        <tr>
                          <td width="98%" height="25" align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="10" colspan="2" >&nbsp;</td>
                            </tr>
                            <?
$sql4  = "select  * from  newscenter4  order by news_id  DESC limit 15";

$res4 = DBexec($Dbs,$sql4);
$rows4 = DBNumrows($res4);
for($i=0;$i<$rows4;$i++){
$arr4 = DBfetch_array($res4,$i);
 $detailsshow3 = strip_tags($arr4[details_eng]);  
  if($arr4[title_eng]==""){echo"";}else{

						?>
                            <tr>
                              <td width="18%" align="left" valign="top"><table width="80" border="0" cellpadding="0" cellspacing="3" class="borrr2">
                                  <tr>
                                    <td><a href="newdetails4.php?news_id=<?=$arr4[news_id];?>"><img  
                  src="../picnews/thumb/<?=$arr4[pic_s];?>" width="100"  align="left" border="0" /></a></td>
                                  </tr>
                                </table>
                                <a href="newdetails4.php?news_id=<?=$arr4[news_id];?>"  class="LinkTopicBack"></a></td>
                              <td width="82%" align="left" valign="top"><div id="hotnew"><a href="newdetails4.php?news_id=<?=$arr4[news_id];?>">
                                  <?if($arr4[pic_s]){?>
                                  </a>
                                      <?}?>
                                      <span class="TopicBlack">
                                      <?=$arr4[title_eng];?>
                                        </span> <br />
                                      <span class="Gray11">
                                      <?=substr($detailsshow3,0,200);?>
                                      </span> <span class="LinkBlack"><br />
                                      <br />
                                        [ <a href="newdetails4.php?news_id=<?=$arr4[news_id];?>" class="linkOrange">More...</a> ]</span> </div></td>
                            </tr>
                            <tr>
                              <td colspan="2" align="left" valign="top"><img src="images/space.gif" width="5" height="5" /></td>
                            </tr>
                            <?} } ?>
                          </table></td>
                        </tr>
                        <?}?>
                        <tr>
                          <td align="left">&nbsp;</td>
                        </tr>
                    </table></td>
                  </tr>
                  <tr>
                    <td align="left"  class="LinkNor"><?
				 $allpage = $rows / 15; 

				 if($allpage > "1"){
for($a=0;$a<$allpage;$a++){
$nopage = $nopage + 1;
}
				echo "Page $page/$nopage";
			?>
                    </td>
                  </tr>
                  <tr>
                    <td align="left"><?
				for($p=0;$p<$allpage;$p++){
 ?>
                      &nbsp;<a href="<?=$PHP_SELF;?>?page=<?=$p+1?>"  class="LinkNor">
                        <?=$p+1?>
                        </a>
                      <?

				 }

				 }
				 ?>
                      </span> </td>
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
