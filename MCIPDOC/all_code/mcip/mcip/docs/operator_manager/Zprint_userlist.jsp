<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��ӡ</title>
<style type="text/css">
<!--
table { font-size : 11pt }
body { font-family : "����";   font-size : 11pt }
-->
</style></head>

<body>
<%@ page language="java" import="java.lang.*,java.util.*,beans.*,exceptions.*,constant.*,utility.*" errorPage="ErrOut.jsp" contentType= "text/html; charset=gb2312"%>
<jsp:useBean id="obj_user"  scope="session" class="beans.Zuserbean"/>

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

	info=obj_user.getRetValueArra();

%>

<font face="����" size="4"> 
<p align="center">��Ա�嵥</p>
</font>
  <p align="center"> 
    <input type="submit" name="Submit" value="��ӡ" onClick="javascript:window.print()">
  </p>
  
     <table width="100%" border="1" cellspacing="0" cellpadding="0" class="td" bgcolor="#F4FFF4" bordercolor="#009966" bordercolorlight="#FFFFFF">
        <tr bgcolor="#E1FFE1"> 
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
				String status="";
				for(i=1;i<info.length;i++)
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
      	<%	} 
			}%>
       
      </table>
  <p align="center"> 
    <input type="submit" name="Submit" value="��ӡ" onClick="javascript:window.print()">
  </p>

 </body>
</html>
 