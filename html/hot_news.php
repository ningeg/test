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
          <td valign="top" bgcolor="#FFFFFF"><?php include("inc_menu_left.php"); ?></td>
          <td valign="top" background="images/bg_content.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><?php include("inc_menu.php"); ?></td>
            </tr>
            <tr>
              <td><img src="images/shadow_head.jpg" width="720" height="15" /></td>
            </tr>
            <tr>
              <td><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                  <td valign="top"><table width="100%" border="0" align="center" cellpadding="1" cellspacing="2">
                      <tr>
                        <td colspan="2" align="left" background="images/bg_topic_dot.jpg"><img src="images/topic_hotnew.jpg" width="116" height="37" /></td>
                        </tr>
                      
                      <?
                   $page=$HTTP_GET_VARS[page];  
	if($text_search){
 $sql= "select * from newscenter2  where title_th like '%$text_search%'";
				  }else{

	$sql = "select * from newscenter2  order by news_id  DESC";
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
                        <td width="14%" align="left"><a href="newdetails.php?news_id=<?=$arr[news_id];?>">
                          <?if($arr[pic_s]){?>
                          <img  alt="  Search" hspace="5" 
                  src="picnews/thumb/<?=$arr[pic_s];?>"  border="0" />
                          <?}?>
                        </a></td>
                        <td width="79%" align="left" valign="top"><span class="NorTxtGray"><strong>
              <a href="newdetails.php?news_id=<?=$arr[news_id];?>" class="TopicRed"> <?=$arr[title_th];?></a>
                          </strong><br />
                          <span class="Gray11">
                          <?=substr($detailsshow3,0,200);?>
                          </span>                          <br />
                          </span><span class="Black11">
                            <?=$POSTDATE;?>
                          </span></td>
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
      <td align="left"></td>
    </tr>
  </table>
<?php include("footer.php"); ?>
</div>
</body>
</html>
