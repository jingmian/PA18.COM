<%@ page language="java" contentType= "text/html; charset=gb2312"%>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL="STYLESHEET" TITLE="text" TYPE="text/css" href="table.css">
<style type="text/css">
<!--
.nback {  background-color: #F6F6F6; font-size: 10.5pt}
-->
</style>
<title>�����û�ע��</title>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">

<table width="778" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/toptable.gif" width="778" height="36" border="0"></td>
  </tr>
  <tr>
    <td ><table width="778" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="102"></td>
        <td width="563" valign="top"><img src="images/zcxyh.gif" width="153" height="52"><table
        width="96%" border="0" cellspacing="0" cellpadding="0" height="13">
          <tr>
            <td width="41%" class="title"><font color="#ff0000">�����û�ע�᣺</font></td>
            <td width="59%"><font color="#FF0000"><p align="right">��*����Ŀ������д</font> </td>
          </tr>
        </table>
		<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<form name="form1" action="subm_agentreg.jsp" onSubMit="return(
    ValidNull(ageid,false) &&
    ValidNull(C_User_ID,false) &&
    ValidNull(C_User_pw,false) &&
    ValidNull(ConfirmPassword,false) &&

    ValidSame(C_User_pw,ConfirmPassword)     
    );">
          <p>������������������Ĵ����˱������ע��Ϊƽ�����չ�˾�Ļ�Ա�� 
          <br>
          <br>
          <table border="0" cellspacing="5" cellpadding="0" width="80%">
            <tr>
              <td align="right" width="18">      </td>
              <td bgcolor="#F6F6F6" align="right">�����˱��룺 </td>
              <td width="75%"><input type="text" name="ageid" size="12" maxlength="30">*</td>
            </tr>
          </table>
          <table border="0" cellspacing="5" cellpadding="0" width="80%">
            <tr>
              <td align="right" width="18">������</td>
              <td bgcolor="#F6F6F6" align="right">��&nbsp;&nbsp;��&nbsp;&nbsp;����</td>
              <td width="75%"><input type="text" name="C_User_ID" size="25" maxlength="100">*</td>
            </tr>
            <tr>
              <td align="right"></td>
              <td bgcolor="#F6F6F6" align="right">��&nbsp;��&nbsp;��&nbsp;�룺</td>
              <td><input type="password" maxlength="8" name="C_User_pw" size="8">*</td>
            </tr>
            <tr>
              <td align="right"></td>
              <td bgcolor="#F6F6F6" align="right">ȷ&nbsp;��&nbsp;��&nbsp;�룺</td>
              <td><input type="password" maxlength="8" name="ConfirmPassword" size="8">*</td>
            </tr>
            <tr>
              <td align="right"></td>
              <td bgcolor="#F6F6F6" align="right">������ʾ���⣺</td>
              <td><input maxlength="100" name="C_Pw_Question" size="25"> </td>
            </tr>
            <tr>
              <td align="right"></td>
              <td bgcolor="#F6F6F6" align="right">������ʾ�𰸣�</td>
              <td><input maxlength="50" name="C_Pw_Result" size="25"></td>
            </tr>
          </table>
          <p><font color="#FF0000">ע��</font>��ע�����ִ�Сд��</p>
          <div align="center"><p>
          	<input type="button" value="��  ��" onclick="history.back()">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          	<input type="submit" name="Submit" value="��  ��"> ���� 
          	<input type="reset" name="Submit2" value="��  ��"> </p>
          </div>
        </form>
        </td>      
      </tr>
    </table>
    </td>
  </tr>
</table>
<br>
<img src="images/bline.gif" width="778" height="1"><br>
<br>
<script language="JavaScript" src="bottom.js"> </script> </p>
</body>
</html>
