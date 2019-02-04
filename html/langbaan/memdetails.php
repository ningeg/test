<?
include("DBEngine_onhost.php");
$Dbs=ConnectDB();
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=Content-Type content="text/html; charset=windows-874"><LINK 
href="../style_icrcc.css" type=text/css 
rel=stylesheet>

<META content="Microsoft FrontPage 5.0" name=GENERATOR></HEAD>
<BODY bgColor=#f4f4f4 leftMargin=0 topMargin=0>
<TABLE cellSpacing=2 cellPadding=2 width="100%" border=0>
  <TBODY>
  <TR>
    <TD bgColor=#cccccc><STRONG 
      class=font>&nbsp;&nbsp;&nbsp;เพิ่มผู้เข้าใช้งาน</STRONG></TD></TR></TBODY></TABLE>
<FORM name=form1 action="savestaff.php" method=post>
<?
$mem_id=$HTTP_GET_VARS[mem_id];
			if($mem_id){
			$sql = "select * from member where  mem_id='$mem_id'";
			  $res =  DBexec($Dbs,$sql);
			  $rows = DBNumrows($res);
			  $arr = DBfetch_array($res,0);
	}
			  ?>
<TABLE cellSpacing=3 cellPadding=3 width=600 align=center border=0>
  <TBODY>
   <tr>
                                      <td align="center" class="Topic">&nbsp;</td>
                                      <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                      <td align="right" class="NorTxtGray"><span class="style1">* </span>Username : </td>
                                      <td>
                                      <input name="username" type="text" size="20" value="<?=$arr[username];?>"></td>
                                    </tr>
                                    <tr>
                                      <td align="right" class="NorTxtGray"><span class="style1">* </span>Password : </td>
                                      <td>
                                      <input name="password" type="password" size="20" value="<?=$arr[password];?>"></td>
                                    </tr>
                                    
                                    <tr>
                                      <td align="center" class="Topic">&nbsp;</td>
                                      <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                      <td width="36%" height="20" align="right" bgcolor="#093E68" class="topicWhite">Personal        Data&nbsp;:  </td>
                                      <td width="64%" bgcolor="#093E68">&nbsp;</td>
                                    </tr>
                                  </table></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><table width="100%" border="0" align="left" cellpadding="0" cellspacing="1">
                                    <tr>
                                      <td width="36%" align="right" bgcolor="#F6F6F6" class="NorTxtGray"><span class="style1">* </span>Name : </td>
                                      <td>
                                      <input name="name" type="text" size="30" value="<?=$arr[name];?>"></td>
                                    </tr>
                                    <tr>
                                      <td width="36%" align="right" bgcolor="#F6F6F6" class="NorTxtGray"><span class="style1">* </span>Occupation : </td>
                                      <td>
                                      <input name="occupation" type="text" size="30" value="<?=$arr[occupation];?>"></td>
                                    </tr>
<tr>
                                      <td width="36%" align="right" bgcolor="#F6F6F6" class="NorTxtGray"><span class="style1">* </span>Expert : </td>
                                      <td>
                                      <input name="expert" type="text" size="30" value="<?=$arr[expert];?>"></td>
                                    </tr>

                                    <tr>
                                      <td align="right"><span class="style1">* </span><span class="NorTxtGray">Organization  :</span></td>
                                      <td>
                                      <input name="org_name" type="text" size="30" value="<?=$arr[org_name];?>"></td>
                                    </tr>
                                    <tr>
                                      <td align="right" class="NorTxtGray">&nbsp;</td>
                                      <td align="right" class="NorTxtGray">&nbsp;</td>
                                    </tr>
                                    <tr>
                                      <td height="20" align="right" bgcolor="#093E68" class="topicWhite">Contact Information  :</td>
                                      <td align="right" bgcolor="#093E68" class="NorTxtGray">&nbsp;</td>
                                    </tr>
                                    <tr>
                                      <td align="right" class="NorTxtGray"><span class="style1">* </span>Address :</td>
                                      <td>
                                      <textarea name="address" cols="30 " rows="3"><?=$arr[address];?></textarea></td>
                                    </tr>
                                    <tr>
                                      <td align="right" valign="top" class="NorTxtGray"><span class="style1">* </span>
                                        Phone1 : </td>
                                      <td><label>
                                        <input name="tel" type="text" size="20" value="<?=$arr[tel];?>">
                                      </label></td>
                                    </tr>
                                    <tr>
                                      <td align="right" valign="top" class="NorTxtGray"><ol>
                                        Phone2 : </td>
                                      <td><label>
                                        <input name="tel2" type="text" size="20" value="<?=$arr[tel2];?>">
                                      </label></td>
                                    </tr>
                                    <tr>
                                      <td align="right" class="NorTxtGray">Fax : </td>
                                      <td>
                                      <input name="fax" type="text" size="20"></td>
                                    </tr>
                                    <tr>
                                      <td align="right" class="NorTxtGray"><span class="style1">* </span>Email1 : </td>
                                      <td>
                                      <input name="email" type="text" size="30" value="<?=$arr[email];?>"></td>
                                    </tr>
                                    <tr>
                                      <td align="right" class="NorTxtGray">Email2 : </td>
                                      <td>
                                      <input name="email2" type="text" size="30" value="<?=$arr[email2];?>"></td>
                                    </tr>
                                    <tr>
                                      <td align="right" class="NorTxtGray">Country : </td>
                                      <td>
                                      <input name="country" type="text" size="30" value="<?=$arr[country];?>"></td>
                                    </tr>

                                  </table></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td class="Topic">&nbsp;</td>
                                </tr>
                                
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><table width="100%" border="0" cellspacing="1" cellpadding="0">
                                    <tr>
                                      <td height="20" align="right" bgcolor="#093E68"><span class="topicWhite">Professionals : </span></td>
                                      <td bgcolor="#093E68" class="NorTxtGray">&nbsp;</td>
                                    </tr>
                                    <tr>
                                      <td width="36%" align="right">
                                      <input type="checkbox" name="clinical" value="Y" <?if($arr[clinical]=="Y"){ echo "checked";}?>></td>
                                      <td class="NorTxtGray">Clinical research investigator</td>
                                    </tr>
                                    <tr>
                                      <td align="right">
                                      <input type="checkbox" name="coordinator" value="Y" <?if($arr[coordinator]=="Y"){ echo "checked";}?>></td>
                                      <td class="NorTxtGray">coordinator</td>
                                    </tr>
                                    <tr>
                                      <td align="right">
                                      <input type="checkbox" name="ass" value="Y" <?if($arr[ass]=="Y"){ echo "checked";}?>></td>
                                      <td class="NorTxtGray">Clinical research associates</td>
                                    </tr>
                                    <tr>
                                      <td align="right">
                                      <input type="checkbox" name="datam" value="Y" <?if($arr[datam]=="Y"){ echo "checked";}?>></td>
                                      <td class="NorTxtGray">data management</td>
                                    </tr>
                                    <tr>
                                      <td align="right">
                                      <input type="checkbox" name="qa" value="Y" <?if($arr[qa]=="Y"){ echo "checked";}?>></td>
                                      <td class="NorTxtGray">QA/QC</td>
                                    </tr>
                                    <tr>
                                      <td align="right">
                                      <input type="checkbox" name="eth" value="Y" <?if($arr[eth]=="Y"){ echo "checked";}?>></td>
                                      <td class="NorTxtGray">ethics committee</td>
                                    </tr>
                                    <tr>
                                      <td align="right">
                                      <input type="checkbox" name="etc" value="Y" <?if($arr[etc]=="Y"){ echo "checked";}?>></td>
                                      <td class="NorTxtGray">etc.</td>
                                    </tr>
                                    <tr>
                                      <td align="right">&nbsp;</td>
                                      <td class="NorTxtGray">&nbsp;</td>
                                    </tr>
                                    
                                  </table></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><table width="100%" border="0" cellspacing="1" cellpadding="0">
                                    <tr>
                                      <td align="right" class="Topic">&nbsp;</td>
                                      <td>&nbsp;</td>
                                    </tr>
                                    <tr>
                                      <td width="36%" align="right" bgcolor="#093E68" class="topicWhite">Area of Spe cialization / Experiences : </td>
                                      <td width="64%" bgcolor="#093E68">&nbsp;</td>
                                    </tr>
                                  </table></td>
                                </tr>
                                
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><table width="100%" border="0" cellspacing="1" cellpadding="0">
                                    <tr>
                                      <td width="36%" align="right" class="Topic"><span class="Topic">Details</span> : </td>
                                      <td width="64%">
                                      <textarea name="details" cols="50" rows="3"><?=$arr[details];?></textarea></td>
                                    </tr>
                                  </table></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><table width="100%" border="0" cellspacing="1" cellpadding="0">
                                    <tr>
                                      <td width="36%" align="right" class="Topic">Past Training : </td>
                                      <td width="64%">
                                      <textarea name="train" cols="50" rows="3"><?=$arr[train];?></textarea></td>
                                    </tr>
                                  </table></td>
                                </tr>
                                <tr>
                                  <td>&nbsp;</td>
                                  <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                    <tr>
                                      <td align="right" class="Topic"><p>Therapeutic area 1 : </p></td>
                                      <td>
                                      <textarea name="thera1" cols="50" rows="3"><?=$arr[thera1];?></textarea></td>
                                    </tr>
                                    <tr>
                                      <td align="right" class="Topic"><p>Therapeutic area 2 : </p></td>
                                      <td>
                                      <textarea name="thera2" cols="50" rows="3"><?=$arr[thera2];?></textarea></td>
                                    </tr>
                                    <tr>
                                      <td align="right" class="Topic"><p>Therapeutic area 3 : </p></td>
                                      <td>
                                      <textarea name="thera3" cols="50" rows="3"><?=$arr[thera3];?></textarea></td>
                                    </tr>
                                    <tr>
                                      <td align="right" class="Topic"><p>Therapeutic area 4 : </p></td>
                                      <td>
                                      <textarea name="thera4" cols="50" rows="3"><?=$arr[thera4];?></textarea></td>
                                    </tr>
                                    <tr>
                                      <td align="right">&nbsp;</td>
                                      <td>&nbsp;</td>
                                    </tr>
  <TR>
    <TD class=font>&nbsp;</TD>
    <TD><input name="Submit2" type="button" class="inputButton1" value="Back" onclick='javascript:void(history.go(-1))'></TD></TR></TBODY></TABLE></FORM>
<DIV align=center>

</DIV></TD></TR></TBODY></TABLE><BR><BR></DIV></FORM></BODY></HTML>