<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
if($HTTP_POST_VARS[Submit]){
$id=$HTTP_POST_VARS[subject_id];
$board_icq=$HTTP_POST_VARS[board_icq];
$nodoneseat= count(@$id);
if($nodoneseat > 0){
 for ($i = 0; $i < $nodoneseat; $i++) {
$id_no =  $id[$i];
$bb_type= $board_icq[$i];

$update = "update board_subject set board_icq='$bb_type'";
if($icons_name){
$update .= ",p_pics='$icons_name'";
}
$update .=" where subject_id='$id_no'";
DBexec($Dbs,$update);
 }
}
 Header("Location:managewebboard.php?page=$HTTP_POST_VARS[page]");
}
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
      class=font>&nbsp;&nbsp;&nbsp;</STRONG><strong>เว็บบอร์ด</strong></TD>
  </TR></TBODY></TABLE>
<HR>
<BR>
<table width="90%" border="0" align="center" cellpadding="0" cellspacing="0.">
  <tr>
    <td width="77%"><form name="form1" method="post" action=""  enctype="multipart/form-data">
          <br />
          <?
				
				
				if($HTTP_GET_VARS[del] == "1"){
				
				$delete = "delete from board_subject where subject_id='$HTTP_GET_VARS[subject_id]'";
				DBexec($Dbs,$delete);
				
				}
				
				
				?>
          <table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">
            <tbody>
            
            <tr>
              <td bgcolor="#e4e4e4"><table align="center" border="0" cellpadding="3" cellspacing="1" width="100%">
                <tbody>
                  <tr>
                    <td width="76%" align="center" bgcolor="#E4E4E4" class="font5"><strong>หัวข้อ</strong></td>
                    <!-- <td align="center" bgcolor="#e4e4e4" width="7%"><strong>Show</strong></td> -->
                    <td width="7%" align="center" bgcolor="#e4e4e4" class="font5"><strong>ลบ</strong></td>
                    <td width="9%" align="center" bgcolor="#e4e4e4" class="font5"><strong>แก้ไข</strong></td>
                  </tr>
                  <?
 $page=$HTTP_GET_VARS[page];
					$sql = "select * from board_subject order by subject_id  DESC";
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
                <input type="hidden" name="subject_id[]" value="<?=$arr[subject_id]?>">
                <tr bgcolor="<? echo $bg; ?>">
                  <td align="left" class="font7"><?=$arr[subject_name]?></td>
                  <!--	 <td align="center" bgcolor="#e4e4e4" width="7%"><SELECT NAME="board_icq[]">
						<option value="Y" <?if($arr[board_icq]=="Y"){ echo "selected";}?>>Yes</option>
						<option value="N" <?if($arr[board_icq]=="N"){ echo "selected";}?>>No</option></SELECT></td> -->
                  <td align="center" class="font7"><? echo "<a href=\"?subject_id=$arr[subject_id]&del=1\" onclick=\"return confirmLink(this, ' ข้อมูล นี้ใช่หรือไม่ ?')\">";?>ลบ</a></td>
                  <td align="center" class="font7"><a href="managepostboard.php?subject_id=<?=$arr[subject_id];?>">ลบคำตอบในกระทู้นี้</a></td>
                </tr>
                <?}?>
                </tbody>
                
              </table></td>
            </tr>
            <tr>
              <td colspan="2"><div align="center">&nbsp;
                    <!--<input type="submit" name="Submit" value="เพิ่มรายการ"> -->
                    <input type="hidden" name="page" value="<?=$page;?>">
              </div></td>
            </tr>
            </tbody>
            
          </table>
          <table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">
            <tbody>
              <tr>
                <td><br />
                    <?

				 $allpage = $rows / 20; 

				 if($allpage > "1"){

			echo "<strong>หน้าที่ $page </strong>&nbsp;";

				 for($p=0;$p<$allpage;$p++){

				 

				 ?>
                  [&nbsp;<a href="<?=$PHP_SELF;?>?page=<?=$p+1?>&p_id=<?=$arr[p_id];?>" class="LinkGray13">
                    <? 
							$nopage=$p+1;
							 if($page==$nopage){ echo "<b> $nopage</b>";}else{?>
                    <?=$p+1?>
                    <?}?>
                    </a> &nbsp;]
                  <?

				 }

				 }

				 ?></td>
              </tr>
            </tbody>
          </table>
        </form></td>
  </tr>
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