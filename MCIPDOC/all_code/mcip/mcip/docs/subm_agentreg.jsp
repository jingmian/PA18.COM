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

<%@ page language="java" import="java.lang.*,java.util.*,exceptions.*,constant.*,utility.*" errorPage="ErrOut.jsp" contentType= "text/html; charset=gb2312"%>

<jsp:useBean id="cb"  scope="page" class="beans.CustManagerBean"/> 

<%  //for get login para and to bean
    String agntcust[] = new String[Const.CUSTENTITY_LEN];
    boolean IsAccept = false;
    int i = 0;
    
    for(i = 0; i < Const.CUSTENTITY_LEN; i++)
         agntcust[i] = "";
    i = 0;

    agntcust[0] = request.getParameter("C_User_ID");        
    agntcust[1] = agntcust[0];
    agntcust[2] = request.getParameter("C_User_pw");        
    agntcust[3] = request.getParameter("C_Pw_Question");        
    agntcust[4] = request.getParameter("C_Pw_Result");        
    agntcust[8] = request.getParameter("ageid");        

    try
    {
        cb.setFormPara(Const.ACCEPT_AGNTCUST,agntcust);
			IsAccept = cb.getRetValueBool();
    }
    catch(NormalException e)
    {
 		if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
    }
%>     

<table width="778" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td><img src="images/toptable.gif" width="778" height="36" border="0"></td>
  </tr>
  <tr>
    <td><table width="778" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="102"></td>
        <td width="563" valign="top"><img src="images/zcxyh.gif" width="153" height="52"> <p>����</p>
        <div align="center"><center><table border="0" cellspacing="5" cellpadding="0">
          <tr>
				<td>��������
			<% if(IsAccept)
				{   %>
					<font color="#FF0000">�ύ�ѳɹ�</font>����ȴ�ƽ����˾���˽����<p>�������ѿ���ʹ�ñ��Ѳ��㹦�ܡ�</p>
					<p align="center">������Ͷ�������ϱ������ܣ���õ���Աע����׼�Ժ󷽿�ʹ�á�</p>
			<% }else 
				{	%>
					<font color="#FF0000">�ύû�гɹ�</font>�����������Ƿ���ȷ��
			<%	}	%>
            <p align="center"><a href="javascript:window.close();">������ҳ</a></td>
          </tr>
        </table>
        </center></div></td>
      </tr>
    </table>
    </td>
  </tr>
</table>

<p>��</p>

<p>��</p>

<p><br>
<img src="images/bline.gif" width="778" height="1"><br>
<br>
<script language="JavaScript" src="bottom.js"> </script> </p>
</body>
</html>
