<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>
<jsp:useBean id="cb"  scope="request" class="beans.UserManagerBean"/>
<jsp:setProperty name="cb" property="*"/>

<% 
   
    SessionUser mySession = sessionuser ;//SessionUser.getSessionUser();

    int sessionIdNum = mySession.ProcessSession(Const.SESSAUTH,sessionId);
    String operInfos[] = new String[6];
    operInfos[0] = request.getParameter("C_OPR_CDE");
    operInfos[1] = request.getParameter("C_OPR_PW");
    operInfos[2] = request.getParameter("C_EMP_CDE");
    operInfos[3] = "";
    operInfos[4] = mySession.getuserId(sessionIdNum);
    //operInfos[5] = mySession.getadminFlag(sessionIdNum);
	operInfos[5] = "0";//no administrator can be added by this page

    boolean IsAccept = false;
    try
    {
        cb.setFormPara(ZConst.ACCEPT_OPERATOR,operInfos);
    }
    catch(NormalException e)
    {
 	if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
    }
    IsAccept = true ;//cb.getRetValueBool();
    String errText= new String("you failure");
   // String[] strs = cb.getFormPara();
   // for(int i=0;i<strs.length ;i++)
   //  out.println(strs[i]);
    if(IsAccept)
    {
%>
   <font color="#0066CC"><span class="unnamed3"> ���Ӻ�̨������Ա�ɹ�,��ȴ�ƽ����˾���˽����
   </span></font>
<%
    }
    else
    {
%>
    <font color="#0066CC"><span class="unnamed3">���Ӻ�̨������Աʧ��,����ƽ����˾��ϵ��
    </span></font>
<%
        throw new ServletException("<h2>���Ӻ�̨������Աʧ�ܣ�����ƽ����˾��ϵ</h2>");
     }

%>
<%@ include file="public/bottom.jsp" %>

