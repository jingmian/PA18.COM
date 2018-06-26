<%
/*
*****************************GENERAL INFORMATION***********************************************
*Program ID : Find_FlwUp.jsp
*Directory : /data1/pa18/nul/mcip/public_html/operator_manager/
*URL : http://10.16.102.1:8800/operator_manager/Find_FlwUp.jsp
*Previous Page : FuncList.jsp(by directly link)
*Next Page : Rpt_FlwUp_List.jsp(by posted form)
*Author : Lawrence Kang
*Created Date : 2000/10/11
*Last Updated : 2000/10/11
*Status : submited for test
*Function : I.Create the department list for the logined user(a serial radio buttons)
*			II.Validate the user input (via javascript)
*			III.Submit the prepared field to the next page
*============================MODIFIED HISTORY==================================================
*Date : 
*Time : 
*Modify id : 
*Modifier : 
*Reason : 
***********************************************************************************************
*/
%>
<%@ include file="public/up.jsp" %>
<%
/**VARIABLES PREDEFINE
*================================================================================================
*Name			Type			Description
*------------------------------------------------------------------------------------------------
*formPara		String			�������飬����ύ��BusinessManagerBean�Ĳ���
*------------------------------------------------------------------------------------------------
*departList		String Array	store the result return by BusinessManagerBean.
*								It's a string table, the first line indicate the name
*								of the field
*------------------------------------------------------------------------------------------------
*i,j			int				loop counter
*------------------------------------------------------------------------------------------------
*index_opr_cde	int				column index,retrieved by method Object.getColNum()
*index_dpt_cde	int				so that we can access the result array by "name"
*index_dpt_cnm	int
*index_dpt_enm	int
*------------------------------------------------------------------------------------------------
*dptCde			String			operator's department code
*oprCde			String			operator's code
*------------------------------------------------------------------------------------------------
*selStr			String			the content of this string is "checked" or ""
*								used to generate a checked html object(check box,
*								radio button,etc.)
*================================================================================================
*/

	String formPara[] = new String[2];//bean's mehtod parameters list
	String[][] departList = null;
	int index_opr_cde=0,index_dpt_cde=0,index_dpt_cnm=0,index_dpt_enm=0;//column index of result table
	String dptCde="",oprCde="";
	String selStr="";
				
	oprCde=sessionuser.getuserId(Locate); 





	
	//GET DEPARTMENT LIST FOR CURRENT USER
	try
	{
		formPara[0] = oprCde;
		ub.setFormPara(ZConst.QUERY_OPTRDPTLIST,formPara);
		departList = ub.getRetValueArra();
	}
    catch(NormalException e)
	{
		if(NormalExceptionHandler.IsSevere(e))
			throw NormalExceptionHandler.Handle(e);
	}
	
%>
<%@ include file="public/left.jsp"%>
<script language="JavaScript" src="check.js">
</script>
<SCRIPT LANGUAGE="JavaScript" >
function filter(index)
{
	if (index == "0")//ѡ��������Ϣ
	{
		f.isHandle.disabled = true;
		f.notHandle.disabled = true;
		f.isSent.disabled = true;
		f.notSent.disabled = true;
	}

	if (index == "1")//ѡ���Ƿ���
	{
		f.isHandle.disabled = false;
		f.notHandle.disabled = false;
		f.isSent.disabled = true;
		f.notSent.disabled = true;
	}

	if (index == "2")//ѡ���Ƿ��͵�
	{
		f.isHandle.disabled = true;
		f.notHandle.disabled = true;
		f.isSent.disabled = false;
		f.notSent.disabled = false;
	}

	if (index == "3")//ѡ���Ƿ񷵻�
	{
		f.isHandle.disabled = true;
		f.notHandle.disabled = true;
		f.isSent.disabled = true;
		f.notSent.disabled = true;
	}
	
	if (index == "4")//ѡ�񱣵���
	{
		
			f.policyNo.disabled= !f.policyNo.disabled;

	}
	
	if (index == "5")//ѡ��Ͷ��ʱ�䷶Χ
	{
		f.fromYear.disabled = !f.fromYear.disabled;
		f.fromMonth.disabled = !f.fromMonth.disabled;
		f.fromDay.disabled = !f.fromDay.disabled;

		f.fromHour.disabled = !f.fromHour.disabled;
		f.fromMinute.disabled = !f.fromMinute.disabled;
		f.fromSecond.disabled = !f.fromSecond.disabled;

		f.toYear.disabled = !f.toYear.disabled;
		f.toMonth.disabled = !f.toMonth.disabled;
		f.toDay.disabled = !f.toDay.disabled;

		f.toHour.disabled = !f.toHour.disabled;
		f.toMinute.disabled = !f.toMinute.disabled;
		f.toSecond.disabled = !f.toSecond.disabled;

	}

	if (index == "6")//ѡ��������
	{
		f.fromInsuranceCode.disabled = !f.fromInsuranceCode.disabled;
		f.toInsuranceCode.disabled = !f.toInsuranceCode.disabled;
	}

	if (index == "7")//ѡ�񱣵���
	{
		
			f.reportNo.disabled= !f.reportNo.disabled;

	}

}

function ValidDateRange()
{
	if (f.fromYear.value<f.toYear.value)
		return true;
	if (f.fromYear.value>f.toYear.value)
	{
		alert("ʱ�䷶Χ����")
		f.toYear.focus();
		return false;
	}
	
	if (f.fromMonth.value<f.toMonth.value)
		return true;
	if (f.fromMonth.value>f.toMonth.value)
	{
		alert("ʱ�䷶Χ����")
		f.toMonth.focus();
		return false;
	}

	if (f.fromDay.value<f.toDay.value)
		return true;
	if (f.fromDay.value>f.toDay.value)
	{
		alert("ʱ�䷶Χ����")
		f.toDay.focus();
		return false;
	}

	if (f.fromHour.value<f.toHour.value)
		return true;
	if (f.fromHour.value>f.toHour.value)
	{
		alert("ʱ�䷶Χ����")
		f.toHour.focus();
		return false;
	}

	
	if (f.fromMinute.value<f.toMinute.value)
		return true;
	if (f.fromMinute.value>f.toMinute.value)
	{
		alert("ʱ�䷶Χ����")
		f.toMinute.focus();
		return false;
	}

	if (f.fromSecond.value<f.toSecond.value)
		return true;
	if (f.fromSecond.value>f.toSecond.value)
	{
		alert("ʱ�䷶Χ����")
		f.toSecond.focus();
		return false;
	}


	return true;

}

function validSelect()
{
	if (f.isReport.checked && !ValidNull(f.reportNo,false))
		return false;
	if (f.isPolicy.checked && !ValidNull(f.policyNo,false))
		return false;
	if (f.isTimeTrack.checked &&
		!(ValidYear(f.fromYear) && ValidYear(f.toYear) && ValidMonth(f.fromMonth) &&
		ValidMonth(f.toMonth) && ValidDay(f.fromDay) && ValidDay(f.toDay) && ValidHour(f.fromHour) &&
		ValidHour(f.toHour) && ValidMinute(f.fromMinute) && ValidMinute(f.toMinute) && 
		ValidMinute(f.fromSecond) && ValidMinute(f.toSecond) && ValidDateRange()) )
			return false;
	if (f.isInsuranceCode.checked &&
		!(ValidNull(f.fromInsuranceCode,false) && ValidNull(f.toInsuranceCode,false))
		)
			return false;
	return true;

}
function fixZero(field){
	if (field.value.length == 1)
		field.value = "0"+field.value;
}

</SCRIPT>
<div align="center"><font color="#0066CC" class="unnamed3">������Ϣ��ѯ</font><br>
<form name="f" action="Rpt_FlwUp_List.jsp" method=post onSubmit="return (validSelect()) ;">
<table width="96%" border="1" cellspacing="0" cellpadding="0" align="center" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6">
	<tr class="unnamed2" bgcolor="#9DEEDE"> 
	<td height="25" colspan="4"> �������ѯ������</td>
	</tr>
	<tr> 
	<td bgcolor="#DFF9F3" width="4%" height="19"> 
	  <input type="radio" name="dealType" value="0" onclick="filter('0');return true" checked>
	</td>
	<td bgcolor="#DFF9F3" colspan="3" height="19">��ѯ������Ϣ</td>
	</tr>
	<tr> 
	<td bgcolor="#DFF9F3" width="4%" height="19"> 
	  <div align="center"> 
		<input type="radio" name="dealType" value="1" onclick="filter('1');return true">
	  </div>
	</td>
	<td bgcolor="#DFF9F3" colspan="3" height="19">�Ƿ����� 
	  <input type="checkbox" name="isHandle" value="on" disabled>
	  �Ѵ��� 
	  <input type="checkbox" name="notHandle" value="on" disabled>
	  δ���� </td>
	</tr>
	<tr> 
	<td bgcolor="#DFF9F3" width="4%" height="17"> 
	  <div align="center"> 
		<input type="radio" name="dealType" value="2" onclick="filter('2');return true">
	  </div>
	</td>
	<td bgcolor="#DFF9F3" colspan="3" height="17">�Ƿ������� 
	  <input type="checkbox" name="isSent" value="on" disabled>
	  ������ 
	  <input type="checkbox" name="notSent" value="on" disabled>
	  δ������ </td>
	</tr>
	<tr> 
	<td bgcolor="#DFF9F3" width="4%" height="11"> 
	  <input type="checkbox" name="isPolicy" value="yes" onclick="filter('4');return true">
	</td>
	<td bgcolor="#DFF9F3" colspan="3" height="11">�� �� ��: 
	  <input type="text" name="policyNo" size="25" maxlength="20" disabled>
	</td>
	</tr>
	<tr> 
	<td bgcolor="#DFF9F3" width="4%" height="11"> 
	  <input type="checkbox" name="isReport" value="yes" onclick="filter('7');return true">
	</td>
	<td bgcolor="#DFF9F3" colspan="3" height="11">�� �� ��: 
	  <input type="text" name="reportNo" size="25" maxlength="20" disabled>
	</td>
	</tr>
	<tr> 
	<td bgcolor="#DFF9F3" width="4%"> 
	  <div align="center"> 
		<input type="checkbox" name="isTimeTrack" value="yes" onclick="filter('5');return true">
	  </div>
	</td>
	<td bgcolor="#DFF9F3" colspan="3">Ͷ��ʱ�䷶Χ��<br>��
		<input type="text" name="fromYear" size="4" maxlength="4" value="2001" disabled>
		�� 
		<input type="text" name="fromMonth" size="2" maxlength="2" value="01" disabled onBlur="fixZero(f.fromMonth);">
		�� 
		<input type="text" name="fromDay" size="2" maxlength="2" value="01" disabled onBlur="fixZero(f.fromDay);">
		�� 
		<input type="text" name="fromHour" size="2" maxlength="2" value="01" disabled onBlur="fixZero(f.fromHour);">
		: 
		<input type="text" name="fromMinute" size="2" maxlength="2" value="01" disabled onBlur="fixZero(f.fromMinute);">
		
		<input type="hidden" name="fromSecond" size="2" maxlength="2" value="01" disabled onBlur="fixZero(f.fromSecond);">
	  <br>�� 
		<input type="text" name="toYear" size="4" maxlength="4" value="2001" disabled>
		�� 
		<input type="text" name="toMonth" size="2" maxlength="2" value="12" disabled onBlur="fixZero(f.toMonth);">
		�� 
		<input type="text" name="toDay" size="2" maxlength="2" value="31" disabled onBlur="fixZero(f.toDay);">
		�� 
		<input type="text" name="toHour" size="2" maxlength="2" value="01" disabled onBlur="fixZero(f.toHour);">
		: 
		<input type="text" name="toMinute" size="2" maxlength="2" value="01" disabled onBlur="fixZero(f.toMinute);">
		 
		<input type="hidden" name="toSecond" size="2" maxlength="2" value="01" disabled onBlur="fixZero(f.toSecond);">
	</td>
	</tr>
	<tr> 
	<td bgcolor="#DFF9F3" width="4%" height="24"> 
	  <div align="center"> 
		<input type="checkbox" name="isInsuranceCode" value="yes" onclick="filter('6');return true">
	  </div>
	</td>
	<td bgcolor="#DFF9F3" colspan="3" height="24">�����룺 ��: 
	  <input type="text" name="fromInsuranceCode" maxlength="3" size="5" disabled>
	  ��: 
	  <input type="text" name="toInsuranceCode" maxlength="3" size="5" disabled>
	</td>
	</tr>
</table>
            <table width="96%" border="1" cellspacing="0" cellpadding="0" align="center" class="td" bgcolor="#CBF5EC" bordercolorlight="#009999" bordercolordark="#FFFFFF">
              <tr bgcolor="#9DEEDE"> 
                <td colspan="4" height="25">ѡ���ѯ������</td>
              </tr>
            </table>
		<table width="96%" border="1" cellspacing="0" cellpadding="0" align="center" bgcolor="#DFF9F3" class="td" bordercolorlight="#009999" bordercolordark="#FFFFFF">
	  <%
	  if (departList!=null && departList.length>1)
	  {

		index_opr_cde=Objects.getColNum("C_OPR_CDE",departList);
		index_dpt_cde=Objects.getColNum("C_DPT_CDE",departList);
		index_dpt_cnm=Objects.getColNum("C_DPT_CNM",departList);
		index_dpt_enm=Objects.getColNum("C_DPT_ENM",departList);
		
		for (int i=1;i<departList.length;i++)
		{
			if (i==1)
				selStr="checked";
			else
				selStr="";
	  %>
        <tr> 
          <td width="4%"> 
            <input <%=selStr%> type="radio" name="dptCde" value="<%=departList[i][index_dpt_cde]%>">
          </td>
          <td width="96%"><%=departList[i][index_dpt_cnm]%></td>
        </tr>

	  <%}
	}
	  else
	  {
	  %>
	  <tr><td><font color="#FF0066">û���ҵ���Ӧ�Ļ�����</font></td></tr>
	  <%
	  }
	  %>
     </table>
	<input type="hidden" name="oprCde" value="<%=formPara[0]%>">
	<input type="hidden" name="sessionId" value="<%=Code.Encrypt(sessionId)%>">
	<input type="hidden" name="isInit" value="true">
        <input type="submit" value="��ѯ" name="B12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</form>
<%@ include file="public/bottom.jsp"%>