<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>

<jsp:useBean id="obj_user"  scope="page" class="beans.Zuserbean"/>

<%
	String formpara[]=new String[1];
	String[][] info=null;
	int i=0;
	
	formpara[0]=(String)request.getParameter("c_clnt_nme");

	try
	{
		obj_user.setFormPara(ZConst.QUERY_SAMECUSTLIST,formpara);
	}
   catch(NormalException e)
   {
		if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
   }  	// end try
   catch(Exception e)
	{
	}
   
   info=obj_user.getRetValueArra();

%>


<div align="center"><font color="#0066CC" class="unnamed3"> ͬ �� �� Ա �� �� <br></font> 
 <table width="98%" border="0" cellspacing="0" cellpadding="0" class="td">
   <tr>
     <td>ͬ���ͻ��Ļ������ϣ�</td>
   </tr>
 </table>
<table width="98%" border="1" cellspacing="0" cellpadding="0" bordercolor="#009966" bgcolor="#F4FFF4" bordercolorlight="#FFFFFF" class="td" height="120">
  <tr bgcolor="#E1FFE1"> 
    <td height="22" width="12%"> 
      <div align="center">�ͻ����</div>
    </td>
    <td height="22" width="22%"> 
      <div align="center">���֤��/���̵ǼǺ�</div>
    </td>
    <td height="22" width="11%"> 
      <div align="center">�绰����</div>
    </td>
    <td height="22" width="11%"> 
      <div align="center">����</div>
    </td>
    <td height="22" width="11%"> 
      <div align="center">E-Mail</div>
    </td>
    <td height="22" width="37%"> 
      <div align="center">�ͻ���ַ</div>
    </td>
  </tr>
		<%	if (info==null)
			{
				out.println("û���ҵ���ѯ�ļ�¼��");
			}else
			{
				for(i=1;i<info.length;i++)
				{    %>
    			  <tr>
      			<td><%=Objects.getValue(i,"C_CLNT_CDE",info)%>&nbsp;</td>
      			<td><%=Objects.getValue(i,"C_RGST_NO",info)%>&nbsp;</td>
       			<td><%=Objects.getValue(i,"C_TEL",info)%>&nbsp;</td>
       			<td><%=Objects.getValue(i,"C_FAX",info)%>&nbsp;</td>
       			<td><%=Objects.getValue(i,"C_EMAIL",info)%>&nbsp;</td>
       			<td><%=Objects.getValue(i,"C_PLACE",info)%></td>
    			  </tr>
      	<%	}
      	}
      %>
</table>
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input align="center" type="button" value="��  ��" name="B44" onclick='javascript:history.back();'>  
<%@ include file="public/bottom.jsp" %>
