<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��Ա����</title>
<link rel="stylesheet" href="style.css">
</head>

<body>
<div align="right">

<address style="border-bottom: 1px dotted">
  ƽ������
</address>
</div>

<%@ page language="java" import="java.lang.*,java.util.*,beans.*,exceptions.*,constant.*,utility.*"  contentType= "text/html; charset=gb2312"%>

<jsp:useBean id="obj_buss2"  scope="session" class="beans.Zbussbean"/> 
<jsp:useBean id="obj_data"  scope="session" class="beans.Zdatabean"/>

<% 
	String formpara[] = new String[1];
	boolean IsAccept = false;

//	formpara[0]=request.getParameter("c_opr_cde");
	formpara[0]=obj_data.getinfo2();

    try
    {
    	//notice:formparapre had been set at Print_View.jsp
      obj_buss2.setFormPara(ZConst.UPDATE_PRINTINFO,formpara);
    }
    catch(NormalException e)
    {
 		if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
    }

    IsAccept = obj_buss2.getRetValueBool();
    if(IsAccept)  
    { %>
       <p> �����ɹ�   </p>
 <% }
    else {  %>
       <p> ����ʧ��    </p>
    <%   }    %>


  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input align="center" type="button" value="��  ��" name="B44" onclick='javascript:history.go(-3);'>  

</body>
</html>