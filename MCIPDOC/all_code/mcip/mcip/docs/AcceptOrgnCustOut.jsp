<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link rel="stylesheet" href="style.css">

<title>�����ͻ�����¼��</title>
<base target="main">

</head>

<body>

<%@ include file="public/PublicCust.jsp" %>      

<jsp:useBean id="cb"  scope="request" class="beans.CustManagerBean"/> 
<jsp:setProperty name="cb" property="*"/>

<%  //for get login para and to bean
    String CustOrgn[] = null;
    String CustEntity[] = null;
    boolean IsAccept = false;

    Servlets servlets = new Servlets();
    servlets.EntityServlet(request);
	String Province = request.getParameter("C_PROVINCE");
	String City = request.getParameter("C_CITY");
	request.setAttribute("My_Province", Province);
	request.setAttribute("My_City",City);

    CustEntity = servlets.getDelivery();
    servlets.OrgnCustServlet(request);
    CustOrgn = servlets.getDelivery();
    CustEntity[TabEty.C_USER_ID] =  CustEntity[TabEty.C_USER_ID].trim();
    String registerType = request.getParameter("RegisterType");
    out.println("registerType:"+registerType);
                 
    try
    {
        //Is to be check custorgn fields
        System.out.println("Begin to call corba");
        cb.setRegisterType(registerType);
        cb.setFormParaPre(Const.ACCEPT_ORGACUST,CustEntity);
        cb.setFormPara(Const.ACCEPT_ORGACUST,CustOrgn);
    }
    catch(NormalException e)
    {
 	if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
 	else if(NormalExceptionHandler.IsWarning(e))
 	    WarnMsg = e.getErrDesc();

    }

    IsAccept = cb.getRetValueBool();

    if(IsAccept)
    {
    //
%>
<jsp:forward page="RegisterSucc.jsp"/>
�����ͻ�����¼���ύ�ɹ���
<h3>�����ͻ�����¼���ύ�ɹ�,��ȴ�ƽ����˾���˽��</h3>
<%

//       out.println("<h3>�����ͻ�����¼���ύ�ɹ�,��ȴ�ƽ����˾���˽��</h3>");
    }
    else
    {
%>
�����ͻ�����¼���ύʧ�ܡ�
<h3>�����ͻ�����¼���ύʧ�ܣ�����ƽ����˾��ϵ</h3>
<%
//        throw new ServletException("<h3>�����ͻ�����¼���ύʧ�ܣ�����ƽ����˾��ϵ</h3>");
     }

%>
</body>
</html>
