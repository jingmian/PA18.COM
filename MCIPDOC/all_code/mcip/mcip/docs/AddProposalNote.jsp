<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=table.css>
<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">

<%@ include file="public/Public.jsp" %>


<jsp:useBean id="ob"  scope="session" class="beans.OperationBean"/> 
<jsp:setProperty name="ob" property="*"/>
<jsp:useBean id="sb"  scope="request" class="beans.StaticInfoBean"/> 
<jsp:setProperty name="sb" property="*"/>





<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr>

<%@ include file="public/PublicPlyLeft.html" %>

    <td width="613"  valign="top">
<br><br>

<%String AgencyNo = request.getParameter("AGENCYNO");
	if(AgencyNo == null)AgencyNo = "";
%>
<form method="POST" action="AddProposalNoteOut.jsp" onSubmit="return ValidNull(C_USER_REMARK,false);">
  <p> ������ţ�&nbsp;<input type="text" disabled name="C_DOC_NO_TEMP" size="20" value="<%=request.getParameter("C_DOC_NO")%>">
                      <input type="hidden"  name="C_DOC_NO" size="20" value="<%=request.getParameter("C_DOC_NO")%>">  
   <%
      String x = request.getParameter("n_sum_prm");      
   %>
  <% if(AgencyNo.equals(Const.EDRSMTAPP)){     
  %>
  <br>ԭ����   <input type="text" disabled  name="n_prm_old" size="12" value="<%=request.getParameter("n_prm_old_value")%>">

      ���±��� <input type="text" disabled  name="n_sum_prm" size="12" value="<%=request.getParameter("n_sum_prm_value")%>">
	  ���ѱ仯 <input type="text" disabled  name="n_prm_var" size="12" value="<%=request.getParameter("n_prm_var_value")%>"><%=request.getParameter("PrmCurName")%> 
  <br>ԭ����   <input type="text" disabled  name="n_rate_old" size="12" value="<%=request.getParameter("n_rate_old_value")%>">%
	  �·���   <input type="text" disabled  name="N_RATE" size="12" value="<%=request.getParameter("N_RATE_VALUE")%>">%
  <%}else{%>
    <br>�����ѡ���
    <input type="text" disabled  name="n_sum_prm" size="12" value="<%=request.getParameter("n_sum_prm_value")%>"><%=request.getParameter("PrmCurName")%>     
    <br>�ѡ��ʡ���
    <input type="text" disabled  name="N_RATE" size="12" value="<%=request.getParameter("N_RATE_VALUE")%>">%
  <%}%>
  
  <br>����������<br>
    <textarea  name="C_NO_REPAY" cols="70" rows="2" onkeydown="return false;" ><%=request.getParameter("C_NO_REPAY")%></textarea>
    
  <br>
  �б�������<br>
    <textarea name="C_UNDR_CNDTN" cols="70" rows="5" onkeydown="return false;" ><%=request.getParameter("C_UNDR_CNDTN")%></textarea>
  <br>�˱������<br>
    <textarea name="C_REMARK" cols="70" rows="2"  onkeydown="return false;"><%=request.getParameter("C_REMARK")%></textarea>
  <% if(request.getParameter("PAY_METHOD")!=null){%> 
  
  <br>
  ѡ�񸶿ʽ��<input type="radio" name="PAY_TYPE" value="0">���ϸ���&nbsp;&nbsp;&nbsp;
                <input type="radio" checked name="PAY_TYPE" value="1">���¸���
  <%}%>
  <br>
  <div align="left">
    �͵�ʱ�䣺�ӷ����б�֪ͨ��ʼһ���������ڡ�<br>
  </div>
  <div align=left>
  �������:
  <br>
  <textarea name="C_USER_REMARK" rows=5 cols=70>
  </textarea>*
  </div>
   <input type="hidden" name="AGENCYNO" value="<%=AgencyNo%>">  
              <input type="submit" value=" �� �� " name="B1" >             
              
		<input type="button" value="ǰһҳ" name="B44" onclick='javascript:history.back();'>  	      
	    <input type="hidden" name="temp" value="agr">
  </p>    
</form>

    </td>
        </tr>
      </table>

</td>
  </tr>
</table>
 <% String clientName = sessionbuffer.getuserId(Locate); %> 
<%@ include file="public/PublicBottom.html" %>      

</body>
</html>


