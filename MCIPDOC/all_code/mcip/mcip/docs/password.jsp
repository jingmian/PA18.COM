<%@ page language="java" contentType= "text/html; charset=gb2312"%>
<html>
<head>
<title>��������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=table.css>
<style type="text/css">
<!--
.nback {  background-color: #F6F6F6; font-size: 10.5pt}
-->
</style>
</head>

<%
	String ls=null;
%>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">

<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>

<table width="778" border="0" cellspacing="0" cellpadding="0" height="270">
  <tr>
    <td><img src="images/toptable.gif" width="778" height="36" border="0"></td>
  </tr>
  <tr>
    <td height="330"> 
      <table width="778" border="0" cellspacing="0" cellpadding="0" >
        <tr>
          <td width="102" >&nbsp;</td>
          <td width="563" valign="top" > 
           
            <p><img src="images/fpassword.gif" width="150" height="35"></p>
            <table width="96%" border="0" cellspacing="0" cellpadding="0" height="13">
              <tr>
                <td width="55%" class="title">����������û�����֤�����룺</td>
                <td width="45%"> 
                  <div align="right"><font color="#FF0000">��*����Ŀ������д</font></div>
                </td>
              </tr>
            </table>
            <br>
            <table width="96%" border="1" cellspacing="0" cellpadding="0" height="129" bgcolor="#FFFFFF" bordercolor="#999999">

            <form method="POST" action="Edit_Password.jsp" name="EntUsrNameForm" onsubmit="return(
		ValidNull(C_USER_ID,false) &&
		ValidNull(C_RGST_NO,false));">

              <tr bgcolor="#FFFFFF" bordercolor="#FFFFFF"> 
                <td>�����û���(*)�� 
                  <input type="text" name="C_USER_ID" size="30" maxlength="12"><font color="#FF0000">����ĸ�ִ�Сд��</font>
                </td>
              </tr>
              <tr bgcolor="#FFFFFF" bordercolor="#FFFFFF"> 
                <td>���� 
                  <input type="radio" name="USER_MARK" value="0" checked>
                  ���̵ǼǺ� �� 
                  <input type="radio" name="USER_MARK" value="2">
                  �����˱��� 
                 </td>
              </tr>
              <tr bgcolor="#FFFFFF" bordercolor="#FFFFFF"> 
                <td>������&nbsp;&nbsp;��(*)�� 
			<input type="text" name="C_RGST_NO" size="45" maxlength="20"><font color="#FF0000">����ĸ�ִ�Сд��</font>
                </td>
              </tr>
            </table>
            <div align="center"> 
            	<p>
            	<input type="submit" value="ȷ��" name="B1" >
                <input type="reset" value="���" name="B2" >
                <input type="button" value="�ر�" onclick='javascript:window.close();' >
                </p>
            </div>
            </td>
          <td width="113" >&nbsp;</td>
        </tr>
        </form>
      </table>
    </td>
  </tr>
</table>
  <img src="images/bline.gif" width="778" height="1"><br>
</p>
<p>
  <script language="JavaScript" src="bottom.js"> </script>
</p>
</body>
</html>
