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
              <td>
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="25" align="left">&nbsp;</td>
                    <td width="667" height="33" align="left" valign="top" background="images/wel2.jpg" class="bigWhite"><span class="Topictext"><strong>&nbsp;&nbsp;&nbsp;&nbsp;<span class="NorTxtGray">ข่าวประชาสัมพันธ์</span></td>
                    <td align="left">&nbsp;</td>
                  </tr>
                </table></td>
            </tr>
            <tr>
              <td>
              
              <!-- table -->
              <table border="0" align="left" cellpadding="0" cellspacing="0">
                <tr>
                  <td width="44" rowspan="3" valign="top">&nbsp;</td>
                  <td width="626" valign="top"><table width="100%" border="0" align="center" cellpadding="1" cellspacing="2">
                      <?
                   $page=$HTTP_GET_VARS[page];  
	if($text_search){
 $sql= "select * from newscenter3  where title_th like '%$text_search%'";
				  }else{

	$sql = "select * from newscenter3  order by news_id  DESC";
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

 $detailsshow3 = strip_tags($arr[details_th]);  
	
		?>
                      <tr>
                        <td width="2%" align="left" valign="top"><img src="images/bulet22.jpg" /></td>
                        <td width="98%" height="25" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td height="25"><span class="NorTxtGray"><strong><a href="newdetails3.php?news_id=<?=$arr[news_id];?>" class="TopicRed">
                                <?=$arr[title_th];?>
                              </a></strong></span></td>
                            </tr>
                            <tr>
                              <td valign="top"><span class="NorTxtGray"><span class="Gray11">
                                <?=substr($detailsshow3,0,200);?>
                              </span></span></td>
                            </tr>
                            <tr>
                              <td height="30" align="right"><span class="Black11"> <img src="images/0069_Mooshak.png" width="12" height="12" />
                                    <?=$POSTDATE;?>
                                    <br />
                                </span>
                                  <table width="100%" border="0" cellpadding="0" cellspacing="0" background="images/dot_h.gif">
                                    <tr>
                                      <td height="1"><img src="images/dot_h.gif" width="3" height="1" /></td>
                                    </tr>
                                </table></td>
                            </tr>
                        </table></td>
                      </tr>
                      <?}?>
                      <tr>
                        <td align="left">&nbsp;</td>
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
			?></td>
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
      <td align="left"></td>
    </tr>
  </table>
<?php include("footer.php"); ?>
</div>
</body>
</html>
