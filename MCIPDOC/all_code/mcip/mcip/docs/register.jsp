<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL="STYLESHEET" TITLE="text" TYPE="text/css" href="table.css">
<style type="text/css">
<!--
.nback {  background-color: #F6F6F6; font-size: 10.5pt}
-->
</style>
<title>�û�ע��</title>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">

<SCRIPT LANGUAGE="JavaScript" >
function ChgAction(Form,Radio)
{
        if(Radio[0].checked)
        {
        	Form.action="AcceptPrsnCust.jsp";
        }else if(Radio[1].checked)	
        {
        	Form.action="AcceptOrgnCust.jsp";
        }else if(Radio[2].checked)		
        {
        	Form.action="agent_register.jsp";
        }	
	return;
}
</SCRIPT>
<SCRIPT FOR=window EVENT=onload LANGUAGE="JavaScript">
   Register.R1[2].focus();
   Register.R1[1].focus();   
   Register.R1[0].focus();   
</SCRIPT>

<table width="778" border="0" cellspacing="0" cellpadding="0">
<%@ include file="public/PublicCust.jsp" %>      
<%@ include file="public/PublicRegTop.html"%>
<jsp:forward page="AcceptOrgnCust.jsp"/> 
  <tr>
    <td><table width="778" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="102"></td>
        <td width="563" valign="top"><br><img src="images/zcxyh.gif" width="153" height="52"> 
        <table border="0" cellspacing="5" cellpadding="0">
          <tr><td width="25%">������</td>
            <td>
<form name="Register" method="POST" action="AcceptPrsnCust.jsp">
<p>��ӭ��Ϊ��Ա������ѡ�������������ݣ�</p>
  <p>����<input type="radio" name="R1" checked  onclick="ChgAction(Register,R1);return true;"
  onfocus="ChgAction(Register,R1);return true;">����</p>
  <p>����<input type="radio" name="R1" onclick="ChgAction(Register,R1);return true;"
  onfocus="ChgAction(Register,R1);return true;">����</p>
  <p>����<input type="radio" name="R1" onclick="ChgAction(Register,R1);return true;"
  onfocus="ChgAction(Register,R1);return true;">����ͻ�</p>
  <p>����<input type="submit" value="��һ��" name="B1">
      	<input type="button" value="��  ��" onclick='javascript:window.close();' >

  </p>
</form>

</td>
          </tr>
        </table>
        </center></div></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<%@ include file="public/PublicBottom.html" %>      

</body>
</html>
