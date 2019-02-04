

<HTML>

<HEAD>

<TITLE>ระบบบริหารจัดการเว็บไซด์<</TITLE>

<META http-equiv=Content-Type content="text/html; charset=utf-8"><LINK 

href="css.css" type=text/css 

rel=stylesheet>

<META content="Microsoft FrontPage 5.0" name=GENERATOR>

<style type="text/css">

<!--

.style1 {font-size: 12px;

	font-weight: bold;

	font-family: Tahoma;

}

-->

</style>

</HEAD>

<BODY leftMargin=0 topMargin=0 onload=document.frmlogin.username.focus();>



<TABLE class=DetailBody cellSpacing=0 width="100%" border=0 height="100%">

  <TBODY>

  <TR>

    <TD><table width="100%"  height="100%" border="0" align="center" cellpadding="0" cellspacing="0"  >

      <FORM name=frmlogin action=chklogin.php method=post onSubmit="return CheckValue()">

        <tr>

          <td height="95" colspan="2" background="images/bg_head.gif" class="Red"><img src="images/logo_admin.gif" width="545" height="95" /></td>

        </tr>

        <tr>

          <td colspan="2" align="right" bgcolor="#FFFFFF" class="Red"><table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">

              <tr>

                <td height="50" align="center" class="BlueTopic"><span class="style1">Web Administrator Control Panel<br>

                  by hypermance.com </span></td>

              </tr>

              <tr>

                <td><table width="334" height="159" border="0" align="center" cellpadding="0" cellspacing="0." background="images/logibn.jpg">

                    <tr>

                      <td>&nbsp;</td>

                      <td>&nbsp;</td>

                    </tr>

                    <tr>

                      <td>&nbsp;</td>

                      <td>&nbsp;</td>

                    </tr>

                    <tr>

                      <td>&nbsp;</td>

                      <td><INPUT class=DetailBody 

                         tabIndex=1 maxLength=15 

                        name=username size="20"></td>

                    </tr>

                    <tr>

                      <td height="10" colspan="2"><img src="../images/space.gif" width="5" height="5"></td>

                    </tr>

                    <tr>

                      <td>&nbsp;</td>

                      <td><INPUT class=DetailBody  

                        id=passwords tabIndex=1 type=password maxLength=15 

                        name=passwords size="20"></td>

                    </tr>

                    <tr>

                      <td>&nbsp;</td>

                      <td><TABLE class=DetailBody cellSpacing=0 width="100%" border=0>

                        <TBODY>

                          <TR>

                            <TD><input type="hidden" name="Submits3" value="Submit">

                               <INPUT id=Submits  type=Submit value=เข้าสู่ระบบ name=Submits>                       </TD>

                            <TD width="6%" align="left">&nbsp;</TD>

                          </TR>

                          <TR height=10>

                            <TD colSpan=2 

              height=2></TD>

                          </TR>

                        </TBODY>

                      </TABLE></td>

                    </tr>

                    <tr>

                      <td width="39%">&nbsp;</td>

                      <td width="61%">&nbsp;</td>

                    </tr>

                </table></td>

              </tr>

              <tr>

                <td>&nbsp;</td>

              </tr>

          </table></td>

        </tr>

        <tr >

          <td height="22" background="images/admin_foot.gif"><img src="../images/space.gif" width="5" height="5"></td>

        </tr>

      </form>

    </table></TD></TR>

  </TBODY>

</TABLE>

<script language="javascript">

   function CheckValue()

   {        

       if (document.frmlogin.username.value.length==0)

     {

       alert("Please enter username");

	   document.frmlogin.username.focus();

       return false;

     }

	  if (document.frmlogin.passwords.value.length==0)

     {

       alert("Please enter password");

	   document.frmlogin.passwords.focus();

       return false;

     }

   }

</script>

</BODY>

</HTML>