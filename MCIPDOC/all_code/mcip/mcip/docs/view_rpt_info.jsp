<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=index.css>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">

<SCRIPT LANGUAGE="JavaScript" SRC="tool.js"></SCRIPT>
<%@ include file="public/Public.jsp" %>

<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr>

<%@ include file="public/PublicInquireLeft.jsp" %> 
    <td width="613" height="288" valign="top"> <br>
      <img src="images/m_inq3.gif" width="150" height="31" alt="������ѯ">


<jsp:useBean id="obj"  scope="page" class="beans.ZPolicyInfoBean"/>
<%

	String para=request.getParameter("selectno");
	String[][] info=null;
	String insrman="";
	String[] formpara=new String[1];
	String plyno="";

if(para.length()>0)
{
	int loc=para.indexOf("-");
	formpara[0]=para.substring(0,loc);
	int loc2=para.indexOf("-",loc+1);
	plyno=para.substring(loc+1,loc2);
	insrman=para.substring(loc2+1);
//	String ss3=ss.substring(loc+1);

	try
	{
		obj.setFormPara(ZConst.GET_CASERPTINFO,formpara);
		info=obj.getRetValueArra();
	}
   catch(NormalException e)
   {
		if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
   } 
}

%>

<p><font color="#EFB281">��</font> <font color="#0000CC">������ϸ��Ϣ</font><br></p>
<% if(para.length()==0 || info==null)
	{
		out.println("û���ҵ��ı�����ϸ��¼��");
	}else
	{	%>
    <table border="0" bgcolor="#FFFFFF">
     	 <tr >
           <td bgcolor="#F6F6F6">������:</td>
	   <td><%=plyno%></td>
 	 </tr>
     	 <tr >
           <td bgcolor="#F6F6F6">��������:</td>
	   <td><%=insrman%></td>
 	 </tr>
     	 <tr >
           <td bgcolor="#F6F6F6">������:</td>
	   <td><%=formpara[0]%></td>
 	 </tr>
         <tr> 
             <td bgcolor="#F6F6F6">�ָ�ʱ��:</td>
	     <td> <%=Objects.getValue(1,"T_ACCDNT_TM",info)%></td>
          </tr>
          <tr> 
            <td bgcolor="#F6F6F6">���յص�: </td>
	     <td><%=Objects.getValue(1,"C_ACCDNT_SPOT",info)%></td>
          </tr>
          <tr> 
            <td bgcolor="#F6F6F6">����ԭ��:</td>
	     <td> <%=Objects.getValue(1,"C_ACCDNT_CAUS",info)%></td>
          </tr>
          <tr> 
            <td bgcolor="#F6F6F6">��ʧ���:</td>
	     <td> <%=Objects.getValue(1,"C_LOS_DTL",info)%></td>
          </tr>
          <tr> 
            <td bgcolor="#F6F6F6">������:</td>
	     <td><%=Objects.getValue(1,"N_RPT_AMT",info)+" "+Objects.getValue(1,"C_CUR_SBL",info)%></td>
	 </tr>
	 <tr>
	   <td colspan="2">&nbsp;</td>
	</tr>
	 <tr>
	   <td bgcolor="#7CA3E9" colspan="2"></td>
	</tr>
	<tr>
            <td bgcolor="#F6F6F6">����������:</td>
	     <td><%=Objects.getValue(1,"C_RPT_NME",info)%></td>
	</tr>
	<tr >
          <td bgcolor="#F6F6F6">��������ϸ��ַ�绰:</td>
          <td><%=Objects.getValue(1,"c_rpt_addr_tel",info) %> </td>
	</tr>
     </table>
<%	}	%>
        <br> 
  <input align="center" type="button" value="��  ��" name="B44" onclick='javascript:history.back();'>  

	 </td>
  </tr>
</table>

<img src="images/bline.gif" width="778" height="1"><br>
<br>
<script language="JavaScript" src="bottom.js"> </script>

</body>
</html>
