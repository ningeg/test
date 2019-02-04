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
          <td valign="top" bgcolor="#FFFFFF"><?php include("inc_menu_left.php"); ?></td>
          <td valign="top" background="images/bg_content.jpg"><table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tr>
              <td><?php include("inc_menu.php"); ?></td>
            </tr>
            <tr>
              <td><img src="images/shadow_head.jpg" width="720" height="15" /><br />
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="25" align="left">&nbsp;</td>
                    <td width="667" height="33" align="left" valign="top" background="images/wel2.jpg" class="bigWhite"><STRONG class="Topictext">&nbsp;&nbsp;&nbsp;&nbsp;<span class="NorTxtGray">เว็บลิงค์</td>
                    <td align="left">&nbsp;</td>
                  </tr>
                </table></td>
            </tr>
            <tr>
              <td><table width="90%" align="center" cellpadding="0" cellspacing="0">
                            
                            <?
				$page=$HTTP_GET_VARS[page];
					$sql = "select * from link_tb order by c_position DESC";
					$res = DBexec($Dbs,$sql);
					$rows = DBNumrows($res);
					 if($page == "") $page = 1 ; 
					$end = $page * 10; 
					$st = $end - 10; 
if($end > $rows ) $end = $rows ;
					
echo "<tr>\n";
$td = 0;
for($i=$st;$i<$end;$i++){
					$arr= DBfetch_array($res,$i);
					?>
                            <td align="left" valign="top"><table width="100%" border="0" align="center" cellpadding="0" cellspacing="3">
                              <tr>
                                <td valign="top"><img src="space.gif" width="5" height="10"></td>
                              </tr>
                              <tr>
                                <td valign="top"><table width="100%" border="0" cellpadding="1" cellspacing="0" class="Black12">
                                  <tr>
                                    <td align="center"><?if($arr[l_logo]){?>
                                      <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td align="center"><table width="100" border="0" cellpadding="2" cellspacing="0" class="borrr2">
                                            <tr>
                                              <td><a href="<?=$arr[l_url]?>" target="_blank"><img src="picnews/thumb/<?=$arr[l_logo];?>" alt="<?=$arr[l_name]?>" height="60" border="0" /></a></td>
                                            </tr>
                                          </table>
                                          </td>
                                        </tr>
                                        <tr>
                                          <td height="20" align="center" ><a href="<?=$arr[l_url]?>"class="linkOrange"><?=$arr[l_name];?></a></td>
                                        </tr>
                                      </table></td>
                                    <?}?>
                                  </tr>
                                </table></td>
                              </tr>
                            </table></td>
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
                            <tr>
                              <td colspan="2"><?
				 $allpage = $rows / 10 ; 
				 if($allpage > "1"){
				echo "<span class='txtBlack'>Page</span>";
				 for($p=0;$p<$allpage;$p++){
				 ?>
                                &nbsp;<a href="<?=$PHP_SELF;?>?page=<?=$p+1?>">
                                  <?=$p+1?>
                                  </a> &nbsp;,&nbsp;
                                <?
				 }
			 }
			 ?></td>
                            </tr>
                            <tr>
                              <td colspan="2"></td>
                            </tr>
                            <tr>
                              <td colspan="2"></td>
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
