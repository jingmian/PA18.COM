<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��Ա�嵥</title>
<link rel="stylesheet" href="../style/style.css">
</head>

<body>
<div align="right">

<address style="border-bottom: 1px dotted">
  ƽ������
</address>
</div>

<%@ page language="java" import="java.lang.*,java.util.*,beans.*,exceptions.*,constant.*,utility.*"  contentType= "text/html; charset=gb2312"%>
<jsp:useBean id="obj_user"  scope="session" class="beans.Zuserbean"/>
<%
	String info[][]=null;
	int i=0;
	String pgnostr=request.getParameter("pgno");
	int pgno=1;
	if(pgnostr!=null)pgno=Integer.parseInt(pgnostr);
	
	info=obj_user.getRetValueArra();
	int pglen=7;
	int totalpg=(info.length-1+pglen-1)/pglen;

%>


<font face="����" size="4"> 
<p align="center">��Ա�嵥</p>
</font> 
<table width="100%" border="1">
<form name="form1" action="UserVerify.jsp">
  <tr> 
    <td>&nbsp;</td>
    <td bgcolor="#CCCCCC"> 
      <div align="center"><font size="3">��Ա�ʺ�</font></div>
    </td>
    <td bgcolor="#CCCCCC"> 
      <div align="center"><font size="3">�ͻ����</font></div>
    </td>
    <td bgcolor="#CCCCCC"> 
      <div align="center"><font size="3">������</font></div>
    </td>
    <td bgcolor="#CCCCCC"> 
      <div align="center"><font size="3">ע��ʱ��</font></div>
    </td>
    <td bgcolor="#CCCCCC"> 
      <div align="center"><font size="3">��׼ʱ��</font></div>
    </td>
    <td bgcolor="#CCCCCC"> 
      <div align="center"><font size="3">�ͻ���Դ</font></div>
    </td>
  </tr>
		<%	boolean cando=false;//if the number of user of every page that can be submitted=0
			if (info!=null)
			{
				int t1=(pgno-1)*pglen+1;
				int t2=(pgno)*pglen+1;
				if(t2>info.length)t2=info.length;
				for(i=t1;i<t2;i++)
				{    
		%>
    			  <tr>
    			  <% 
//				  out.println("v="+Objects.getValue(i,"C_verify",info)+"!");
    			 if( (Objects.getValue(i,"C_verify",info)).equals("0"))
				 {
						cando=true;		%>
	       			<td><input type="radio" name="radio" value="<%=i%>" checked></td>
<%	 			 
  				 }else
				 {
					out.println("<td>������</td>");
				 } 
%>
    			<td><%=Objects.getValue(i,"C_USER_ID",info)%> &nbsp;</td>
       			<td><%=Objects.getValue(i,"C_CLNT_CDE",info)%> &nbsp;</td>
       			<td><%=Objects.getValue(i,"C_CMPNY_AGT_CDE",info)%> &nbsp;</td>
        			<td><%=Objects.getValue(i,"T_CRT_TM",info)%> &nbsp;</td>
        			<td><%=Objects.getValue(i,"T_VERIFY_TM",info)%> &nbsp;</td>
        			<td><%=Objects.getValue(i,"C_NET_CNM",info)%> &nbsp;</td>
    			  </tr>
      	<%	}
      	}
      %>
<tr>
	<%	if (cando && info!=null){	%>
			<td colspan="4"><div align="center">
			<input type="submit" value="������Ա" name="B12"></div></td>
   <% }	%>
	&nbsp;<td colspan="3"><div align="center">
			<input type="button" value="��ӡ�嵥" name="B122" onClick="javascript:window.print()"></div></td>

 
</tr>
</form>
</table>

 <table width="100%">
	<tr>
		<td align="right" width="40%">
		<%if (pgno>1){%>
			<a href="Verify_Userlist.jsp?pgno=<%=1%>">[��ҳ]</a>&nbsp;&nbsp;
			<a href="Verify_Userlist.jsp?pgno=<%=pgno-1%>">[��һҳ]</a>
		<%}else
		  { out.println("[��ҳ]&nbsp;&nbsp;[��һҳ]");	}%>  
		</td>
		<td align="center" width="20%" valign="top">
			<p align=center>��ʾ<%=pgno%>/<%=totalpg%></p>
		</td>
		<td align="right" width="40%">
		<%if (pgno < totalpg){%>
			<a href="Verify_Userlist.jsp?pgno=<%=pgno+1%>">[��һҳ]</a>&nbsp;&nbsp;
			<a href="Verify_Userlist.jsp?pgno=<%=totalpg%>">[βҳ]</a>
		<%}else
		  { out.println("[��һҳ]&nbsp;&nbsp;[βҳ]");	}%>  
		</td>
	</tr>
  </table>

  <p>&nbsp;</p>
  <input align="center" type="button" value="��  ��" name="B44" onclick='javascript:history.back();'>  

</body>
</html>
