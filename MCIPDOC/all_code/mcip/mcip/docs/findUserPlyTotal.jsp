<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=table.css>
<SCRIPT LANGUAGE="JavaScript" SRC="art_open.js"></SCRIPT>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">

<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="tool.js"></SCRIPT>
<%@ include file="public/Public.jsp" %>
<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr>

<%@ include file="public/PublicMemLeft.jsp" %> 
    <td width="613" height="288" valign="top"> <br>
      <img src="images/In_PlyTotal.gif" width="150" height="31" alt="ҵ��ͳ�Ʋ�ѯ">
  <form name="form2" action="Userplytotal.jsp" onsubmit="return(ValidYear(form2.year) && ValidMonth(form2.month));"method="post">
	<table border="0" width="70%" bgcolor="#F6F6F6" align="left" height="200">
	  <tr> 
	    <td bgcolor="#F6F6F6" valign="top" height="227"> 
	      <p>��ѡ����Ҫͳ�Ƶ�ҵ�����ͣ�</p>
	      <blockquote> 
		<p> 
		  <input type="checkbox" name="type0" value="B01">
		  ���ڻ��� 
		  <input type="checkbox" name="type1" value="B02">
		  ���ڻ��� </p>
		<p> 
        <input type="checkbox" name="type2" value="B23">
         ������· 
        <input type="checkbox" name="type3" value="B33">
         ���ڹ�· 
        <input type="checkbox" name="type4" value="B13">
         ����ˮ· 
        <input type="checkbox" name="type5" value="B43">
			���ں���
		</p>
	      </blockquote>
	      <p> ��������Ҫͳ�Ƶ�ʱ�䣺 </p>
	      <blockquote> 
		<p> 
		  <input type="text" name="year" size="4" maxlength="4" value="<%=new java.util.GregorianCalendar().get(java.util.GregorianCalendar.YEAR)%>">
		  �� 
		  <input type="text" name="month" size="2" maxlength="2" value="<%= new java.util.GregorianCalendar().get(java.util.GregorianCalendar.MONTH)+1%>">
		  �� </p>
	      </blockquote>
		<br>
		<p align="center"> &nbsp;&nbsp; 
		  <input type="submit" value="��ѯ" name="B1"  onClick="">
		  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
		  <input type="reset" value="���" name="B22">
		</p>
	    </td>
	  </tr>
	</table>
</form>
    </td>
  </tr>
</table>

<%@ include file="public/PublicBottom.html" %>   

</body>
</html>

