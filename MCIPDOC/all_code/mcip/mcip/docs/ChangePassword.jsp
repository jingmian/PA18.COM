<%@ page language="java" import="java.lang.*,java.io.*,java.util.*,exceptions.*,constant.*,utility.*,beans.*" errorPage="ErrOut.jsp" contentType= "text/html; charset=gb2312"%>
<jsp:useBean id="epbb"  scope="request" class="beans.EditPasswordBean"/>

<!-- Get Para-->
<%
	String cUserID = request.getParameter("C_USER_ID");
	//out.println("C_USER_ID: "+cUserID);
	String cUserName = request.getParameter("C_USER_NAME");
	//out.println("C_USER_NAME: "+cUserName);
	String cPwQuestion = request.getParameter("C_PW_QUESTION");
	//out.println("C_PW_QUESTION: "+cPwQuestion);
	//out.println("�������⣺"+cPwQuestion);
	String cPwResultReally = request.getParameter("C_PW_RESULT_REALLY");
	//out.println("C_PW_RESULT_REALLY: "+cPwResultReally);
	String cPwResult = request.getParameter("C_PW_RESULT");
	cPwResult="___";//����𰸲���Ҫ����ʱ��***���棬����Ҫʹ��ֻ��ſ�ע��Ϳ�ʹ��
	//out.println("C_PW_RESULT: "+cPwResult);
	String cUserPw = request.getParameter("C_User_pw");
	//out.println("C_User_pw: "+cUserPw);
		
	// ---- �𰸲�һ�� ----
	//if (cPwResultReally.equals(cPwResult) == false) //�жϻش������Ƿ���ȷ֮��������ʱע��
	//{
%>
<%
/*
<!--html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>password change error</title>
<link REL=STYLESHEET TITLE=text TYPE=text/css href=table.css>
<!---link rel="stylesheet" href="style.css"--->
<!---link rel="stylesheet" href="TableStyle.css"--->
<!--/head>

<body>
<div align="right">
<table width="778" border="0" cellspacing="0" cellpadding="0" height="">
  <tr>
    <td><img src="images/toptable.gif" width="778" height="36" border="0"></td>
  </tr>
</table>

<center><h2><font color="#FF0000">������ʾ���ⲻ����</font><h2></center>
<p>&nbsp;</p>
<form>
<div align="center">
<input type="button" value="����" onclick="history.back()">
<input type="button" value="�ر�" onclick='javascript:window.close();' >
</div>
</form>
<p><img src="images/bline.gif" width="778" height="1"><br></p>
<p>
  <script language="JavaScript" src="bottom.js"> </script>
</p>
</body>
</html-->
*/
%>
<%
	//}
	//else
	//{
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>password change error</title>
<link REL=STYLESHEET TITLE=text TYPE=text/css href=table.css>
</head>

<body>
<table width="778" border="0" cellspacing="0" cellpadding="0" height="">
  <tr>
    <td><img src="images/toptable.gif" width="778" height="36" border="0"></td>
  </tr>
</table>
<!--p align="center"><b>������ʾ�������</b></p-->
<%
	
	boolean ret = false;
	try{  
		epbb.setFormPara(cUserID,cUserName,cUserPw,cPwQuestion,cPwResult);
		ret = epbb.getRetValue();
	}
	catch(NormalException e){
 		if(NormalExceptionHandler.IsSevere(e))
 	   		throw NormalExceptionHandler.Handle(e);
    	}
    		
    	if (ret == true){
%>
<p align="center"><b>��������ɹ�����ʱ��Ч</b></p>
<p>&nbsp;</p>
<form>
<div align="center">
<input type="button" value="����" onclick="history.back()">
<input type="button" value="�ر�" onclick='javascript:window.close();' >
</div>
</form>
<p><img src="images/bline.gif" width="778" height="1"><br></p>
<p>
  <script language="JavaScript" src="bottom.js"> </script>
</p>
</body>
</html>
<%
	}
	else
	{
%>
<p align="center"><b>��������ʧ�ܣ�</b></p>
<p>&nbsp;</p>
<form>
<div align="center">
<input type="button" value="����" onclick="history.back()">
<input type="button" value="�ر�" onclick='javascript:window.close();' >
</div>
</form>
<p><img src="images/bline.gif" width="778" height="1"><br></p>
<p>
  <script language="JavaScript" src="bottom.js"> </script>
</p>
</body>
</html>
<%		
	//}
}
%>
</body>
</html>