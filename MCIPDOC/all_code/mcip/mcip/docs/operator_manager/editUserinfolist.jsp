<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>

<SCRIPT LANGUAGE="JavaScript" SRC="../tool.js"></SCRIPT>
<jsp:useBean id="obj_user"  scope="session" class="beans.Zuserbean"/>
<jsp:useBean id="obj_data"  scope="session" class="beans.Zdatabean"/>

<%
	String info[][]=null;
	String formpara[]=new String[10];
	String from_time1="";
	String to_time1="";
	String from_time2="";
	String to_time2="";
	String choice0=null;
	String choice1=null;
	int i=0;

//  begin process
	String pgnostr=request.getParameter("pgno");
	int pgno=1;
if(pgnostr!=null)
{
	pgno=Integer.parseInt(pgnostr);
}else
{
	for(i=0;i<10;i++)
		formpara[i]="";
	formpara[0]=request.getParameter("opr_cde");
	formpara[1]=request.getParameter("checkuser");
	String[] formparaPre=null;
	if(request.getParameter("checkorgn")!=null)
	{
		formparaPre=request.getParameterValues("checkorgn");
	}else
	{
		formparaPre=obj_data.getdata();
	}
	if(request.getParameter("checkdate1")!=null)
	{
		from_time1=request.getParameter("from_year1")+"-"+request.getParameter("from_month1")+"-"+request.getParameter("from_day1");
		to_time1=request.getParameter("to_year1")+"-"+request.getParameter("to_month1")+"-"+request.getParameter("to_day1");
		formpara[3]=from_time1;
		formpara[4]=to_time1;
	}
	if(request.getParameter("checkdate2")!=null)
	{
		from_time2=request.getParameter("from_year2")+"-"+request.getParameter("from_month2")+"-"+request.getParameter("from_day2");
		to_time2=request.getParameter("to_year2")+"-"+request.getParameter("to_month2")+"-"+request.getParameter("to_day2");
		formpara[5]=from_time2;
		formpara[6]=to_time2;
	}
	if(request.getParameter("checkno")!=null)
	{
		formpara[7]=request.getParameter("lognum1");
		formpara[8]=request.getParameter("lognum2");
	}
	if(request.getParameter("checkname")!=null)
	{
		formpara[9]=(request.getParameter("username") ).trim();
	}

//	for(i=0;i<10;i++)
//		out.println("parapre="+formparaPre[0]);
	try
	{
		obj_user.setFormParaPre(ZConst.QUERY_CUSTENTTLIST,formparaPre);
		obj_user.setFormPara(ZConst.QUERY_CUSTENTTLIST,formpara);
	}
   catch(NormalException e)
   {
		if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
   } 
}	//end if pg!=null

	info=obj_user.getRetValueArra();

//	boolean ishave = false;
	
	int pglen=7;
	int totalpg=0;
	
/*
	if(info!=null)
	{
		userid=Objects.getValue(i,"C_CLNT_CDE",info);
	}
*/
%>

<font face="����" size="4"> 
<p align="center">��Ա�嵥</p>
</font>
  
<form name="form1"  action="Zedit_UserInfo.jsp">
      <table width="100%" border="1" cellspacing="0" cellpadding="0" class="td" bgcolor="#F4FFF4" bordercolor="#009966" bordercolorlight="#FFFFFF">
        <tr bgcolor="#E1FFE1"> 
          <td width="3%" height="27">&nbsp;</td>
          <td width="10%" height="27"> 
            <div align="center">��Ա�ʺ� </div>
          </td>
          <td width="11%" height="27"> 
            <div align="center">�ͻ����</div>
          </td>
          <td width="8%" height="27"> 
            <div align="center"> ������ </div>
          </td>
          <td width="12%" height="27" bgcolor="#E1FFE1"> 
            <div align="center">ע��ʱ��</div>
          </td>
          <td width="15%" height="27"> 
            <div align="center">��׼ʱ��</div>
          </td>
          <td width="17%" height="27" bgcolor="#E1FFE1"> 
            <div align="center">�ϴε�¼ʱ��</div>
          </td>
          <td width="8%" height="27"> 
            <div align="center"> ��¼���� </div>
          </td>
          <td width="8%" height="27"> 
            <div align="center">�ͻ���Դ</div>
          </td>
          <td width="8%" height="27"> 
            <div align="center">״̬</div>
          </td>
        </tr>
		<%	if (info==null)
			{	%>
				<tr> 
				 <td valign="top" colspan="10" align="center"><font color=red>û���ҵ���Ա��¼��<font></td>
				</tr>
		<%	}else
			{
				totalpg=(info.length-1+pglen-1)/pglen;
				int t1=(pgno-1)*pglen+1;
				int t2=(pgno)*pglen+1;
				if(t2>info.length)t2=info.length;
				String status="";
				for(i=t1;i<t2;i++)
				{ 
					int tempint=Integer.parseInt(Objects.getValue(i,"C_VERIFY",info));
					switch(tempint)
					{
						case 0:
							status="δ��";
							break;
						case 1:
							status="��ͨ";
							break;
						case 2:
							status="����";
							break;
						case 3:
							status="OpenCover";
							break;
						case 9:
							status="ע��";
							break;
					}
					%>
    			  <tr>
	       		<td>
				<% if (i==t1)
					{ %>
						<input type="radio" name="radio" value="<%=i%>" checked>
				<%	}else
					{	%>
						<input type="radio" name="radio" value="<%=i%>">
				<%	}	%>
					</td>
					<td><%=Objects.getValue(i,"C_USER_ID",info)%> &nbsp;</td>
       			<td><%=Objects.getValue(i,"C_CLNT_CDE",info)%> &nbsp;</td>
       			<td><%=Objects.getValue(i,"C_CMPNY_AGT_CDE",info)%> &nbsp;</td>
        			<td><%=Objects.getValue(i,"T_CRT_TM",info)%> &nbsp;</td>
        			<td><%=Objects.getValue(i,"T_VERIFY_TM",info)%> &nbsp;</td>
        			<td><%=Objects.getValue(i,"T_LASTLOGIN_TM",info)%> &nbsp;</td>
        			<td><%=Objects.getValue(i,"N_LOGIN",info)%> &nbsp;</td>
        			<td><%=Objects.getValue(i,"C_NET_CNM",info)%> &nbsp;</td>
        			<td><%=status%> &nbsp;</td>
    			  </tr>
      	<%	} %>
       </tr>
      </table>
      <table width="100%" border="0" cellspacing="0" cellpadding="0" bgcolor="#E1FFE1">
        <tr>
          <td>
            <input type="submit" name="accept" value="�޸Ļ�Ա����">
          </td>
          <td>
            <input type="submit" name="modify" value="��������" onclick="ChgAction(form1,'UserVerify.jsp');return true;">
          </td>
			<script language="javascript1.2" src="../art_open.js"></script>
          <td>
			   <a href="Zprint_userlist.jsp" onclick="return js_openpage(this.href);">
			      ��ӡ�嵥
			   </a>
          </td>
        </tr>
      <%	} //end for info==null
      %>
       </table>

 </form>

<table width="100%" border="0" cellspacing="0" cellpadding="0" class="td">
	<tr>
		<td align="right" width="40%">
		<%if (pgno>1){%>
			<a href="editUserinfolist.jsp?pgno=<%=1%>">[��ҳ]</a>&nbsp;&nbsp;
			<a href="editUserinfolist.jsp?pgno=<%=pgno-1%>">[��һҳ]</a>
		<%}else
		  { out.println("[��ҳ]&nbsp;&nbsp;[��һҳ]");	}%>  
		</td>
		<td align="center" width="20%" valign="top">
			<p align=center>��ʾ<%=pgno%>/<%=totalpg%></p>
		</td>
		<td align="right" width="40%">
		<%if (pgno < totalpg){%>
			<a href="editUserinfolist.jsp?pgno=<%=pgno+1%>">[��һҳ]</a>&nbsp;&nbsp;
			<a href="editUserinfolist.jsp?pgno=<%=totalpg%>">[βҳ]</a>
		<%}else
		  { out.println("[��һҳ]&nbsp;&nbsp;[βҳ]");	}%>  
		</td>
	</tr>
  </table>

<%@ include file="public/bottom.jsp" %>
