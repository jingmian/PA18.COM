<%
/*
*****************************GENERAL INFORMATION***********************************************
*Program ID : Clause_List.jsp
*Directory : /data1/pa18/nul/mcip/public_html/docs/
*URL : http://10.16.102.1:8800/Clause_List.jsp
*Previous Page : consult_List.jsp
*Next Page : ZView_Clause.jsp
*Author : Zhu Ling Xiang
*Created Date : 2000-10-26
*Last Updated : 
*Status : 
*Function : I.list all the title of the Clause
*			II.provide the link to the next pages
*============================MODIFIED HISTORY==================================================
*Date : 2000-10-28
*Time : 14:16:18
*Modify id : 0001
*Modifier : WuYan
*Reason : I.Modify Html Style of Clause list 
*		II. process logic of code
***********************************************************************************************
*/
%>
<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=table.css>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">
<%@ include file="public/NoLoginPublic.html" %>

<%@ page language="java" import="java.lang.*,java.util.*,beans.*,exceptions.*,constant.*,utility.*" errorPage="ErrOut.jsp" contentType= "text/html; charset=gb2312"%>
<jsp:useBean id="obj"  scope="page" class="beans.ZPolicyInfoBean"/>

<%
	//String username = request.getParameter("username");
	String username = "Guest";
	if(username==null)username = "1";
	String[] formpara=new String[3];
	String[][] info_1=null;
	try
	{
		formpara[0]="";
		formpara[1]="";
		formpara[2]=username;
		obj.setFormPara(ZConst.GET_CLAUSELIST,formpara);
		info_1=obj.getRetValueArra();
	}
   catch(NormalException e)
   {
		if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
   }  // end try

	int i=0;
//debug
//	if(info_1!=null)out.println("infolen="+info_1.length);


%>

	<table border="0" cellpadding="0" cellspacing="0" width="100%">
	  <tr>
	     <%@ include file="public/PublicConsultLeft.html" %> 
	     <td  valign="top">
     	       <p>
                 <img src="images/con_art.gif" width="150" height="31" alt="��������">
	       </p>
		����ѡ����Ҫ�鿴<B>����</B>�������Ŀ��<br>
		<table border="0"  width="95%" cellpadding="4">
	           <tr>
		     <td>
			<script language="javascript1.2" src="art_open.js"></script>
			<!--p>
			 ��<font color="#EFB281">��</font>
			   <a href="ZView_Clause.jsp?path=dom_air_cargo.txt" onclick="return js_openpage(this.href);">
			      ���ں��ջ������䱣������
			   </a>
			</p-->
			<p>
			 ��<font color="#EFB281">��</font>
			   <a href="ZView_Clause.jsp?path=dom_water_land_cargo.txt" onclick="return js_openpage(this.href);">
			      ����ˮ·��½·�������䱣������
			   </a>
			</p>
			<p>
			  ��<font color="#EFB281">��</font>
			    <a href="ZView_Clause.jsp?path=sea_cargo.txt" onclick="return js_openpage(this.href);">
			      ����������ﱣ������
			    </a>
			</p>
			<p>
			  ��<font color="#EFB281">��</font>
			    <a href="ZView_Clause.jsp?path=air_cargo.txt" onclick="return js_openpage(this.href);">
			      ���ջ������䱣������
			    </a>
			</p>
			<p>
			  ��<font color="#EFB281">��</font>
			    <a href="ZView_Clause.jsp?path=land_cargo.txt" onclick="return js_openpage(this.href);">
			      ½�ϻ������䱣������𳵡�������
			    </a>
			 </p>
			</td>
		      </tr>
		</table> <br>
		����ѡ����Ҫ�鿴<B>������</B>�������Ŀ��<br>
		<table width="95%" border="0" cellpadding="4">
		  <tr><td bgcolor="#6633CC" colspan="3"></td></tr>
		  <tr>
		    <td height="30" width="25%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr18.html" onclick="return js_openpage(this.href);">
   		        �չ�������
		      </a>
  		    </td>
		    <td height="30" width="35%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr20.html" onclick="return js_openpage(this.href);">
   		        ս��������
		      </a>
		    </td>
		    <td height="30" width="40%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr24.html" onclick="return js_openclause(this.href);">
   		        ��������������
		      </a>
		    </td>
		  </tr>
		  <tr>
		    <td height="30" width="25%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr25.html" onclick="return js_openclause(this.href);">
	   	        ��©������
		      </a>
		    </td>
		    <td height="30" width="35%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr33.html" onclick="return js_openclause(this.href);">
   		        ����������
		      </a>
		    </td>
		    <td height="30" width="40%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr29.html" onclick="return js_openclause(this.href);">
   		        ��ˮ������������
		      </a>
		    </td>
		  </tr>
		  <tr>
		    <td height="30" width="25%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr31.html" onclick="return js_openclause(this.href);">
			��ζ������
		      </a>
		    </td>
		    <td height="30" width="35%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr34.html" onclick="return js_openclause(this.href);">
	   	        ����������
		      </a>
		    </td>
		    <td height="30" width="40%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr32.html" onclick="return js_openclause(this.href);">
   		        �ܳ�������������
		      </a>
		    </td>
		  </tr>
		  <tr>
		    <td height="30" width="25%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr27.html" onclick="return js_openclause(this.href);">
   		        ����������
		      </a>
		    </td>
		    <td height="30" width="35%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr28.html" onclick="return js_openclause(this.href);">
   		        ��װ����������
		      </a>
		    </td>
		    <td height="30" width="40%">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr30.html" onclick="return js_openclause(this.href);">
   		        ���ӡ�մ��������
		      </a>
		    </td>
		  </tr>
		  <tr>
		    <td height="30" colspan="3">
		      <font color="#EFB281">��</font>
		      <a href="clause/rdr23.html" onclick="return js_openclause(this.href);">
   		        ͵�ԡ��������������
		      </a>
		    </td>
		  </tr>
		</table><br>
		����ѡ����Ҫ�鿴<B>Ӣ��Э���������</B>�������Ŀ��<br>
		<table width="95%" border="0" cellpadding="0">
			  <tr><td bgcolor="#6633CC" colspan="3"></td></tr>
			  <tr>
				<td height="30" align="left">
					<font color="#EFB281">��</font>
				   <a href="ZView_Clause.jsp?path=ICC-A.txt" onclick="return js_openpage(this.href);">INSTITUTE CARGO CLAUSES (A)</a>
				</td>
				<td height="30" align="left">
					<font color="#EFB281">��</font>
				   <a href="ZView_Clause.jsp?path=ICC-B.txt" onclick="return js_openpage(this.href);">INSTITUTE CARGO CLAUSES (B)</a>
				</td>
				<td height="30" align="left">
					<font color="#EFB281">��</font>
				   <a href="ZView_Clause.jsp?path=ICC-C.txt" onclick="return js_openpage(this.href);">INSTITUTE CARGO CLAUSES (C)</a>
				</td>
			  </tr>
		 </table>   
	    </td>
	  </tr>
 </table>   

<%@ include file="public/PublicBottom.html" %> 
</body>
</html>
