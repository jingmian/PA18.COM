<%@ include file="public/up.jsp" %>
<jsp:useBean id="bb"  scope="page" class="beans.BusinessManagerBean"/> 
<jsp:setProperty name="bb" property="*"/>
<%
/*
*****************************GENERAL INFORMATION***********************************************
*Program ID : B_del_FAQInfo.jsp
*Directory : /data1/pa18/nul/mcip/public_html/operator_manager/
*URL : http://10.16.102.1:8800/operator_manager/B_del_FAQInfo.jsp
*Previous Page : B_FAQInfo_List.jsp
*Next Page : itself
*Author : Lawrence Kang
*Created Date : 2000-10-25
*Last Updated : 
*Status : open
*Function : I.confirm operator's delete action 
*			II.delete the faq info record
*			III.show the result informataion
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
String
	parentFaqNo = StringTool.null2Blank(request.getParameter("parentFaqNo")),
	oprType = StringTool.null2Blank(request.getParameter("oprType")),
	oprCde = null,
	confirm = StringTool.null2Blank(request.getParameter("confirm")),
	faqNo = StringTool.null2Blank(request.getParameter("faqNo")),
	faqTitle = StringTool.null2Blank(request.getParameter("faqTitle")),
	faqTm = StringTool.null2Blank(request.getParameter("faqTm")),
	formPara[] = null;

boolean
	bingo = false;

	oprCde=sessionuser.getuserId(Locate); 

if (confirm.equals("yes"))
{
	try
	{
		formPara = new String[2];
		formPara[0] = faqNo;//empty string for all the titile
		formPara[1] = oprCde; //operator code for log
		bb.setFormPara(BConst.DELETE_CONSULT_INFO,formPara);
		bingo = bb.getRetValueBool();
	}
	catch(NormalException e)
	{
		bingo = false;
	}
}
%>
<%@ include file="public/left.jsp"%>
<div align="center"><font color="#0066CC" class="unnamed3">ɾ��������ѯ</font></div><br>
<table width="96%" border="1" cellspacing="0" cellpadding="0" align="center" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6" bgcolor="#DFF9F3">
<%if(!confirm.equals("yes")){%>
	<tr> 
		<td colspan="2" align="center"> 
			<font color="#0000CC">��ȷ��ɾ��������ѯ��Ŀ�еĸ�<%if (oprType.equals("item")) out.print("����"); else out.print("���");%>��</font> 
		</td>
	<tr>
	<tr>
		<td>
			���ı��⣺
		</td>
		<td>
			<%=StringTool.htmlEncode(faqTitle)%>
		</td>
	</tr>
	<tr>
		<td>
			��ӵ�ʱ�䣺
		</td>
		<td>
			<%=faqTm%>
		</td>
	</tr>
</table>
	<table width="100%">
		<tr>
			<td align="right">
			<form method="post">
				<input type="hidden" name="parentFaqNo" value="<%=parentFaqNo%>">
				<input type="hidden" name="sessionId" value="<%=Code.Encrypt(sessionId)%>">
				<input type="hidden" name="faqNo" value="<%=faqNo%>">
				<input type="hidden" name="faqTitle" value="<%=StringTool.htmlEncode(faqTitle)%>">
				<input type="hidden" name="faqTm" value="<%=faqTm%>">
				<input type="hidden" name="confirm" value="yes">
				<input type="hidden" name="oprType" value="<%=oprType%>">
				<input type="submit" value="ȷ��ɾ��" name="B1">&nbsp;&nbsp;
			</form>
			</td>
			<td align="left">
			<form method="post">
				&nbsp;&nbsp;<input type="button" value="����ɾ��" name="B12" onclick="history.back()">
			</form>
		</td>
	</tr>
</table>
<%}else{%>
	<tr> 
		<td align="center" colspan="2"> 
			<% if (bingo){%>
			<font size="3" color="#0000CC">�ñ�����ѯ<%if (oprType.equals("item")) out.println("����"); else out.println("���");%>�Ѿ��ɹ�ɾ��</font> 
			<%}else{%>
			<font size="3" color="red">�ñ�����ѯ<%if (oprType.equals("item")) out.println("����"); else out.println("���");%>δ��ɾ��<%if (oprType.equals("type")) out.println(",��ɾ��������µ����б�����ѯ");%></font> 
			<%}%>
	</tr>
	<tr>
		<td>
			���ı��⣺
		</td>
		<td>
			<%=faqTitle%>
		</td>
	</tr>
	<tr>
		<td>
			��ӵ�ʱ�䣺
		</td>
		<td>
			<%=faqTm%>
		</td>
	</tr>
	</table>
	<div align="center">
				<form action="<%if (oprType.equals("item")) out.print("B_FAQInfoC_List.jsp"); else out.print("B_FAQInfoT_List.jsp");%>" method="post">
					<input type="hidden" name="sessionId" value="<%=Code.Encrypt(sessionId)%>">
					<input type="hidden" name="faqNo" value="<%=parentFaqNo%>">
					<input type="submit" value="����" name="B12">
				</form>
	</div>
<%}%>
<%@ include file="public/bottom.jsp"%>
