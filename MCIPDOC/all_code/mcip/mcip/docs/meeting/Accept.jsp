<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=../index.css>
</head>



<body bgcolor="#0088ee">
<%@ page language="java" import="java.beans.Beans,java.lang.*,java.io.*,java.util.*,exceptions.*,constant.*,utility.*,beans.*,ctil.message.*" errorPage="ErrOut.jsp" contentType= "text/html; charset=gb2312"%>

<%

    String serverName = request.getParameter("sv");
    String clientName = request.getParameter("ct");
    HttpSession https = request.getSession(true);
    //String sessionId = https.getId();
	  //SessionBuffer sessionbuffer = SessionBuffer.getSessionBuffer();

%>
<form action="ServerChat.jsp?accept=clark" method="post">
   <input type="hidden" name="clientName" value="<%=clientName%>">
   <input type="hidden" name="serverName" value="<%=serverName%>">
  <p align="center">�ͻ�<%=clientName%>������Ҫ��ѯ!
  <p align="center"><input type="submit" name="submit1" value="��Ҫ�ش�">
</form>
</body>
</html>
