<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>

<SCRIPT LANGUAGE="JavaScript" SRC="../tool.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="../check.js"></SCRIPT>
<jsp:useBean id="obj_user"  scope="session" class="beans.Zuserbean"/>


<% 
	int i=0;
	String[] formpara=new String[1];
	String[][] info=null;
	String temp="";
	String c_func_cde="";
	String func_cnm="";
	String func_enm="";
		
	
	//========== begin process  ============
	temp=request.getParameter("temp");
	try
	{
		formpara[0]="";
		if(temp==null)obj_user.setFormPara(ZConst.QUERY_SYSFUNCLIST,formpara);
//		obj_user.setFormPara(ZConst.QUERY_SYSFUNCLIST,formpara);
		info=obj_user.getRetValueArra();
	}
   catch(NormalException e)
   {
		if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
   }  // end try,catch
//	if (info==null)out.println("info null");
	if(temp!=null)
	{
//		out.println("not null");
		i=Integer.parseInt(request.getParameter("select"));
		if(i>0)
		{
			c_func_cde=Objects.getValue(i,"c_func_cde",info);
			func_cnm=Objects.getValue(i,"c_func_cnm",info);
			func_enm=Objects.getValue(i,"c_func_enm",info);
		}
	
	}


%>


<font face="����" size="3"> 
<p align="center"> ϵͳ����ά��</p>
</font>
   <table  align="center" border="1" cellspacing="0" cellpadding="0" bgcolor="#DFF9F3" class="td">
     <tr bgcolor="#9DEEDE"> 
    <td align="center"> 
      ���
    </td>
    <td align="center"> 
      ����������
    </td>
    <td align="center"> 
      ����Ӣ����
    </td>
  </tr>
	<%	if (info!=null)
		{
			for(i=1;i<info.length;i++)
			{    %>
    			  <tr>
				<td align="center"><%=i%></td>
      				<td><%=Objects.getValue(i,"c_func_cnm",info)%>&nbsp;</td>
      				<td><%=Objects.getValue(i,"c_func_enm",info)%>&nbsp;</td>
    			  </tr>
      		<%	}
	      	}
      	%>
</table>
<form name="form1" action="Add_Func.jsp">
    <input type="hidden" name="temp" value="sub">
        <div  align="center">ѡ������ţ� 
          <select name="select" onChange="forward(form1,temp,temp,'1'); return true;">
		<%	if (info!=null)
			{
				for(i=0;i<info.length;i++)
				{    %>
				<option value=<%=i%>> <%=i%> </option>
			<%	}
			}
		%>
          </select>
			 </div>
</form>

<form name="form2" action="subm_func.jsp" onsubmit="return(
ValidNull(C_FUNC_CNM,false) &&
ValidNull(C_FUNC_ENM,false) 
);">
   <table  align="center" border="1" cellspacing="0" cellpadding="0" bgcolor="#DFF9F3" class="td">
     <tr bgcolor="#9DEEDE"> 
    	<input type="hidden" name="C_FUNC_CDE" value=<%=c_func_cde%>>
    	<td height="28">
    	   ������������ <br>
          <input type="text" name="C_FUNC_CNM"  size="20" maxlength="50" value="<%=func_cnm%>">
    	</td>
    	<td> 
           ����Ӣ������ <br>
           <input maxlength="50" name="C_FUNC_ENM" size="20" value="<%=func_enm%>">
    	</td>
     </tr>
     <tr> 
	<td colspan="2" align="center">  
       	   <input type="submit" value="�޸Ĺ���" name="submit">
           <input type="submit" value="���ӹ���" name="submit">
           <input type="submit" value="ɾ������" name="submit">
    	</td>
     </tr>
   </table>
</form>

<%@ include file="public/bottom.jsp" %>
