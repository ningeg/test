<? 
session_start();
require_once('../lib/config.php');
$Dbs=ConnectDB();

$category=$_REQUEST["category"];
$wysiwyg=$_REQUEST["wysiwyg"];
$imageurl=$_REQUEST["imageurl"];

if(trim($_REQUEST["action"])==""){
   $action="view";
}else{
   $action=$_REQUEST["action"];
}

?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>
<head>
<title>Upload popup</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link href="../style1.css" rel="stylesheet" type="text/css" />
<link href="../../css/Admin.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" media="all" href="demoStyles.css" />
		<link rel="stylesheet" type="text/css" media="all" href="jScrollPane.css" />
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.2.6/jquery.min.js
jquery-1.2.6.pack.js"></script>
		<script type="text/javascript" src="js/jquery.mousewheel.min.js"></script>
		<script type="text/javascript" src="js/jScrollPane.js"></script>
				<script type="text/javascript">
			
			$(function()
			{
				// this initialises the demo scollpanes on the page.
				$('#pane1').jScrollPane({showArrows:true, scrollbarWidth: 17});
				$('#pane2').jScrollPane({showArrows:true, scrollbarWidth: 15, arrowSize: 16});
				$('#pane3').jScrollPane();
+				$('#pane4').jScrollPane({scrollbarOnLeft:true});
			});
			
</script>

</head>
<script language="JavaScript" type="text/javascript">
var qsParm = new Array();
function retrieveWYSIWYG() {
  var query = window.location.search.substring(1);
  var parms = query.split('&');
  for (var i=0; i<parms.length; i++) {
    var pos = parms[i].indexOf('=');
    if (pos > 0) {
       var key = parms[i].substring(0,pos);
       var val = parms[i].substring(pos+1);
       qsParm[key] = val;
    }
  }
}
/* ---------------------------------------------------------------------- *\
  Function    : insertImage()
  Description : Inserts image into the WYSIWYG.
\* ---------------------------------------------------------------------- */
function insertImage() {
  var image = '<img src="' + document.getElementById('imageurl').value + '" alt="' + document.getElementById('alt').value + '" alignment="' + document.getElementById('alignment').value + '" border="' + document.getElementById('borderThickness').value + '" hspace="' + document.getElementById('horizontal').value + '" vspace="' + document.getElementById('vertical').value + '">';
  window.opener.insertHTML(image, qsParm['wysiwyg']);
  window.close();
}


/* ---------------------------------------------------------------------- *\
  Function    : insertFile()
  Description : Inserts image into the WYSIWYG.
\* ---------------------------------------------------------------------- */
function insertFile() {
  var image = '<a href="' + document.getElementById('imageurl').value + '" >Download';
  window.opener.insertHTML(image, qsParm['wysiwyg']);
  window.close();
}


</script>

<body bgcolor="#EEEEEE" marginwidth="0" marginheight="0" topmargin="0" leftmargin="0" onLoad="retrieveWYSIWYG();">


<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
  <td width="451">
<span class="app-normal-black15" style="font-family: arial, verdana, helvetica; font-size: 11px; font-weight: bold;">แทรกรูปภาพ:</span>
<table width="100%" border="0" cellpadding="0" cellspacing="0" style="background-color: #F7F7F7; border: 2px solid #FFFFFF; padding: 5px;">
 <tr>
   <td width="80" nowrap class="app-normal-black15" style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;">Image URL:</td>
   <td width="584" class="app-normal-black15" style="padding-bottom: 2px; padding-top: 0px;"><span class="app-normal-black15" style="padding-bottom: 2px; padding-top: 0px;">
     <? 
   if($filesize<>"") { echo("<input type='hidden' name='imageurl' value=$url_link_img>"); } 
   if($filesize=="") { echo("<input type='text' name='imageurl' id='imageurl' value='' style='font-size: 10px; width: 500px;' READONLY >"); } 
   ?>
   </span></td>
 </tr>
 <tr>
  <td class="app-normal-black15" style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;">บรรยายรูป:</td>
	<td class="app-normal-black15" style="padding-bottom: 2px; padding-top: 0px;">
	<input type="text" name="alt" id="alt" value=""  style="font-size: 10px; width: 500px;"></td>
 </tr>
 <tr>
   <td colspan="2" class="app-normal-black15" style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;"><table width="100%" border="0" cellspacing="0" cellpadding="0">
     <tr>
       <td width="17%" align="right" style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;">เลือกกลุ่มรูปภาพ : </td>
       <td width="83%">
	   
<select name="Group_Product" class="ComboBoxScrollData" onChange="location.href=this.options[this.selectedIndex].value">
    <option value=""  <? if($category==""){?> selected<? }?>>Select image group</option>
    <option value="insert_image.php?category=General&action=view&wysiwyg=<?=$wysiwyg?>"  <? if($category=="General"){?>selected <? }?>>General</option>
	<option value="insert_image.php?category=Activity&action=view&wysiwyg=<?=$wysiwyg?>"   <? if($category=="Activity"){?> selected<? }?>>Activity</option>	
	<option value="insert_image.php?category=Other&action=view&wysiwyg=<?=$wysiwyg?>"   <? if($category=="Other"){?> selected<? }?>>Other</option>	
	<option value="insert_image.php?category=Files&action=view&wysiwyg=<?=$wysiwyg?>"   <? if($category=="Files"){?> selected<? }?>>Files</option>	
</select>	   
	   
	   </td>
     </tr>
   </table></td>
   </tr>
 <tr>
   <td colspan="2" class="app-normal-black15" style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;" height="3"></td>
   </tr>
 <tr>
   <td colspan="2" class="app-normal-black15" style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;" >
   
   <table width="100%" border="0" cellspacing="0" cellpadding="0"  style="background-color: #F7F7F7; border: 2px solid #FFFFFF; padding: 5px;">
     <tr>
       <td height="100" valign="top">
	   
	   <div class="holder">
			<div id="pane3" class="scroll-pane">
<?
        if(trim($category)!=""){
                switch($action){
				     case "view":
					      MakeView();
					 break;
					 case "upload";
					      MakeUpload();
					 break;
				     case "delete";
					      MakeDelete();
					 break;
				}
		  }
		  
?>
			</div>
		</div>
	   
	   </td>
     </tr>
   </table>   </td>
   </tr>
   <form action="insert_image.php" method="post" enctype="multipart/form-data" name="form1" class="TableObjectColorBlack">
 <tr>
   <td colspan="2" class="app-normal-black15" style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;" ><span class="app-normal-black15" style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;">
     <input name="file" type="file" style="height:20px; font-size:12px;" size="50">
	 <input name="wysiwyg" type="hidden" value="home">
	 <input name="action" type="hidden" value="upload">
	 <input name="category" type="hidden" value="<?=$category?>">
   </span>
     <input name="submit" id="submit" type="submit" value="Upload" style="height:20px; font-size:12px;"></td>
   </tr>
 </form> 
</table>
<table width="100%" border="0" cellpadding="0" cellspacing="0" style="margin-top: 10px;">
  <tr>
  <td  class="app-normal-black15">
<span style="font-family: arial, verdana, helvetica; font-size: 11px; font-weight: bold;">การจัดวางภาพ:</span>
<table border="0" cellpadding="0" cellspacing="0" style="background-color: #F7F7F7; border: 2px solid #FFFFFF; padding: 5px;">
 <tr>
  <td style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;" width="74">ตำแหน่งรูป:</td>
	<td style="padding-bottom: 2px; padding-top: 0px;" width="107">
	<select name="alignment" id="alignment" style="font-family: arial, verdana, helvetica; font-size: 11px; width: 100%;">
	 <option value="">Not Set</option>
	 <option value="left">Left</option>
	 <option value="right">Right</option>
	 <option value="texttop">Texttop</option>
	 <option value="absmiddle">Absmiddle</option>
	 <option value="baseline">Baseline</option>
	 <option value="absbottom">Absbottom</option>
	 <option value="bottom">Bottom</option>
	 <option value="middle">Middle</option>
	 <option value="top">Top</option>
	</select>	</td>
 </tr>
 <tr>
  <td style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;">เส้นขอบ:</td>
	<td style="padding-bottom: 2px; padding-top: 0px;"><input type="text" name="borderThickness" id="borderThickness" value=""  style="font-size: 10px; width: 100%;"></td>
 </tr>
</table></td>
<td width="10" class="app-normal-black15">&nbsp;</td>
<td width="204" class="app-normal-black15">
<span style="font-family: arial, verdana, helvetica; font-size: 11px; font-weight: bold;">ระยะห่างของภาพ:</span>
<table width="205" border="0" cellpadding="0" cellspacing="0" style="background-color: #F7F7F7; border: 2px solid #FFFFFF; padding: 5px;">
 <tr>
  <td style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;" width="104">ระยะห่างแนวนอน:</td>
	<td style="padding-bottom: 2px; padding-top: 0px;" width="96"><input type="text" name="horizontal" id="horizontal" value=""  style="font-size: 10px; width: 100%;"></td>
 </tr>
 <tr>
  <td style="padding-bottom: 2px; padding-top: 0px; font-family: arial, verdana, helvetica; font-size: 11px;">ระยะห่างแนวตั้ง:</td>
	<td style="padding-bottom: 2px; padding-top: 0px;"><input type="text" name="vertical" id="vertical" value=""  style="font-size: 10px; width: 100%;"></td>
 </tr>
</table></td></tr></table>
<div align="right" style="padding-top: 5px;">
  <div align="center">
    <input name="submit" type="submit" style="font-size: 12px;" onClick="insertImage();" value="แทรกรูป" >
        <input name="submit" type="submit" style="font-size: 12px;" onClick="insertFile();" value="แทรกไฟล์" >

    &nbsp;
  <input type="submit" value="  ปิด  " onClick="window.close();" style="font-size: 12px;" >
  </div>
</div></tr><td height="2"></td></table>



<?
function MakeUpload(){
     global $wysiwyg,$dbname,$file,$category;
	 $wysiwyg=$_REQUEST["wysiwyg"];
     
	 
	 	$fileaccep_types=array("image/gif","image/jpg","image/pjpeg","image/jpeg","text/html","application/zip","application/msword","application/vnd.openxmlformats-officedocument.wordprocessingml.document","application/pdf","application/x-rar");	
    
	    if($_FILES["file"]["name"]!=""){
		   $filearrtype=$_FILES["file"]["type"];
	       if(!in_array($filearrtype,$fileaccep_types)){
		   		echo "<br><br><br><br><br>
				<table width='100%' border='0' cellspacing='0' cellpadding='0'>
							  <tr>
								<td align='center'>
								<font color=#333333>
								รูปภาพต้องเป็นประเภท *.gif,*.jpeg,*.jpg เท่านั้น   
								</font>
								</td>
							  </tr>
							</table>";	
		
	   
	   echo "<meta http-equiv=\"refresh\" content=\"1;url=insert_image.php?action=view&wysiwyg=$wysiwyg&category=$category\">";
	  exit;    
	       } 
		}
	
	
  $path_image="../../upload/";
  $codeadd=date("ymdhis").rand(000,999);
  $mainquery=""; 
  $mainqueryValue="";
  require_once('../lib/SimpleImage.php');
 
     if($_FILES["file"]["name"]!=""){
       //===
	    $imgid=date("ymdhis").rand(000,999); 
					//===resize S B
					
					
	                $imgB=MakeImageName_insert($_FILES["file"]["type"],$imgid,"MNB");
				    $imgS=MakeImageName_insert($_FILES["file"]["type"],$imgid,$_FILES["file"]["name"]);
				    $imgT=MakeImageName_insert($_FILES["file"]["type"]);
				   
				     $imgBPathImg=$path_image.$imgB;
					 $imgSPathImg=$path_image.$imgS;
					//echo $bigPathImg."  :  ".$smallPathImg;
					
					
					if(!copy($_FILES["file"]["tmp_name"],$imgBPathImg)){
					   echo "<br><br><br><br><br>
							   <table width='100%' border='0' cellspacing='0' cellpadding='0'>
													  <tr>
														<td align='center'>
														<font color=#FF0000>
														Error Upload<br>   
														</font>                            
														</td>
													  </tr>
													</table>";
     echo "<meta http-equiv=\"refresh\" content=\"2;url=insert_image.php?action=view&wysiwyg=$wysiwyg&category=$category\">";   
						exit;					
					}

					
	list($width, $height, $type, $attr) = getimagesize($_FILES["file"]["tmp_name"]);
					if($width>130){
					//===resize S
					   $image = new SimpleImage();
					   $image->load($imgBPathImg);
					   //$image->resize(163,72);
					   $image->resizeToWidth(130);
					   $image->save($imgSPathImg);
					//===endresize S
					}else{
					    $image = new SimpleImage();
					   $image->load($imgBPathImg);
					   //$image->resize(163,72);
					   $image->resizeToWidth($width,$height);
					   $image->save($imgSPathImg);
					}
					
					
	   
	               
	   //====
      // $insertIMG=MakeImageName_insert($_FILES["file"]["type"],$imgid,"IMG");
	   $mainquery="`img_s` ,`img_b`,`img_t` ";
	   $mainqueryValue="'$imgS','$imgB','$imgT' "; 
	   
	   $SQL="INSERT INTO `image_editor` (
                `id` ,
				`category` ,
				$mainquery
				)
				VALUES (
				NULL , 
			    '$category' , 
				$mainqueryValue
				)
				";	
  //echo $SQL;			   
       $result=DBexec($Dbs,$SQL);
	}
	
	 if($_FILES["file"]["type"]=="application/zip"){ $type="zip";} elseif 
	 ($_FILES["file"]["type"]=="application/msword"){ $type="doc";} elseif 
	 ($_FILES["file"]["type"]=="application/vnd.openxmlformats-officedocument.wordprocessingml.document"){ $type="docx";} elseif 
	 ($_FILES["file"]["type"]=="application/pdf"){ $type="pdf";} elseif 
	 ($_FILES["file"]["type"]=="application/x-rar"){ $type="rar";} 
	  else { $type="jpg"; }

     echo "<meta http-equiv=\"refresh\" content=\"2;url=insert_image.php?action=view&wysiwyg=$wysiwyg&category=$category\">";   

	
	
	


}// function
?>






<?
function MakeImageName_insert($filetype,$ID,$imageType){
      global $CONN,$dbName,$strMath;	  
	  $HTMLImgName="";
	  switch(trim($filetype)){
		case "image/pjpeg":
			$HTMLImgName=trim($ID."_".$imageType).".jpg";   
		break;
		case "image/jpeg":
			$HTMLImgName=trim($ID."_".$imageType).".jpg";   
		break;
		case "image/jpg":
			$HTMLImgName=trim($ID."_".$imageType).".jpg";   
		break;
		case "image/x-png":
			$HTMLImgName=trim($ID."_".$imageType).".png";    
		break;
		case "image/png":
			$HTMLImgName=trim($ID."_".$imageType).".png";    
		break;
		case "image/gif":
			$HTMLImgName=trim($ID."_".$imageType).".gif";    
		break;
		case "application/zip":
			$HTMLImgName=trim($ID."_".$imageType).".zip";    
		break;
		case "application/msword":
			$HTMLImgName=trim($ID."_".$imageType).".doc";    
		break;
		case "application/vnd.openxmlformats-officedocument.wordprocessingml.document":
			$HTMLImgName=trim($ID."_".$imageType).".docx";    
		break;
		case "application/pdf":
			$HTMLImgName=trim($ID."_".$imageType).".pdf";    
		break;
		case "application/x-rar":
			$HTMLImgName=trim($ID."_".$imageType).".rar";    
		break;
	
	}
	 return $HTMLImgName;		
}
?>

<?
function MakeView(){
            global $wysiwyg,$dbname,$ImageLoadEditorPath,$category;
			
			$wysiwyg=$_REQUEST["wysiwyg"];
			loadThaiUTF8();
            $sql="SELECT * 
				  FROM  image_editor
				  WHERE  category='$category'		
				  ORDER BY id DESC
					  ";
			$result=DBexec($Dbs,$sql);
           $rows=mysql_num_rows($result);    
					  
?>		
<div style="width:433px; height:200px;  overflow:auto; ">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<? if($rows  > 0){   ?>	

  <tr>
    <td>
	
<table width="100%" height="150" border="0" cellpadding="1" cellspacing="1" class="TableDetail">
  <tr>
  
<?
if($page == "") $page = 1 ; 
                    $j=0;
                    $showpage=40; 
					$end = $page * $showpage; 
					$st = $end - $showpage; 
					
if($end > $rows ) $end = $rows ;
  if($rows>0){
	for($i=$st;$i<$end;$i++){
			$arr = DBfetch_array($result,$i);
			//if($bg =="#FFCC99"){ $bg = "#FFFFCC" ; }else{ $bg = "#FFCC99"; }

?>	 
  
  
<? 
                  
				  $portid=$arr["id"];
				  $code=$arr["code"];
				  $img_s=$arr["img_s"];
				  $img_b=$arr["img_b"];
				  $img_t=$arr["img_t"];
				  $ImageLoadEditorPath="../../upload/";
?>
		
    <td colspan="2" align="left"><table border="0" align="left" cellpadding="2" cellspacing="2" class="TableDetail" >
      <tr>
        <td align="center">
		<? 
		
		if($img_t=="_.zip" or $img_t=="_.doc" or $img_t=="_.docx"or $img_t=="_.pdf" or $img_t=="_.rar"){ 
		$img_s=substr($img_s,16,-4);
		echo "<div onClick=MakeGetInsertImage('$ImageLoadEditorPath','$img_b') onmouseover='' style='cursor: pointer;')>
		$img_s
		</div>
		";}else{ echo "<img src=../../upload/$img_s border=1 onClick=MakeGetInsertImage('$ImageLoadEditorPath','$img_b') onmouseover='' style='cursor: pointer;') />";}
		 ?></td>
      </tr>
      <tr>
        <td align="center"><img src="../images/delete_f2.png" width="19" height="19" style="cursor:pointer" onClick="return Makedelet('<?=$arr["id"]?>','<?=$wysiwyg?>','<?=$category?>');" title="DELETE ..."></td>
      </tr>
    </table>
        <?  
		     $x++;
		      if($x=="2"){
	              $x=0;
	  	           echo "</tr><tr><td height='3' colspan='2'></td></tr><tr>";
	           }
			 $j++;
		  }
		  
?>    </td>
<?
  }
?>
  </tr>
</table>	</td>
  </tr>
  <tr>
    <td>
	
<?
 $allpage = $rows / $showpage; 
 if($allpage > "1"){
	for($a=0;$a<$allpage;$a++){
$nopage = $nopage + 1;
}
	echo "<strong><font color='#FFFFFF'>หน้า $page/$nopage</font></strong>&nbsp;";
		   if($pfirst){
		  $g=$pfirst-9;

 $plast=$g-1;

	  if($g >=1){
echo"<a href='index.php?action=view&page=$g&pfirst=&category=$category&wysiwyg=$wysiwyg' ><<</a>";
//echo "<a href='#' onclick='LoadViewPageGallery('view','$g','$plast');'> ";
         }
		   }
			
$a=0;
			 for($p=$pfirst;$p<$allpage;$p++){
				 $a=$a+1;
				 ?>
				[<a href="index.php?action=view&page=<?=$p+1?>&pfirst=<?=$pfirst;?>&category=<?=$category?>&wysiwyg=<?=$wysiwyg?>" > 
                                 <?=$p+1?>
              </a> ]
                 <?
		   if($a == 10){    //?????????????????????????? 10
		  $b=$p+2;
		  $pfirst=$p+1;
echo"<a href='index.php?action=view&page=$b&pfirst=$pfirst&category=$category&wysiwyg=$wysiwyg' >>></a>";
//echo "<a href='#' onclick='LoadViewPageGallery('view','$b','$plast');'> ";
		break;
		   }

	 }

	 }
?>	
	
	
	
	
	</td>
  </tr>
  
<?
}
?>  
</table>
</div>
<script type="text/javascript">

function MakeGetInsertImage(url,ImageToLoad){
   var objimageurl=document.getElementById("imageurl");
   objimageurl.value=url+ImageToLoad;
}
function Makedelet(id,wysiwyg,category){
	if(confirm('ยืนยันลบข้อมูล...?')){
	    window.location.href='insert_image.php?category='+category+'&action=delete&id='+id+'&wysiwyg='+wysiwyg; 
	}else{
	   return false;
	}
}
</script>

<?			  
}//function
?>



<?
function MakeDelete(){
   global $dbname,$id,$wysiwyg,$category;
   
   $path_image="../../upload/";
   $wysiwyg=$_REQUEST["wysiwyg"];
   $id=$_REQUEST["id"];
   
            loadThaiUTF8();
            $sql="SELECT * 
				  FROM  image_editor
				  WHERE id='$id'
					  ";
			$result=DBexec($Dbs,$sql);
            $rows=mysql_num_rows($result);   
			
			$drr = DBfetch_array($result,0);
			if(trim($drr["img_s"])!=""){
			  $dels=$path_image.$drr["img_s"];
			  if(file_exists($dels)){
			    unlink($dels);
			  }
			}
			if(trim($drr["img_b"])!=""){
			  $delb=$path_image.$drr["img_b"];
			  if(file_exists($delb)){
			    unlink($delb);
			  }
			}
			if(trim($drr["img_t"])!=""){
			  $delb=$path_image.$drr["img_t"];
			  if(file_exists($delb)){
			    unlink($delb);
			  }
			}

			$sql="DELETE FROM `image_editor` WHERE `id`='$id' ";
            $result=DBexec($Dbs,$sql);
			
			     echo "<meta http-equiv=\"refresh\" content=\"0;url=insert_image.php?action=view&wysiwyg=$wysiwyg&category=$category\">";   

}//function
?>



</body>
</html>
