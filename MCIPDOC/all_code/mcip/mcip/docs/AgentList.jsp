<%/*
Modified:2001-11-16
By : L.K
Description:�������Ƴб����ﵽInputPolicy.jsp
ID:LK0001
*****
Modified:2001-12-4
By : L.K
Description:�б�������Ŀ�ĸۺ����˸�
ID:LK0002
*/
%>
<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=table.css>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">

<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="tool.js"></SCRIPT>
<%@ include file="public/Public.jsp" %>
<jsp:useBean id="ob"  scope="session" class="beans.OperationBean"/>
<jsp:setProperty name="ob" property="*"/>
<jsp:useBean id="pb"  scope="session" class="beans.PolicyInfoBean"/>
<jsp:setProperty name="pb" property="*"/>

<% String Agent[][] = null;
   int AgentLen = 0;
   int i = 0;
   String ClientId = sessionbuffer.getCompanyId(Locate);//getClientId(Locate);
   String TranType = ob.getTranType();
   String[] Transit = ob.getHomeTransit();
   String FormPara[] = new String[2];

   FormPara[0] = ClientId;
   TranType = Servlets.GetInsrnc(TranType,Transit);
   FormPara[1] = TranType;

   String IsPageNow = request.getParameter("PAGE");
    try
    {
        if(IsPageNow == null)
	{
 	        pb.setFormPara(Const.GET_AGENCYLIST,FormPara);
 	}
        Agent = pb.getRetValueArra();
        ob.setStep(Const.STEP_BEG);

    }
    catch(NormalException e)
    {
 	if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
 	else if(NormalExceptionHandler.IsWarning(e))
 	    WarnMsg = e.getErrDesc();

    }
   // for(int p=0 ; p< Agent[0].length;p++)
   //   out.println(Agent[0][p]);
   AgentLen = Servlets.getLen(Agent);
     if(AgentLen==0){
   %>
      <jsp:forward page="NoAngent.jsp"/>
   <%}
   int c_agt_agr_no =0;
   int n_sub_co_no = 0;
   int c_insrnc_cde =0;

    int ArrayRowLen =  AgentLen;
    String PageListUrl = "AgentList.jsp";
    String FormName = "agt_list";
    String ListParas="?a=a";

%>
<%@ include file="PageListPre.jsp" %>
<%
        String[] Col = {"c_agt_agr_no","c_insrnc_cde","n_sub_co_no"};
	String JS = ServTool.JSMakeOfList(Agent,Col,begini,endi);
%>
<script LANGUAGE="JavaScript">
<%out.println(JS);%>
</script>

<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr>
<%@ include file="public/PublicPlyLeft.html" %>

    <td width="613" height="288" valign="top"> <br>
      <img src="images/agent.gif" width="150" height="31" alt="����Э��">

 <table border="0" width="95%" cellpadding="4" >

  <tr>
<td width="5%">��</td>
    <td >

<form  name="agt_list" METHOD="POST" >
        <table width="100%" border="0" cellspacing="0" cellpadding="0">

          <tr>
            <td colspan="2" height="15" align="center">
              <table width="100%" border="1" cellspacing="1" cellpadding="0" bordercolor="#CCCCFF" bordercolorlight="#0099FF" bordercolordark="#FFFFFF">
                <tr bgcolor="#99FFFF" align="center">
		<td width="15%" bgcolor="#C0C0C0" align="center">����Э���</td>
		<td width="15%" bgcolor="#C0C0C0" align="center">����</td>
		<td width="24%" bgcolor="#C0C0C0"	align="center">����</td>
		<td width="13%" bgcolor="#C0C0C0"	align="center">��Ч����</td>
		<td width="13%" bgcolor="#C0C0C0"	align="center">��ֹ����</td>
		<%/**LK0002+B*/%>
		<td width="10%" bgcolor="#C0C0C0" align="center">���˸�</td>
		<td width="10%" bgcolor="#C0C0C0" align="center">Ŀ�ĸ�</td>
		<%/**LK0002+E*/%>
	    </tr>
<%
   if(AgentLen > 1)
   {
      c_agt_agr_no = Objects.getColNum("c_agt_agr_no",Agent);
      n_sub_co_no = Objects.getColNum("n_sub_co_no",Agent);
      c_insrnc_cde = Objects.getColNum("c_insrnc_cde",Agent);
     int c_insrnc_cnm = Objects.getColNum("c_insrnc_cnm",Agent);
     int c_crgo_cnm = Objects.getColNum("c_crgo_cnm",Agent);
     int t_effc_tm = Objects.getColNum("t_effc_tm",Agent);
     int t_co_end_tm = Objects.getColNum("t_co_end_tm",Agent);
	 /**LK0001+B*/
	 int c_limit_desc = Objects.getColNum("c_limit_desc",Agent);
	 /**LK0001+E*/
	 /**LK0002+B*/
	 int c_from_prt = Objects.getColNum("c_from_prt",Agent);
	 int c_to_prt = Objects.getColNum("c_to_prt",Agent);
	 /**LK0002+E*/

    for(i = begini ;i< endi;i++ )
    {
%>

    <tr>
      <td width="15%"><a href="#" title="���ѡ��" onclick="selectNo(<%=Const.C_AGENCY_NO%>,<%=i-begini+1%>);setLimitValue('<%=Agent[i][c_limit_desc]%>');return true"><%=Agent[i][c_agt_agr_no]%></a></td>
		<td width="15%"><%=Agent[i][c_insrnc_cnm]%></td>
		<td width="24%"><%=Agent[i][c_crgo_cnm]%></td>
		<td width="13%"><%=Agent[i][t_effc_tm]%></td>
		<td width="13%"><%=Agent[i][t_co_end_tm]%></td>
		<td width="10%"><%=Agent[i][c_from_prt]%>&nbsp;</td>
		<td width="10%"><%=Agent[i][c_to_prt]%>&nbsp;</td>
    </tr>
<%
   }
  }
  else
  {
%>
û��ȡ�ô���Э������
<%
  }
%>
              </table>
            </td>
          </tr>
          <tr>
            <td colspan="2" height="5" align="center">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" height="15" align="right">
	     <%@ include file="PageListNext.jsp" %>
            </td>
          </tr>
          <tr>
            <td colspan="2"><br>ҪͶ��������ѡ�����Э��š�<br><br></td>
          </tr>
          <tr>
            <td colspan="2" height="20">����Э��ţ�
              <select name="<%=Const.C_AGENCY_NO%>" size="1">
                <option value="" selected>��Э���</option>
                <%
                   if(AgentLen > 1)
                   {
                      String TempStr = "";
                      for(i = begini ;i< endi;i++ )
                      {
                         TempStr = Agent[i][c_agt_agr_no] + "&" + Agent[i][c_insrnc_cde] + "&" + Agent[i][n_sub_co_no];
                %>
                          <option value=<%=TempStr%>> <%=Agent[i][c_agt_agr_no]%></option>
                <%
                       }

                    }
                %>
              </select>
			  <input type="hidden" name="LimitDesc" value="">
  <input type="submit" value="��ҪͶ��" name="B12" onclick="ChgAction(agt_list,'InputPolicy.jsp');setAgency(<%=Const.C_AGENCY_NO%>,AGENCYNO,ADDAGENCYNO);return(checkFieldNull(<%=Const.C_AGENCY_NO%>,'3'));">
  <input type="submit" value="���Ʊ���" name="B13" onclick="ChgAction(agt_list,'PolicyList.jsp');return(checkFieldNull(<%=Const.C_AGENCY_NO%>,'3'));">
  <input type="submit" value="�ϴ�����" name="B4" onclick="ChgAction(agt_list,'Upload.jsp');setAgency(<%=Const.C_AGENCY_NO%>,AGENCYNO,ADDAGENCYNO);return(checkFieldNull(<%=Const.C_AGENCY_NO%>,'3'));">

<input type="button" value="ǰһҳ" name="B44" onclick='javascript:history.back();'>



            </td>
          </tr>

        </table>
    <%String sessionid = Code.Encrypt(sessionId);%>
    <input type="hidden" name="sessionid" value="<%=sessionid%>">

    <input type="hidden" name="OPER" value="PLYAPPNEW">
    <input type="hidden" name="AGENCYNO" value="">
    <input type="hidden" name="ADDAGENCYNO" value="">

      </form>
         </td>
    </tr>
  </table>


        </div>


    </td>
  </tr>
</table>


 </td>
  </tr>
</table>

<%@ include file="public/PublicBottom.html" %>

</body>
</html>
<%/*LK0001+B*/%>
<script language="JavaScript">
	function setLimitValue(limitDesc){
		try{
			//alert(limitDesc);
			agt_list.LimitDesc.value=limitDesc;
		}catch(exception){
		}
		return;
	}
</script>
<%/*LK0001+E*/%>
