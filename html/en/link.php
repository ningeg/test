<?
$sql  = "select  * from  link_tb   order by c_position  asc limit 100";
$res = DBexec($Dbs,$sql);
$rows = DBNumrows($res);
for($i=0;$i<$rows;$i++){
$arr = DBfetch_array($res,$i);
						?>
<link href="../style_tran.css" rel="stylesheet" type="text/css" />

<table width="100" border="0" align="center" cellpadding="0" cellspacing="3" class="borrr2">
  
  <tr>
    <td align="center"><?if($arr[l_logo]){?>
        <a href="<?=$arr[l_url]?>" target="_blank"><img src="../picnews/thumb/<?=$arr[l_logo];?>" alt="<?=$arr[l_name]?>"  width="120" border="0" /></a><?}?></td>
  </tr>           	
</table>
<br /><? }?> 