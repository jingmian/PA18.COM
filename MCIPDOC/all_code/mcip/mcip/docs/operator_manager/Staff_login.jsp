<%@ page language="java" import="java.lang.*,java.util.*,exceptions.*,constant.*,utility.*,beans.*" errorPage="ErrOut.jsp" contentType= "text/html; charset=gb2312"%>
<%
String errCde = request.getParameter("errCde");
if (errCde == null)
	errCde = "";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
</head>
<title>��̨�����¼</title>
<link rel="stylesheet" href="style.css">
<body>
<script language=javascript src="../check.js">
</script>
<div align="right">

<address>
  ƽ������
</address>
</div>
<form method="post" action="PreLogin.jsp" OnSubmit="return (ValidNull(C_OPR_CDE,false) && ValidNull(C_OPR_PW,false));">
<table border="0" width="375" bgcolor="#d8f0ff" align="center" height="238">
  <tr> 
    <td bgcolor="#99ccff" height=20> 
      <p align="center">��̨�����¼ </p>
    </td>
  </tr>
  <%if (errCde.equals("0001")){%>
  <tr> 
    <td bgcolor="#99ccff" height=20 align="center"> 
      <font color= "red" size=2>������æ�����Ժ����ԣ� </font>
    </td>
  </tr>
  <%}%>
  <%if (errCde.equals("0002")){%>
  <tr> 
    <td bgcolor="#99ccff" height=20 align="center"> 
      <font color= "red" size=2>��¼ʧ�ܣ������û�/���룬��ȷ�����û��Ѿ�����Ȩ��</font>
    </td>
  </tr>
  <%}%>
  <tr> 
    <td valign="top"> 
		<table align=center border=0>
		  <tr>
			<td height=50>
				&nbsp;
			</td>
		  </tr>

			<tr>
			  <td>
				��&nbsp;&nbsp;��&nbsp;/&nbsp;Account�� 
			    &nbsp;</td>
				<td>
				<input type="text" name="C_OPR_CDE" size="15" maxlength="10">*
			  </td>
		  </tr>
		  <tr>
			  <td >��&nbsp;&nbsp;��&nbsp;/&nbsp;password��
			  </td>
			  <td>
				    <input type="password" name="C_OPR_PW" size="15" maxlength="6">*
		      </td>
		</tr>
		<tr>
		  <td align="center" colspan=2> 
			<input type="submit" value="��¼/Login" name="SubmitLog">
	      </td>
		 </tr>
		</table>
      </td>
  </tr>
</table>
</form>
</body>
</html>
