<?
include("../FCKeditor/fckeditor.php") ;
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
$picture1 = $HTTP_POST_FILES['picture1']['tmp_name'];
$picture1_name = $HTTP_POST_FILES['picture1']['name'];
$picture2 = $HTTP_POST_FILES['picture2']['tmp_name'];
$picture2_name = $HTTP_POST_FILES['picture2']['name'];
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
		 $fun=ImageJPEG($im,$ddb,75); //output ($im,to file $ddb, with optimize 75%)
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
		 $full=ImageJPEG($ksc,$src,75);    //output ($im,to file $ddb, with optimize 75%)
		 imagedestroy($ksc);
 } //endif gif type
		  $picture1name = $time.".".$picture1_name;
}

if($HTTP_POST_VARS[Submit]){
$insert = "insert into newscenter21 set title_eng='$HTTP_POST_VARS[title_eng]',title_th='$HTTP_POST_VARS[title_th]',details_eng='$HTTP_POST_VARS[details_eng]',details_th='$HTTP_POST_VARS[details_th]',pic_s='$thumb1_name',pic_b='$picture1name',file_name='$HTTP_POST_VARS[file_name]',file_down='$picture2_name',ddpost='".date("YmdHis")."'";
DBexec($Dbs,$insert);
Header("Location:managenews21.php");
}
if($HTTP_POST_VARS[Update]){
$update = "update newscenter21 set title_eng='$HTTP_POST_VARS[title_eng]',title_th='$HTTP_POST_VARS[title_th]',details_eng='$HTTP_POST_VARS[details_eng]',details_th='$HTTP_POST_VARS[details_th]'";
if($picture1name){
$update .=",pic_s='$thumb1_name',pic_b='$picture1name'";
} 
if($picture2_name){
$update .=",file_name='$HTTP_POST_VARS[file_name]',file_down='$picture2_name'";
}
$update .= " where news_id='$HTTP_POST_VARS[news_id]'";
DBexec($Dbs,$update);
 Header("Location:managenews21.php");
}
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=windows-874">
<LINK 
href="css.css" type=text/css  rel=stylesheet>
<script language="javascript" src="../ckeditor/ckeditor.js" type="text/javascript"></script>

<META content="MSHTML 6.00.2900.2180" name=GENERATOR></HEAD>
<BODY bgColor=#f4f4f4 leftMargin=0 topMargin=0>
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cccccc><STRONG 
      class=font>&nbsp;&nbsp;&nbsp;เพิ่มรายการสารจากสมคร</STRONG></TD>
  </TR></TBODY></TABLE>
<form name="form1" action="" method="post" enctype="multipart/form-data">
<?
			if($HTTP_GET_VARS[news_id]){
			$sql = "select * from newscenter21  where  news_id='$HTTP_GET_VARS[news_id]'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
	}
			  ?>
<TABLE cellSpacing=3 cellPadding=3 width=864 align=center border=0>
  <TBODY>
  <TR>
    <TD width="79" align="right" class=font>
    <span lang="th">หัวข้อข่าว : </span></TD>
    <TD width="764" align="right"><input id=title_th size=62 name=title_th value="<?=$arr[title_th];?>"  class="inputBox" style="width: 760px;"></TD></TR>
  <TR>
    <TD colspan="2" align="left" class=font>
     <p align="center">รายละเอียด</TD>
    </TR>
      <TR>
    <TD colspan="2" align="left" class=font>
   
     <?php
	 
/*	  <textarea cols="80" id="details_th" name="details_th" rows="10"><? echo $arr[details_th]; ?></textarea>
    <script>
	CKEDITOR.replace('details_th', {
		height: 300
	}	);
	</script>*/
	
$oFCKeditor = new FCKeditor('details_th') ;
$oFCKeditor->BasePath = '../FCKeditor/';
$oFCKeditor->Width  = '100%' ;
$oFCKeditor->Height = '400' ;
$oFCKeditor->Value = $arr[details_th];
$oFCKeditor->Create() ;  ?>
</TD>
    </TR>
      <TR>
    <TD align="left" class="font">
      <div align=right><span lang="th">Title (Eng) :</span> </div></TD>
    <TD align="right"><INPUT id="title_eng" name="title_eng" value="<?=$arr[title_eng];?>"  class="inputBox" style="width: 760px;"></TD></TR>
  <TR>
    <TD colspan="2" align="left" class=font>
     <p align="center">Details (Eng)</TD>
    </TR>
      <TR>
    <TD class=font colspan="2">
    
     <?php
	 /* <textarea cols="80" id="details_eng" name="details_eng" rows="10"><? echo  $arr[details_eng]; ?></textarea>
    <script>
	CKEDITOR.replace('details_eng', {
		height: 300
	}	);
	</script>*/
$oFCKeditor = new FCKeditor('details_eng') ;
$oFCKeditor->BasePath = '../FCKeditor/';
$oFCKeditor->Width  = '100%' ;
$oFCKeditor->Height = '400' ;
$oFCKeditor->Value = $arr[details_eng];
$oFCKeditor->Create() ; 
?></TD>
    </TR>
    

  <TR>
    <TD class=font>
      <DIV align=right>ภาพข่าว : </DIV></TD>
    <TD class=font><INPUT id=picture1 size=12 name=picture1  type="file"  class="inputBox">( 
	.jpg Only )<br><?if($arr[pic_s]){?><img  alt="  Search" hspace=5 
                  src="../picnews/thumb/<?=$arr[pic_s];?>" 
                align=left border=1><? }?>
   
</TD>
    </TR>

  <TR>
    <!--<TD class=font>
      <DIV align=right><span lang="th">ชื่อไฟล์ดาวน์โหลด</span> : </DIV></TD>
    <TD><INPUT id=file_name size=62 name=file_name value="< ?=$arr[file_name];?>"  class="inputBox"></TD> --></TR>

<TR>
    <!--<TD class=font>
      <DIV align=right>ไฟล์ดาวน์โหลด : </DIV></TD>
    <TD class=font><INPUT id=picture2 size=12 name=picture2  type="file"  class="inputBox"><br><?if($arr[file_down]){?><a href="../picnews/thumb/< ?=$arr[file_down];?>" 
               target="_bank">< ?=$arr[file_name];?></a><? }?>
   
</TD> -->
    </TR>
  <TR>
    <TD class=font>&nbsp;</TD>
    <TD><? if($HTTP_GET_VARS[edit]){?>
	<input type="hidden" name="news_id" value="<?=$arr[news_id];?>">
	<input type="hidden" name="Update" value="Update">
	<INPUT type=submit value="   บันทึกข้อมูล   " name=Update><?}else{?>
	<input type="hidden" name="Submit" value="Submit">
	<INPUT type=submit value="   บันทึกข้อมูล   " name=Submit><? }?>
      &nbsp; 
<INPUT type=reset value="   ยกเลิก   " name=Submit2></TD></TR></TBODY></TABLE></FORM>
<DIV align=center>

</DIV></TD></TR></TBODY></TABLE><BR><BR></DIV></FORM></BODY></HTML>