<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>
<jsp:useBean id="obj"  scope="page" class="beans.Zuserbean"/> 
<% 
	int i=0;
   boolean IsAccept = false;
   String formpara[]=new String[1];

	//=======  begin process	=============
	formpara[0]=request.getParameter("supp_no");
	
	
	obj.setFormPara(ZConst.DELETE_SUPPEMAIL,formpara);

    IsAccept = obj.getRetValueBool();
    if(IsAccept)  
    { %>
       <p> �� �� �� ��   </p>
    <% }
    else
    {   %>
       <p> ����ʧ��    </p>
	 <%  }   %>


<p></p>
<p></p>
<%@ include file="public/bottom.jsp" %>



