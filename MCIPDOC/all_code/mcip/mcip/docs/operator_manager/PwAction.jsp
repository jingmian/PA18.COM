
<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>
<div>
<jsp:useBean id="cb"  scope="request" class="beans.UserManagerBean"/>

<jsp:setProperty name="cb" property="*"/>

<%  //for get login para and to bean

    SessionUser mySession = sessionuser ;//SessionUser.getSessionUser();
    String sessionIdStr =  request.getParameter("sessionId");
    int sessionIdNum = 0;
    sessionIdStr =  Code.Decrypt(sessionIdStr);
    sessionIdNum = mySession.ProcessSession(Const.SESSAUTH,sessionId);
    
    String operInfos[] = new String[6];
    operInfos[0] = request.getParameter("C_OPR_CDE");
    operInfos[1] = request.getParameter("C_OPR_PW");
    operInfos[2] = request.getParameter("C_EMP_CDE");
    operInfos[3] = "";
    operInfos[4] = mySession.getuserId(sessionIdNum);
	operInfos[5] = mySession.getadminFlag(sessionIdNum);

	String retArra[][] = null;


	
	
	try
    {
        String paras[] ={operInfos[0]};
        cb.setFormPara(ZConst.QUERY_OPTRINFO,operInfos);
		retArra = cb.getRetValueArra();
    }
    catch(NormalException e)
    {
 	   if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
    }
    int c_acredt_cde = Objects.getColNum("C_ACREDT_CDE",retArra);
	operInfos[4] = retArra[1][c_acredt_cde];
	

    boolean IsAccept = false;
   // for(int i=0;i<6;i++)
   //  out.println(operInfos[i]+",");
    try
    {
        cb.setFormPara(ZConst.UPDATE_OPERATOR,operInfos);
    }
    catch(NormalException e)
    {
 	   if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
    }
    
    IsAccept = cb.getRetValueBool();
    String errText= new String("you failure");
    if(IsAccept)
    {
%>
<form>
<font color="#0066CC"><span class="unnamed3">  �޸�����ɹ� ,���ס������.
 &nbsp;&nbsp; <input type="button"  name="button1" value="����" onClick="javascript:history.back()">
</form>
</span></font>
<%

       // out.println("<h2>�ύ�ɹ�����ȴ�ƽ����˾���˽��</h2>");
    }
    else
    {
%>
<font color="#0066CC"><span class="unnamed3"> �޸�����ʧ��</span></font>
<%
        throw new ServletException("<h2>�޸�����ʧ�ܣ�����ƽ����˾��ϵ</h2>");
     }

%>
<%@ include file="public/bottom.jsp" %>



