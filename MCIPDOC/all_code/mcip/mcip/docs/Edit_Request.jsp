<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=index.css>
<SCRIPT LANGUAGE="JavaScript" SRC="art_open.js"></SCRIPT>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">

<%@ include file="public/Public.jsp" %>      

<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr> 

<%@ include file="public/PublicMemLeft.jsp" %>      
    <td width="613" height="288" valign="top"> <br>
        <img src="images/xgmm.gif" width="150" height="31" alt="�޸�����"> 

<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<jsp:useBean id="ob"  scope="page" class="beans.CustManagerBean"/> 
<% String cust[][] = null; 

   String userid = sessionbuffer.getuserId(Locate);
   String useridarry[] = {userid};
   //useridarry[0]=userid
   ob.setFormPara(Const.QUERY_CUSTENTT,useridarry);
   cust=ob.getRetValueArra();
  
%>   
<form method="POST" action="Subm_Request.jsp"  onsubmit="return(
ValidNull(C_oldpw,false) &&
ValidNull(C_newpw,false) &&
ValidNull(ConfirmPassword,false) &&
ValidSame(C_newpw,ConfirmPassword)
);">

 <input TYPE="hidden" NAME="userid" VALUE="<%=userid%>">
 <input TYPE="hidden" NAME="sessionid" VALUE="<%=request.getParameter("sessionid")%>">
 <input TYPE="hidden" NAME="oldpw" VALUE="<%=Objects.getValue(1,"c_user_pw",cust)%>">

 <table border="0" width="489" bgcolor="#F6F6F6" align="left">
  <tr> 
      <td bgcolor="#F6F6F6">
        
      <!--p align="center"><b>��ش����Ⲣ��������</b> </p-->
      </td>
    </tr> 
  <tr> 
    <td valign="top"> 
      <p><font color="#FF0000">��ע�����ִ�Сд</font></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;��������룺 
          <input type="password" maxlength="16" name="C_oldpw" size="16">
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;���������룺 
          <input type="password" maxlength="16" name="C_newpw" size="16">
        </p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;ȷ�������룺 
          <input type="password" maxlength="16" name="ConfirmPassword" size="16">
        </p>
<%
  //      <p>&nbsp;&nbsp;������ʾ���⣺
  //        <input type="text" name="C_PW_QUESTION" size="30" value="<%=cust[1][3%%%%%]>" maxlength="100">
  //      </p>
  //      <p>&nbsp;&nbsp;������ʾ�𰸣� 
 //         <input type="text" name="C_PW_RESULT" size="30" maxlength="50">
 //       </p>

%>
        <div align="center">
		<BR>
            <input type="submit" value="ȷ��" name="B1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <input type="reset" value="���" name="B2">
        
        </div>
      </form>
      
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
