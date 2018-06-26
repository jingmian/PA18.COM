<%@ include file="public/up.jsp" %>
<script language="JavaScript" src="check.js">
</script>
<jsp:useBean id="sb"  scope="session" class="beans.StaticInfoBean"/>
<jsp:setProperty name="sb" property="*"/>
<%
/*
*****************************GENERAL INFORMATION***********************************************
*Program ID : Bus_List.jsp
*Directory : /data1/pa18/nul/mcip/public_html/operator_manager/
*URL : http://10.16.102.1:8800/operator_manager/Bus_List.jsp
*Previous Page : BackManage.jsp
*Next Page : Bus_Forward.jsp
*Author : Lawrence Kang
*Created Date : 2000-10-18 11:21:24
*Last Updated :
*Status : open
*Function : ��ҳ��Ϊҵ�������Ա�ṩһ�����������Լ���Ͻ��Χ�ĸ�������ҵ���嵥��ѡ��������ҵ�������Աѡ���Լ�����Ȥ��
*ʱ��Σ�������Χ�����ַ�Χ�����ѱ��ֺ�ҵ����Դ����ѡ��ʹ��ұߵĸ���ѡ����ѡ���Լ�����Ȥ���嵥���࣬���"�ύ"�ֱ����
*��Ӧ�ĸ���ҳ�档
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
///////////////////////////////////////////////////////////////////////////////////////////////
//PREDEFINE
String dptResult[][] = null;//list of department
String insrncResult[][] = null;//list of inusrance type
String currResult[][] = null;//list of currency
String siteResult[][] = null;//list of site
String formPara[] = null;//list of parameters
String oprCde = "";//operator code
int indexOprCde,indexDptCde,indexDptCnm,indexDptEnm;//index of depart table

///////////////////////////////////////////////////////////////////////////////////////////////
//GET STATIC INFORMATION

	oprCde=sessionuser.getuserId(Locate);

	try//�����Ͻ�����б�
	{
		formPara = new String[1];
		formPara[0] = oprCde;
		ub.setFormPara(ZConst.QUERY_OPTRDPTLIST,formPara);
		dptResult = ub.getRetValueArra();
	}
	catch(NormalException e)
	{
		dptResult = null;
	}

	try//���ҵ�������б�
	{
		formPara = new String[1];
		formPara[0] = "";
		sb.setFieldValue(Const.GET_INSURANCEDEFINE,formPara[0]);
		insrncResult = sb.getRetValueArra();
	}
	catch(NormalException e)
	{
		insrncResult = null;
	}

	try//��ñ����б�
	{
		sb.setFieldValue(Const.GET_CURRENCY,"");
				currResult = sb.getRetValueArra();
	}
	catch(NormalException e)
	{
		currResult = null;
	}

	try//�����վ�б�
	{
		formPara = new String[1];
		formPara[0] = "";
		sb.setFieldValue(Const.GET_NETCODELIST,formPara[0]);
		siteResult = sb.getRetValueArra();
	}
	catch(NormalException e)
	{
		siteResult = null;
	}

%>
<%@ include file="public/left.jsp"%>
<div align="center"><font color="#0066CC" class="unnamed3">�嵥�б�ҵ�����ѡ��</font><br>
<form method="post" action="Bus_Forward.jsp" name="f" onsubmit="return (ValidYear(fromYear) && ValidMonth(fromMonth) && ValidDay(fromDay) && ValidYear(toYear) && ValidMonth(toMonth) && ValidDay(toDay) );">
<input type="hidden" name="sessionId" value="<%=Code.Encrypt(sessionId)%>">
<table width="100%" border="1" cellspacing="0" cellpadding="0" align="center" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6">
		<tr bgcolor="#9DEEDE">
			<td height="42" width="40%">
				<center>
					ѡ������
				</center>
			</td>
			<td height="42" width="60%">
				<center>
					�嵥����
				</center>
			</td>
		</tr>
		<tr bgcolor="#DFF9F3">
			<td align="left" width="40%">��ʼʱ�䣺
				<input type="text" name="fromYear" 		size="5" maxlength="4" value="2001">
				��
				<input type="text" name="fromMonth"size="3" maxlength="2" value="01">
				��
				<input type="text" name="fromDay" size="3" maxlength="2" value="01">
				��</td>
			<td width="60%">
				<p>
					<input type="radio" name="busType" value="Bus_Plyapp_List.jsp" checked>
					Ͷ���嵥(
					<input type="radio" name="plyAppStat" value="0" checked>
					δ�˱�
					<input type="radio" name="plyAppStat" value="2">
					������
					<input type="radio" name="plyAppStat" value="1">
					�ѳ���
					<input type="radio" name="plyAppStat" value="3">
					ȫ��) </p>
			</td>
		</tr>
		<tr bgcolor="#DFF9F3">
			<td width="40%">��ֹʱ�䣺
				<input type="text" name="toYear" size="5" maxlength="4" value="2001">
				��
				<input type="text" name="toMonth" size="3" maxlength="2" value="12">
				��
				<input type="text" name="toDay" size="3" maxlength="2" value="31">
				��</td>
			<td width="60%" height="27">
				<input type="radio" name="busType" value="Bus_Proposal_List.jsp">
				�������嵥 </td>
		</tr>
		<tr bgcolor="#DFF9F3">
			<td width="40%">��Ͻ������ <br>
				<select name="dpt">
					<!--<option selected value="">��ѡ��</option>-->
			<%if (dptResult != null && dptResult.length > 1){
				indexOprCde = Objects.getColNum("C_OPR_CDE",dptResult);
				indexDptCde = Objects.getColNum("C_DPT_CDE",dptResult);
				indexDptCnm = Objects.getColNum("C_DPT_CNM",dptResult);
				indexDptEnm = Objects.getColNum("C_DPT_ENM",dptResult);
				for (int i=1;i<dptResult.length;i++){
			%>
			<option value="<%=dptResult[i][indexDptCde]%>"><%=dptResult[i][indexDptCde]%>(<%=dptResult[i][indexDptCnm]%>)</option>
			<%	}
			}%>
				</select>
				<input name="expand" value="%" type="checkbox" checked>�����¼�
			</td>
			<td width="60%" height="26">
				<input type="radio" name="busType" value="Bus_Policy_List.jsp">
				�����嵥 </td>
		</tr>
		<tr bgcolor="#DFF9F3">
			<td width="40%">ҵ�����֣� <br>��
				<select name="fromInsrncTyp">
					<option selected value="">��ѡ��</option>
			<%if (insrncResult != null && insrncResult.length > 1){
				int	indexInsrncCde = Objects.getColNum("C_INSRNC_CDE",insrncResult);
				int	indexInsrncCls = Objects.getColNum("C_INSRNC_CLS",insrncResult);
				int	indexInsrncTyp = Objects.getColNum("C_INSRNC_TYP",insrncResult);
				int	indexInsrncCnm = Objects.getColNum("C_INSRNC_CNM",insrncResult);
				int	indexInsrncEnm = Objects.getColNum("C_INSRNC_ENM",insrncResult);
				int	indexInsrncAbr = Objects.getColNum("C_INSRNC_ABR",insrncResult);
				int	indexRate = Objects.getColNum("N_RATE",insrncResult);
				int	indexNclmPropAuth = Objects.getColNum("N_NCLM_PROP_AUTH",insrncResult);
				int	indexAppntPropAuth = Objects.getColNum("N_APPNT_PROP_AUTH",insrncResult);
				int	indexCmmRteAuth = Objects.getColNum("N_CMM_RTE_AUTH",insrncResult);
				int	indexBrkrRteAuth = Objects.getColNum("N_BRKR_RTE_AUTH",insrncResult);
				int	indexInsrncDfnTyp = Objects.getColNum("C_INSRNC_DFN_TYP",insrncResult);
				for (int i=1;i<insrncResult.length;i++){
			%>
			<option value="<%=insrncResult[i][indexInsrncCde]%>"><%=insrncResult[i][indexInsrncCnm]%>(<%=insrncResult[i][indexInsrncCde]%>)</option>
			<%	}
			}%>
				</select><br>
				��
				<select name="toInsrncTyp">
					<option selected value="">��ѡ��</option>
			<%if (insrncResult != null && insrncResult.length > 1){
				int	indexInsrncCde = Objects.getColNum("C_INSRNC_CDE",insrncResult);
				int	indexInsrncCls = Objects.getColNum("C_INSRNC_CLS",insrncResult);
				int	indexInsrncTyp = Objects.getColNum("C_INSRNC_TYP",insrncResult);
				int	indexInsrncCnm = Objects.getColNum("C_INSRNC_CNM",insrncResult);
				int	indexInsrncEnm = Objects.getColNum("C_INSRNC_ENM",insrncResult);
				int	indexInsrncAbr = Objects.getColNum("C_INSRNC_ABR",insrncResult);
				int	indexRate = Objects.getColNum("N_RATE",insrncResult);
				int	indexNclmPropAuth = Objects.getColNum("N_NCLM_PROP_AUTH",insrncResult);
				int	indexAppntPropAuth = Objects.getColNum("N_APPNT_PROP_AUTH",insrncResult);
				int	indexCmmRteAuth = Objects.getColNum("N_CMM_RTE_AUTH",insrncResult);
				int	indexBrkrRteAuth = Objects.getColNum("N_BRKR_RTE_AUTH",insrncResult);
				int	indexInsrncDfnTyp = Objects.getColNum("_INSRNC_DFN_TYP",insrncResult);
				for (int i=1;i<insrncResult.length;i++){
			%>
			<option value="<%=insrncResult[i][indexInsrncCde]%>"><%=insrncResult[i][indexInsrncCnm]%>(<%=insrncResult[i][indexInsrncCde]%>)</option>
			<%	}
			}%>
				</select>
			</td>
			<td width="60%">
				<input type="radio" name="busType" value="Bus_Edr_List.jsp">
				�����嵥 </td>
		</tr>
		<tr bgcolor="#DFF9F3">
			<td width="40%" height="28">���ѱ��֣�
				<select name="currency">
					<option selected value="">��ѡ��</option>
			<% if (currResult != null && currResult.length>1){
					int indexCurNo = Objects.getColNum("C_CUR_NO",currResult);
					int indexCurCnm = Objects.getColNum("C_CUR_CNM",currResult);
					int indexCurUnt = Objects.getColNum("C_CUR_UNT",currResult);
					int indexCurEnm = Objects.getColNum("C_CUR_ENM",currResult);
					int indexCurrSbl  = Objects.getColNum("C_CUR_SBL",currResult);
					int indexCurTthUnt = Objects.getColNum("C_CUR_TTH_UNT",currResult);
					int indexCurHthUnt = Objects.getColNum("C_CUR_HTH_UNT",currResult);
					int indexChgRte = Objects.getColNum("N_CHG_RTE",currResult);
					for (int i=1; i<currResult[i].length;i++){%>
					<option value="<%=currResult[i][indexCurNo]%>"><%=currResult[i][indexCurCnm]%>(<%=currResult[i][indexCurrSbl]%>)</option>
		<%	}
			}%>
				</select>(�ÿ���ȫѡ)
			</td>
			<td width="60%" height="28">
				<input type="radio" name="busType" value="Bus_Claim_List.jsp">
				�����嵥</td>
		</tr>
		<tr bgcolor="#DFF9F3">
			<td width="40%" height="28">ҵ����Դ��
				<select name="siteCde">
					<option selected value="">��ѡ��</option>
			<%if (siteResult != null && siteResult.length>1){
				int indexNetCde = Objects.getColNum("C_NET_CDE",siteResult);
				int indexNetCnm = Objects.getColNum("C_NET_CNM",siteResult);
				for(int i=1;i<siteResult.length;i++){%>
				<option value="<%=siteResult[i][indexNetCde]%>"><%=siteResult[i][indexNetCnm]%></option>
			<%}
			}%>
				</select>
				(��վ����) </td>
			<td width="60%">
				<input type="radio" name="busType" value="Bus_Cust_List.jsp">
				�ͻ��嵥 </td>
		</tr>
	</table>
	<p><center>
		<input type="submit" name="Submit" value="�ύ">
		<input type="reset" name="Reset" value="����"></center>
	</p>
</form>
<%@ include file="public/bottom.jsp"%>