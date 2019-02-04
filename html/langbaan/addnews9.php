<?
include("../FCKeditor/fckeditor.php") ;
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
$picture1 = $_FILES['picture1']['tmp_name'];
$picture1_name = $_FILES['picture1']['name'];
$picture2 = $_FILES['picture2']['tmp_name'];
$picture2_name = $_FILES['picture2']['name'];
if($picture2!="")
{
 $ddt2="../picnews/thumb/${picture2_name}";
  copy($picture2 , "$ddt2");

}

		if($picture1!="")
{
 $time = time();
		 $ddt="../picnews/thumb/s_$time.${picture1_name}";
		 $ddb="../picnews/full/$time.$picture1_name"; //path to picture folder
		 $thumb1_name = "s_".$time.".".$picture1_name;
		  if($picture1_type=="image/gif"){
		 copy($picture1 , "$ddb");
		 copy($picture1 , "$ddt");
		 }else{
		 copy($picture1 , "$ddb");

		 $im = imagecreatefromjpeg($ddb);
		 $white=imagecolorallocate($im,255,255,255);
		 $fun=ImageJPEG($im,$ddb,100); //output ($im,to file $ddb, with optimize 75%)
		 imagedestroy($im);

       //this is for resize
		 copy($picture1 , "$ddt");

		 $size = GetImageSize ("$ddt");
		 $prop=$size[0]/$size[1];
		 if($size[0]<$size[1]){  //if width less than height
		  $h=100;      //fix height = 110 pixels
		  $w=100*$prop;    //width adjust to height
		 }else{
		  $w=100;      //if width more than height. fix width = 110 pixels
		  $h=100/$prop;
		 }
		 $ow=$size[0];    //old width
		 $oh=$size[1];    //old height
		 SetType($h,     'integer');
		 SetType($w,     'integer');
		 $src = $ddt;
		 $tmp = imagecreatefromjpeg($src);  //get image from thumbnail folder
		 $ksc=imagecreatetruecolor($w,$h);  //create new true color image
		 imagecopyresampled($ksc,$tmp,0,0,0,0,$w,$h,$ow,$oh);
		 $full=ImageJPEG($ksc,$src,100);    //output ($im,to file $ddb, with optimize 75%)
		 imagedestroy($ksc);
 } //endif gif type
		  $picture1name = $time.".".$picture1_name;
}

if($_POST[Submit]){
$insert = "insert into newscenter9 set title_eng='$_POST[title_eng]',title_th='$_POST[title_th]',details_eng='$_POST[details_eng]',details_th='$_POST[details_th]',pic_s='$thumb1_name',pic_b='$picture1name',file_name='$_POST[file_name]',file_down='$picture2_name',ddpost='".date("YmdHis")."'";
DBexec($Dbs,$insert);
Header("Location:addnews9.php?news_id=$_POST[news_id]&edit=1");
}
if($_POST[Update]&&$_POST[details_th]!=""){
$update = "update newscenter9 set title_eng='$_POST[title_eng]',title_th='$_POST[title_th]',details_eng='$_POST[details_eng]',details_th='$_POST[details_th]'";
if($picture1name){
$update .=",pic_s='$thumb1_name',pic_b='$picture1name'";
} 
if($picture2_name){
$update .=",file_name='$_POST[file_name]',file_down='$picture2_name'";
}
$update .= " where news_id='$_POST[news_id]'";
DBexec($Dbs,$update);
Header("Location:addnews9.php?news_id=$_POST[news_id]&edit=1");
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=windows-874">
<LINK 
href="css.css" type=text/css 
rel=stylesheet>
<script type="text/javascript" src="wysiwyg.js"></script>

<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
<BODY bgColor=#f4f4f4 leftMargin=0 topMargin=0>
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cccccc><STRONG 
      class=font>&nbsp;&nbsp;&nbsp;เพิ่ม</STRONG></TD>
  </TR></TBODY></TABLE>
<FORM name=form1 action="" method=post enctype="multipart/form-data">
<?
			if($_GET[news_id]){
			$sql = "select * from newscenter9  where  news_id='$_GET[news_id]'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
	}
			  ?>
<TABLE cellSpacing=3 cellPadding=3 width=90% align=center border=0>
  <TBODY>
    <TR>
      <TD class=font><DIV align=right><span lang="th">หัวข้อข่าว</span> : </DIV></TD>
      <TD><INPUT id=title_th size=62 name=title_th value="<?=$arr[title_th];?>"  class="inputBox">
      <a href="http://www.transplantthai.org/langban/howToUploadPic.jpg" target="_blank">การใส่รูปภาพ</a></TD></TR>
    </TR>
    <TR>
      <TD class=font colspan="2"><p align="center">รายละเอียด</TD>
    </TR>
    <TR>
      <TD class=font colspan="2">
                 <textarea name="details_th" cols="50" rows="5" class="textStyle_3" id="details_th" style="height: 100px; width: 350px;">
		  <?=$arr['details_th']?>
      </textarea>
      <script language="JavaScript1.2" type="text/javascript">generate_wysiwyg('details_th','800','430');</script> 

      <!--
      <textarea name="textarea" cols="100" rows="5"><?=$arr[details_th];?>
      </textarea>     
      -->   <?php
	  /*
$oFCKeditor = new FCKeditor('details_th') ;
$oFCKeditor->BasePath = '../FCKeditor/';
$oFCKeditor->Width  = '100%' ;
$oFCKeditor->Height = '400' ;
$oFCKeditor->Value = $arr[details_th];
$oFCKeditor->Create() ;
*/
?></TD>
    </TR>
    <?if($edit){
 for ($i = 1; $i <=10; $i++) {?>
    <TR>
      <TD class=font><DIV align=right>ภาพข่าวเพิ่มเติม
              <?=$i;?>
        : </DIV></TD>
      <TD class=font><INPUT id=picturea size=12 name="picturea[]"  type="file"  class="inputBox">
        ( 
        .jpg Only )600*400px </TD>
    </TR>
    <?
 }
}?>
    <TR>
      <TD class=font>&nbsp;</TD>
      <TD><?if($_GET[edit]){?>
        <input type="hidden" name="news_id" value="<?=$arr[news_id];?>">
        <input type="hidden" name="Update" value="Update">
        <INPUT type=submit value="   บันทึกข้อมูล   " name=Update>
        <?}else{?>
        <input type="hidden" name="Submit" value="Submit">
        <INPUT type=submit value="   บันทึกข้อมูล   " name=Submit>
        <? }?>
        &nbsp;
        <INPUT type=reset value="   ยกเลิก   " name=Submit2></TD>
    </TR>
  </TBODY>
</TABLE>
</FORM>
<DIV align=center>
  <TABLE>
    <?$sql2 = "select * from newspic_tb where news_id='$arr[news_id]' order by pic_id desc";
							  $res2= DBexec($Dbs,$sql2);
							  $rows2= DBNumrows($res2);
			echo "<tr>\n";
$td = 0;
							  for($i2=0;$i2<$rows2;$i2++){
							  $arr2 = DBfetch_array($res2,$i2);
			?>
    <? if($arr2[pic_s]){?>
    <input type="hidden" name="pic_id[]" value="<?=$arr2[pic_id]?>">
    <td><img src="../picnews/thumb/<?=$arr2[pic_s];?>"  width="120" height="70"><br>
            <? echo "<a href=\"?news_id=$arr[news_id]&pic_id=$arr2[pic_id]&del_pic=1\" onclick=\"return confirmLink(this, ' ต้องการลบภาพนี้ใช่หรือไม่ ?')\">";?><b><font face="MS Sans Serif, Microsoft Sans Serif" size="1" color="#FF3300">ลบภาพนี้</font></b></a> </td>
        <? 
			} 
      $td = $td +1;
			if ($td == 4) {
				echo "</tr>\n";

				echo "<tr>\n";
				$td = 0;
			}	
} //end looping result loop

if ($td != 0) { echo "</tr>\n\n"; } //close tr 

?>
  </TABLE>
</DIV>
</TD></TR></TBODY></TABLE><BR><BR></DIV></FORM></BODY></HTML>