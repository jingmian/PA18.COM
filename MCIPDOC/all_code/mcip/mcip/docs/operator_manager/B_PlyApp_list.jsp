<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>


<jsp:useBean id="obj_buss"  scope="session" class="beans.Zbussbean"/>

<%
	String info[][]=null;
	String formpara[]=new String[1];
	int i=0;
	int no=0;	//decide how many lines to be showed

//  begin process
	String pgnostr=request.getParameter("pgno");
	int pgno=1;
if(pgnostr!=null)
{
	pgno=Integer.parseInt(pgnostr);
}else
{
	
	formpara[0]=(request.getParameter("username") ).trim();
	no=1+Integer.parseInt(request.getParameter("checkno")); //info.lengh=display line+1

	try
	{
		obj_buss.setFormPara(ZConst.GET_CUSTPLYAPPLIST,formpara);
	}
   catch(NormalException e)
   {
//		if(NormalExceptionHandler.IsSevere(e))
// 	    throw NormalExceptionHandler.Handle(e);
//		out.println("normal exception");
   } 
}	//end if pg!=null

	info=obj_buss.getRetValueArra();

	
	int pglen=7;
	int totalpg=0;
	
%>

		<div align="center"><br>
        <font color="#0066CC" class="unnamed3">Ͷ �� �� �� �� </font><br>
      </div>
      <table width="98%" border="1" cellspacing="0" cellpadding="0" class="td" bgcolor="#DFF9F3" align="center">
        <tr bgcolor="#9DEEDE"> 
          <td align="center" height="33" width="20%">Ͷ������</td>
          <td align="center" height="33" width="14%">Ͷ������</td>
          <td align="center" height="33" width="9%">״̬</td>
          <td align="center" height="33" width="15%">����</td>
          <td align="center" height="33" width="20%">��������</td>
          <td align="center" height="33" width="9%">����</td>
          <td align="center" height="33" width="13%">�˱���</td>
        </tr>
		<%	if (info==null)
			{	%>
				<tr> 
				 <td valign="top" colspan="10" align="center"><font color=red>û���ҵ�Ͷ������¼��<font></td>
				</tr>
		<%	}else
			{
				//decide display how many  
				int showlen=info.length;
				
				if(no>1 && showlen>no)showlen=no;
				
				//decide how many page
				totalpg=(showlen-1+pglen-1)/pglen;
/*
				out.println("no="+no);
				out.println("infolen="+info.length);
				out.println("info8="+info[8][1]);
				out.println("showlen="+showlen);
				out.println("totalpg="+totalpg);
				out.println("para="+request.getParameter("checkno"));
*/
				int t1=(pgno-1)*pglen+1;
				int t2=(pgno)*pglen+1;
				if(t2>showlen)t2=showlen;
//				String status="";
				for(i=t1;i<t2;i++)
				{ 
					String plyno=(Objects.getValue(i,"c_ply_no",info)).trim();
					String prpsl=Objects.getValue(i,"c_prpsl_exist",info);
					String status="�ѳ���";
					if (plyno.length()==0 && prpsl.equals("0") )status="δ�˱�";
					if (plyno.length()==0 && prpsl.equals("1") )status="������";
					%>
					<tr> 
					<td align="center" width="20%"><%=Objects.getValue(i,"c_ply_app_no",info)%>&nbsp;</td>
					<td align="center" width="14%"><%=Objects.getValue(i,"t_app_tm",info)%>&nbsp;</td>
					<td align="center" width="9%"><%=status%>&nbsp;</td>
					<td align="center" width="15%"><%=Objects.getValue(i,"c_insrnc_cnm",info)%>&nbsp;</td>
					<td align="center" width="20%"><%=Objects.getValue(i,"c_crgo_name",info)%>&nbsp;</td>
					<td align="center" width="9%"><%=Objects.getValue(i,"n_rate",info)%>&nbsp;</td>
					<td align="center" width="13%"><%=Objects.getValue(i,"c_emp_cnm",info)%>&nbsp;</td>
					</tr>
      	<%	} %>
      <%	} //end for info==null
      %>
		
		</table>

		
	<table width="96%" border="0" cellspacing="0" cellpadding="0" class="td" align="center">
	<tr>
		<td align="right" width="40%">
		<%if (pgno>1){%>
			<a href="B_PlyApp_list.jsp?pgno=<%=1%>">[��ҳ]</a>&nbsp;&nbsp;
			<a href="B_PlyApp_list.jsp?pgno=<%=pgno-1%>">[��һҳ]</a>
		<%}else
		  { out.println("[��ҳ]&nbsp;&nbsp;[��һҳ]");	}%>  
		</td>
		<td align="center" width="20%" valign="top">
			<p align=center>��ʾ<%=pgno%>/<%=totalpg%></p>
		</td>
		<td align="right" width="40%">
		<%if (pgno < totalpg){%>
			<a href="B_PlyApp_list.jsp?pgno=<%=pgno+1%>">[��һҳ]</a>&nbsp;&nbsp;
			<a href="B_PlyApp_list.jsp?pgno=<%=totalpg%>">[βҳ]</a>
		<%}else
		  { out.println("[��һҳ]&nbsp;&nbsp;[βҳ]");	}%>  
		</td>
	</tr>
  </table>

<%@ include file="public/bottom.jsp" %>
