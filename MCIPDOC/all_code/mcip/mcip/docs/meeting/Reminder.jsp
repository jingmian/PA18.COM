
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=../index.css>
<title>ƽ���������߹�ͨ</title>
</head>
<SCRIPT LANGUAGE="JavaScript" SRC="../check.js"></SCRIPT>
<body bgcolor="#e1fbc1" leftmargin="0" topmargin="0">
<%@ page language="java" import="java.beans.Beans,java.lang.*,java.io.*,java.util.*,exceptions.*,constant.*,utility.*,beans.*,ctil.message.*" errorPage="ErrOut.jsp" contentType= "text/html; charset=gb2312"%>
<%
  HttpSession https = request.getSession(true);
  String clientName=(String)(https.getAttribute("myName"));
  String subject = (String)(https.getAttribute("subject"));
%>
<div align="center">
<p align="center"><font color="#ee0000">�Բ��𣬵�ǰû�к˱������ߡ�</font>���������ԣ����ǻἰʱ�𸴡�
<form name="form1" action="AcceptFaq.jsp">
<input type="hidden" name="feedback" value="1">
<input type="hidden" name="c_faq_psn" value="<%=clientName%>">
<p align="left">&nbsp;���� ��<input type="text" name="c_faq_title" size=60 value="<%=subject%>">
<p align="left">&nbsp;���� ��<textarea name="c_faq_content" cols=70 rows=12></textarea>
<p align="left">&nbsp;�ʼ� ��<input type=text name="c_faq_email"><font color="red">*</font>  
<p align="center"> <input type="button" name="submit1" onclick="return commit();" value="�ύ"> &nbsp;&nbsp;
    <input type="reset"  name="reset1" value="�˳�" onClick="JavaScript:window.close()">
</form>
</div>
</body>
</html>
<Script language="JavaScript">
function commit(){

	if(document.form1.c_faq_email.value == ""){
		alert("����������ʼ���ַ!");
		document.form1.c_faq_email.focus();
		return false;
	} else{
		if ((document.form1.c_faq_email.value.indexOf("@") < 1) || (document.form1.c_faq_email.value.indexOf(".") < 1)){
			alert("������ĵ����ʼ���ַ��ʽ����!");
			document.form1.c_faq_email.select();
			return false;
		}
		
	}
	document.form1.submit();
		return true;


}
</Script>