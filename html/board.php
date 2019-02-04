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
          <td valign="top" background="images/bg_content.jpg"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td><?php include("inc_menu.php"); ?></td>
            </tr>
            <tr>
              <td><img src="images/shadow_head.jpg" width="720" height="15" /><br />
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                    <td width="25" align="left">&nbsp;</td>
                    <td width="667" height="33" align="left" valign="top" background="images/wel2.jpg" class="bigWhite"><STRONG class="Topictext">&nbsp;&nbsp;&nbsp;&nbsp;<span class="NorTxtGray">เว็บบอร์ด</td>
                    <td align="left">&nbsp;</td>
                  </tr>
                </table></td>
            </tr>
            <tr>
              <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                  <td valign="top"><table width="90%" border="0" align="center" cellpadding="0" cellspacing="10" bgcolor="#FFFFFF">
      <tr align="right">
        <td valign="middle" class="text1"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td align="left">&nbsp;</td>
            <td align="right"><a href="add_board.php" class="LinkBlack"> <img src="images/0033_bala.png" border="0" /> ตั้งกระทู้</a></td>
          </tr>
        </table></td>
      </tr>
      
      <tr>
        <td height="40" align="left" valign="middle" class="White13" valign="top">
<table width="100%" border="0" cellspacing="0." cellpadding="0" valign="top">
          <tr bgcolor="#D1E8D4">
            <td height="30" bgcolor="#DBEEDE" class="TopicBlack">&nbsp;</td>
          <!--  <td align="center" class="Black12B">เลขที่&nbsp;&nbsp;</td> -->
            <td align="center" bgcolor="#DBEEDE" class="TopicBlack">&nbsp;&nbsp;หัวข้อ</td>
            <td width="120" align="left" bgcolor="#DBEEDE" class="TopicBlack">ผู้โพสต์&nbsp;</td>
            <td width="40" align="left" bgcolor="#DBEEDE" class="TopicBlack">อ่าน</td>
            <td width="40" align="left" bgcolor="#DBEEDE" class="TopicBlack">ตอบ&nbsp;</td>
            <td width="70" align="left" bgcolor="#DBEEDE" class="TopicBlack">วัน/เวลา</td>
          </tr>
		  <?
		  $sort=$HTTP_GET_VARS[sort];
		  $pfirst=$HTTP_GET_VARS[pfirst];
		  $page=$HTTP_GET_VARS[page];

 $sqla= "select * from board_subject where subject_id is not null";
 if($sort){
$sqla.=" and board_type='$sort'";
 }
  $sqla.="order by subject_id  DESC";
 $resa = DBexec($Dbs,$sqla);
  $rowsa = DBNumrows($resa);
 if($page == "") $page = 1 ; 

					$end = $page * 20; 

					$st = $end - 20; 

if($end > $rowsa ) $end = $rowsa ;

for($i=$st;$i<$end;$i++){
$arra = DBfetch_array($resa,$i);
 $yya = substr($arra[subject_date],0,4);
  $yya = $yya + 543;
$POSTDATEA = substr($arra[subject_date],6,2)."/".
														   substr($arra[subject_date],4,2)."/".
														   substr($yya,2,2);
$TT=  substr($arra[subject_date],8,2).":".
														   substr($arra[subject_date],10,2).":".
														   substr($arra[subject_date],12,2);
	if($bg =="#F3F3F3"){
			$bg = "#FFFFFF" ; 
			}else{
			$bg = "#F3F3F3";
			}
					?>
         					  <tr bgcolor="<? echo $bg; ?>"> 
            <td width="18"    valign="middle">&nbsp;<img src="icon/0177_document.png" width="12" height="12"  align="absmiddle"  /></td>
            <!--<td align="center" class="Black13">< ?=substr($arra[subject_id],2,5)?>&nbsp;&nbsp;</td> -->
            <td align="left" valign="middle">&nbsp;&nbsp;<a href="board_detail.php?subject_id=<?=$arra[subject_id]?>&v=1" target="_blank"  class="LinkBlack"><?=substr($arra[subject_name],0,60)?>...</a>                                               </td>
            <td align="left"  class="Black12" valign="middle"><?=$arra[board_name]?></td>
            <td align="left" class="Black12" valign="middle"><?=$arra[subject_view]?></td>
            <td align="left" class="Black12" valign="middle"><?=$arra[subject_reply]?></td>
            <td align="left" class="Black12" valign="middle"> <?=$POSTDATEA;?><br><?=$TT;?></td>
          </tr>
          <tr>
            <td colspan="6" background="images/dot_h.gif"  height="1"><img src="images/spage.gif" width="3" height="1" /></td>
          </tr>
         	  <? } ?>
      
          <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td height="50" colspan="6" align="right"><span class="BoldOrange"> <?
			$today=date("Ymd");


				 $allpage = $rowsa / 20 ; 

				 if($allpage > "1"){

			echo "<strong>หน้าที่ $page </strong>&nbsp;";

				 for($p=0;$p<$allpage;$p++){

				 

				 ?>

				[&nbsp;<a href="<?=$PHP_SELF;?>?page=<?=$p+1?>&sort=<?=$sort;?>" class="LinkGray13"> 

                             <? 
							$nopage=$p+1;
							 if($page==$nopage){ echo "<b> $nopage</b>";}else{?>  <?=$p+1?><?}?>

                                  </a> &nbsp;] 

       <?

				 }

				 }

				 ?></td>
          </tr>
        </table>
      </tr>
</table></td>
                </tr>
              </table></td>
            </tr>
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
