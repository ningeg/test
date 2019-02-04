<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();

?>
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=windows-874"><LINK 
href="css.css" type=text/css 
rel=stylesheet>
<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
<BODY bgColor=#f4f4f4 leftMargin=0 topMargin=0>
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cccccc><STRONG 
      class=font>&nbsp;&nbsp;&nbsp;</STRONG><strong>ลบคำตอบกระทู้</strong></TD>
  </TR></TBODY></TABLE>
<HR>
<BR>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0.">
  <tr>

    <td width="77%"><br />
          <?
				
				
				if($HTTP_GET_VARS[del] == "1"){
				
				$delete = "delete from board_post where post_id='$HTTP_GET_VARS[post_id]'";
				DBexec($Dbs,$delete);
	//			 Header("Location:?subject_id=$HTTP_GET_VARS[subject_id]");
			 echo "<meta http-equiv=\"refresh\" content=\"0;URL=?subject_id=$HTTP_GET_VARS[subject_id]\" />";
				}
				
				
				?>
          <table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">
            <tbody>
              <tr>
                <td bgcolor="#e4e4e4"><table align="center" border="0" cellpadding="3" cellspacing="1" width="100%">
                    <tbody>
                      <tr>
                        <td align="center" bgcolor="#E4E4E4" width="76%"><strong>หัวข้อ</strong></td>
                        <td align="center" bgcolor="#e4e4e4" width="7%"><strong>ลบ</strong></td>
                      </tr>
                      <?
 $page=$HTTP_GET_VARS[page];
					$sql = "select * from board_post where subject_id='$HTTP_GET_VARS[subject_id]'";
					$res = DBexec($Dbs,$sql);
					$rows = DBNumrows($res);
					 if($page == "") $page = 1 ; 
					$end = $page * 20; 
					$st = $end - 20; 
if($end > $rows ) $end = $rows ;
for($i=$st;$i<$end;$i++){
					$arr= DBfetch_array($res,$i);
					if($bg =="#f3f3f3"){
			$bg = "#e4e4e4" ; 
			}else{
			$bg = "#f3f3f3";
			}
					?>
                      <tr bgcolor="<? echo $bg; ?>">
                        <td align="left"><?=$arr[post_details]?></td>
                        <td align="center"><? echo "<a href=\"managepostboard.php?post_id=$arr[post_id]&subject_id=$arr[subject_id]&del=1\" onclick=\"return confirmLink(this, ' ข้อมูล นี้ใช่หรือไม่ ?')\">";?> ลบ</a></td>
                      </tr>
                      <?}?>
                    </tbody>
                </table></td>
              </tr>
            </tbody>
          </table>
        <table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">
            <tbody>
              <tr>
                <td><br />
                    <?

				 $allpage = $rows / 20 ; 

				 if($allpage > "1"){
	for($a=0;$a<$allpage;$a++){
$nopage = $nopage + 1;
}
	echo "<strong>หน้าที่ $page/$nopage</strong>&nbsp;";
		   if($pfirst){
		  $g=$pfirst-9;

 $plast=$g-1;

	  if($g >=1){
echo"<a href='$PHP_SELF?page=$g&pfirst=$plast&subject_id=$HTTP_GET_VARS[subject_id]' class='Norlink'><<</a>";
         }
		   }
			
$a=0;
			 for($p=$pfirst;$p<$allpage;$p++){

				 $a=$a+1;

			 if(($a > 0)and($a < 11)){	 ?>
                  [&nbsp;<a href="<?=$PHP_SELF;?>?page=<?=$p+1?>&pfirst=<?=$pfirst;?>&subject_id=<?=$HTTP_GET_VARS[subject_id];?>" class="Norlink">
                    <?=$p+1?>
                    </a> &nbsp;]
                  <?}
		   if($a == 10){
		  $b=$p+2;
		  $pfirst=$p+1;
echo"<a href='$PHP_SELF?page=$b&pfirst=$pfirst&subject_id=$HTTP_GET_VARS[subject_id]' class='Norlink'>>></a>";
		 //  exit;
		   }

				 }

				 }

				 ?></td>
              </tr>
            </tbody>
      </table></td></tr>
</table>
<BR><BR></DIV></FORM></BODY></HTML><script type="text/javascript" language="javascript">
function confirmLink(theLink, theProduct)
{
    if (confirmMsg == '' || typeof(window.opera) != 'undefined') {
        return true;
    }

    var is_confirmed = confirm(confirmMsg + '\n' + theProduct);
    if (is_confirmed) {
        theLink.href += '&is_js_confirmed=1';
    }

    return is_confirmed;
} 
var confirmMsg  = ' <| ต้องการลบ |> ';
//-->
</script>