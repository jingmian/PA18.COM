<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=index.css>

</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">
<%@ include file="public/PublicNotLogin.jsp" %>

<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr> 
<%@ include file="public/PublicInfoLeft.html" %> 
   <td width="613" height="288" valign="top"> <br>
      <img src="images/i_feed.gif" width="150" height="31" alt="�������"> 
      <script language="javascript1.2" src="art_open.js"></script>
<%/*
	 <a href="operator_manager/PreLogin.jsp?C_OPR_CDE=test&C_OPR_PW=test&temp=yes" onclick="return js_openpage(this.href);">
          �鿴����б�
     </a>
*/%>
<table border="0"  width="90%" cellpadding="4">
      <tr>
        <td>
	<p>
	  ����վʹ������ʲô������飬����д�±��������ı��������(�������������緽�����Ա����Ǽ�ʱ������������������)
	</p>


<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<form method="POST" action="Zsubm_inputfaq.jsp" onsubmit="return(
ValidNull(c_faq_psn,false) &&
ValidNull(c_faq_title,false) &&
ValidNull(c_faq_content,false) &&
ValidNull(c_faq_email,false) &&
ValidEmail(c_faq_email) 
);">
 <input TYPE="hidden" NAME="feedback" VALUE="feedback">
  <p>����&nbsp;����:<input type="text" name="c_faq_psn" size="15">*</p>
  <p>����EMAIL:<input type="text" name="c_faq_email" size="25">*</p>
  <p>����&nbsp;����:<input
  type="text" name="c_faq_title" size="40">*</p>
  <p>����&nbsp;����:<br>
  ������ &nbsp;&nbsp;&nbsp;<textarea rows="4" name="c_faq_content" cols="50"></textarea>*</p>
  <p>��������������������<input type="submit" value="�ύ" name="B1">��
  ��<input type="reset" value="��д"  name="B2"></p>
</form>
</td>
      </tr>
    </table>

</td>
  </tr>
</table>
<%@ include file="public/PublicBottom.html" %>    
</body>
</html>
