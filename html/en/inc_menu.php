<script type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>
<body onLoad="MM_preloadImages('../images/btn1_.jpg','../images/btn2_.jpg','../images/btn3_.jpg','../images/btn4_.jpg','../images/flag_eng_.jpg','../images/flag_thai_.jpg','../images/btn5_.jpg','images/btn_staff_.jpg')"><table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/tab.jpg" width="389" height="50" /></td>
    <td><a href="../backend/index.php" target="_blank" onMouseOver="MM_swapImage('Image5','','images/btn_staff_.jpg',1)" onMouseOut="MM_swapImgRestore()"><img src="images/btn_staff.jpg" alt="Staff Login" name="Image5" width="125" height="50" border="0"></a></td>
    <td><img src="images/select_language.jpg" /></td>
    <td><a href="index.php?news_id=00056" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image7','','../images/flag_eng_.jpg',1)"><img src="../images/flag_eng.jpg" alt="English" name="Image7" width="29" height="50" border="0" id="Image7" /></a></td>
    <td><a href="../index.php?news_id=00056" onMouseOut="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image8','','../images/flag_thai_.jpg',1)"><img src="../images/flag_thai.jpg" alt="Thai" name="Image8" width="55" height="50" border="0" id="Image8" /></a></td>
  </tr>
</table>
