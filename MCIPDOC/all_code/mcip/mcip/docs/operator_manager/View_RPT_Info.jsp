<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp"%>
<jsp:useBean id="pb"  scope="session" class="beans.PolicyInfoBean"/> 
<jsp:setProperty name="pb" property="*"/>
<%
/*
*****************************GENERAL INFORMATION***********************************************
*Program ID : View_RPT_Info.jsp
*Directory : /data1/pa18/nul/mcip/public_html/operator_manager/
*URL : http://10.16.102.1:8800/operator_manager/View_RPT_Info.jsp
*Previous Page : Rpt_FlwUp_List.jsp
*Next Page : none (can only back to the previous page)
*Author : Lawrence Kang
*Created Date : 2000/10/12
*Last Updated : 2000/10/12
*Status : submited for test
*Function : I.Display the deatil information of selected report
*============================MODIFIED HISTORY==================================================
*Date : 
*Time : 
*Modify id : 
*Modifier : 
*Reason : 
***********************************************************************************************
*/
%>
<%
String index = "";
String reportNo = "";
String result[][] = null;

int indexRptNo =0;
int indexAccdntTm =0;
int indexAccdntSpot =0;
int indexAccdntCaus =0;
int indexLosDtl =0;
int indexRptAmt =0;
int indexCurSbl =0;
int indexRptNme =0;
int indexRptAddrTel =0;

index = request.getParameter("index");
reportNo = request.getParameter("rptNoList"+index);

try
{
	pb.setFieldValue(Const.GET_CASERPTINFO,reportNo);
	result = pb.getRetValueArra();
}
catch(NormalException e)
{
//	if(NormalExceptionHandler.IsSevere(e))
//		throw NormalExceptionHandler.Handle(e);
	result = null;
}
%>

<div align="center"><font color="#0066CC" class="unnamed3">������ϸ��Ϣ</font></div>
<table width="96%" border="1" cellspacing="0" cellpadding="0" align="center" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6" height="140">

<%
if (result != null && result.length>1){
	indexRptNo = Objects.getColNum("C_RPT_NO",result);//�ⰸ��
	indexAccdntTm = Objects.getColNum("T_ACCDNT_TM",result);//����ʱ��
	indexAccdntSpot = Objects.getColNum("C_ACCDNT_SPOT",result);//���յص�
	indexAccdntCaus = Objects.getColNum("C_ACCDNT_CAUS",result);//����ԭ��
	indexLosDtl = Objects.getColNum("C_LOS_DTL",result);//��ʧ���
	indexRptAmt = Objects.getColNum("N_RPT_AMT",result);//������
	indexCurSbl = Objects.getColNum("C_CUR_SBL",result);//����
	indexRptNme = Objects.getColNum("C_RPT_NME",result);//������
	indexRptAddrTel = Objects.getColNum("C_RPT_ADDR_TEL",result);//�����˵�ַ�绰
%>

<tr>
	<td bgcolor="#9DEEDE" width="19%"> 
		����ʱ�䣺
	</td>
	<td bgcolor="#DFF9F3" width="81%">
		</strong><%=result[1][indexAccdntTm]%>
	</td>
</tr>
<tr>
	<td bgcolor="#9DEEDE" width="19%"> 
		���յص㣺
	</td>
	<td bgcolor="#DFF9F3" width="81%">
		<%=result[1][indexAccdntSpot]%>
	</td>
</tr>
<tr>
	<td bgcolor="#9DEEDE" width="19%"> 
		����ԭ��
	</td>
	<td bgcolor="#DFF9F3" width="81%">
		<%=result[1][indexAccdntCaus]%>
	</td>
</tr>
<tr>
	<td bgcolor="#9DEEDE" width="19%"> 
		��ʧ�����
	</td>
	<td bgcolor="#DFF9F3" width="81%">
		<%=result[1][indexLosDtl]%>
	</td>
</tr>
<tr>
	<td bgcolor="#9DEEDE" width="19%"> 
		���ս�
	</td>
	<td bgcolor="#DFF9F3" width="81%">
		<%=result[1][indexRptAmt]+"("+result[1][indexCurSbl]+")"%>
	</td>
</tr>
<tr>
	<td bgcolor="#9DEEDE" width="19%"> 
		�����ˣ�
	</td>
	<td bgcolor="#DFF9F3" width="81%">
		<%=result[1][indexRptNme]%>
	</td>
</tr>
<tr>
	<td bgcolor="#9DEEDE" width="19%"> 
		�����˵�ַ�绰��
	</td>
	<td bgcolor="#DFF9F3" width="81%">
		<%=result[1][indexRptAddrTel]%>
	</td>
</tr>
<%}else{%>
<tr>
	<td bgcolor="#9DEEDE" width="100%"> 
		<font color="red">û�в鵽��������ϸ��Ϣ��</font>
	</td>
</tr>
<%}%>
</table>
	<div align="center">
	<form>
		<input type="button" value="����" onclick="history.back()" title="������һҳ">
	</form>
	</div>
<%@ include file="public/bottom.jsp"%>