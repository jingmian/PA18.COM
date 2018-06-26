<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>
<jsp:useBean id="sb"  scope="page" class="beans.StaticInfoBean"/>
<jsp:setProperty name="sb" property="*"/>
<jsp:useBean id="cb"  scope="page" class="beans.CustManagerBean"/>
<jsp:setProperty name="cb" property="*"/>

<%
HttpSession sess = request.getSession(true);

//get Parameters from the last page
String RegisterType = request.getParameter("RegisterType");
String UserID = request.getParameter("UserID");
String UserPassword = request.getParameter("UserPassword");
String ConfirmPassword = request.getParameter("ConfirmPassword");
String Code = request.getParameter("Code");
String codeType = request.getParameter("codeType");
String clientTitle="";
//variables initialization
	String EnterpriseName = "";
	String EnglishName = "";
	String CorporationDelegrate = "";
	String ProvinceCode = "";
	String CityCode = "";
	String Place = "";
	String Email = "";
	String ZipCode = "";
	String Tel = "";
	String Fax = "";
	String C_RGST_NO = "";
	String C_TRD_CDE = "";
	String OwenerShip = "";
	String ContactorName = "";
	String updateTime="";

String formPara[] = {Code},clientInfo[][] = null;
int operator = Integer.MAX_VALUE;
if (codeType.equals("AGENT")){
	operator = Const.QUERY_AGENCY_INFO;
	clientTitle = "����";
}
if (codeType.equals("OPEN_COVER")){
	operator = Const.QUERY_OC_CUST_INFO;
	clientTitle = "ԤԼ";
}

try{
	cb.setFormPara(operator,formPara);
	clientInfo = cb.getRetValueArra();
}catch(Exception e){
	clientInfo = null;
	out.println("<div align=\"center\">û���ҵ���Ӧ�Ĵ���/OC�ͻ����ϣ��������������!<br><input type=\"button\" value=\"����\" onclick=\"history.back()\">");
	out.println("</div>");%>
		<%@ include file="public/bottom.jsp" %>

<%	return;
}
/*
	for (int i=0 ;i<clientInfo[0].length;i++){
		for(int j=0;j<clientInfo.length;j++)
			out.println(clientInfo[j][i]+" ");
		out.println("<br>");
	}
	*/
sess.putValue("clientInfo",clientInfo);
if (operator == Const.QUERY_AGENCY_INFO && clientInfo != null){
	int indexAgtNme = Objects.getColNum("C_AGT_NME",clientInfo);//��ҵ����
	int indexAgtEnm = Objects.getColNum("C_AGT_ENM",clientInfo);//Ӣ������;
	int indexChief = Objects.getColNum("C_CHIEF",clientInfo);//���˴���
	int indexProvince = Objects.getColNum("C_PROVINCE",clientInfo);//ʡ�ݴ���
	int indexCity = Objects.getColNum("C_CITY",clientInfo);//���д���
	int indexPlace = Objects.getColNum("C_PLACE",clientInfo);//��ַ
	int indexEmail = Objects.getColNum("C_EMAIL",clientInfo);//Email
	int indexZipCode = Objects.getColNum("C_ZIP_CDE",clientInfo);//zip code
	int indexTel = Objects.getColNum("C_TEL",clientInfo);//telphone number
	int indexFax = Objects.getColNum("C_FAX",clientInfo);//fax number
	int indexUpdTm = Objects.getColNum("T_UPD_TM",clientInfo);//update time
	EnterpriseName = clientInfo[1][indexAgtNme];
	EnglishName = clientInfo[1][indexAgtEnm];
	CorporationDelegrate = clientInfo[1][indexChief];
	ProvinceCode = clientInfo[1][indexProvince];
	CityCode = clientInfo[1][indexCity];
	Place = clientInfo[1][indexPlace];
	Email = clientInfo[1][indexEmail];
	ZipCode = clientInfo[1][indexZipCode];
	Tel = clientInfo[1][indexTel];
	Fax = clientInfo[1][indexFax];
	updateTime = clientInfo[1][indexUpdTm];
}

if (operator == Const.QUERY_OC_CUST_INFO && clientInfo != null){
	int indexClntNme = Objects.getColNum("C_CLNT_NME",clientInfo);//��ҵ����
	int indexBrdEnm = Objects.getColNum("C_BRD_ENM",clientInfo);//Ӣ������
	int indexOwnershipCde = Objects.getColNum("C_OWNERSHIP_CDE",clientInfo);//������
	int indexRgstNo = Objects.getColNum("C_RGST_NO",clientInfo);//���̵ǼǺ�
	int indexChief = Objects.getColNum("C_CHIEF",clientInfo);//��ҵ����
	int indexTrdCde = Objects.getColNum("C_TRD_CDE",clientInfo);//��ҵ
	int indexCntctPrsnNme = Objects.getColNum("C_CNTCT_PRSN_NME",clientInfo);//��ϵ��
	int indexTel = Objects.getColNum("C_TEL",clientInfo);//�绰
	int indexFax = Objects.getColNum("C_FAX",clientInfo);//����
	int indexEmail = Objects.getColNum("C_EMAIL",clientInfo);//Email
	int indexProvice = Objects.getColNum("C_PROVINCE",clientInfo);//ʡ�ݴ���
	int indexCity = Objects.getColNum("C_CITY",clientInfo);//���д���
	int indexPlace = Objects.getColNum("C_PLACE",clientInfo);//��ϸ��ַ
	int indexZipCde = Objects.getColNum("C_ZIP_CDE",clientInfo);//��������
	int indexUpdTm = Objects.getColNum("T_UPD_TM",clientInfo);//update time
	EnterpriseName = clientInfo[1][indexClntNme];
	EnglishName = clientInfo[1][indexBrdEnm];
	C_RGST_NO = clientInfo[1][indexRgstNo];
	C_TRD_CDE = clientInfo[1][indexTrdCde];
	OwenerShip = clientInfo[1][indexOwnershipCde];
	CorporationDelegrate = clientInfo[1][indexChief];
	ContactorName = clientInfo[1][indexCntctPrsnNme];
	ProvinceCode = clientInfo[1][indexProvice];
	CityCode = clientInfo[1][indexCity];
	Place = clientInfo[1][indexPlace];
	Email = clientInfo[1][indexEmail];
	ZipCode = clientInfo[1][indexZipCde];
	Tel = clientInfo[1][indexTel];
	Fax = clientInfo[1][indexFax];
	updateTime = clientInfo[1][indexUpdTm];
}
%>
<%  //The folloing is to getData from database and display on page
		int i = 0;
		int j = 0;
		String TradeType[][] = null;
		String OrgType[][] = null;
		String Province[][] = null;
		String Ownership[][] = null;
		String Area[][] = null;
		String Scale[][] = null;
		String PremiumScale[][] = null;
		String City[][] = null;

		try{
		sb.setFieldValue(Const.GET_TRADETYPE,"");
		TradeType = sb.getRetValueArra();

				 sb.setFieldValue(Const.GET_ORGTYPE,"");
				 OrgType = sb.getRetValueArra();

				sb.setFieldValue(Const.GET_PROVINCE,"");
		Province = sb.getRetValueArra();

				sb.setFieldValue(Const.GET_CITY,"");
				City = sb.getRetValueArra();

		sb.setFieldValue(Const.GET_OWNERSHIP,"");
		Ownership = sb.getRetValueArra();

				sb.setFieldValue(Const.GET_AREA,"");
				Area = sb.getRetValueArra();

		sb.setFieldValue(Const.GET_SCALE,"");
		Scale = sb.getRetValueArra();

		sb.setFieldValue(Const.GET_PREMIUMSCALE,"");
		PremiumScale = sb.getRetValueArra();
		}
		catch(NormalException e){
	/*	if(NormalExceptionHandler.IsSevere(e))
			throw NormalExceptionHandler.Handle(e);
		else if(NormalExceptionHandler.IsWarning(e))
			String WarnMsg = e.getErrDesc(); */
			throw NormalExceptionHandler.Handle(e);
		}

		int TradeTypeLen = Servlets.getLen(TradeType);
		int OrgTypeLen = Servlets.getLen(OrgType);
		int ProvinceLen = Servlets.getLen(Province);
		int OwnershipLen = Servlets.getLen(Ownership);
		int AreaLen = Servlets.getLen(Area);
		int ScaleLen = Servlets.getLen(Scale);
		int PremiumScaleLen = Servlets.getLen(PremiumScale);
		int CityLen = Servlets.getLen(City);

	String JS = ServTool.JSMake(City,Province,"1");
%>
<script LANGUAGE="JavaScript">
<% out.println(JS);%>
</script>
<SCRIPT FOR=window EVENT=onload LANGUAGE="JavaScript">
 orgnCust.Province.focus();
window.scrollTo(0,0);
</SCRIPT>

<SCRIPT LANGUAGE="JavaScript" SRC="../check.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="../tool.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript">
	function setAddress(flag,fieldProv,fieldCity,fieldPlace)
	{
			var index1 = fieldProv.options.selectedIndex;
			var index2 = fieldCity.options.selectedIndex;
			var valueofplace = fieldPlace.value;
			if(flag=="0" && index1 > 0)
			{
				 valueofplace = fieldProv.text;
			}
			else if(flag=="1" && index2 > 0)
			{
				valueofplace = fieldCity.options[index2].text;
			}
			fieldPlace.value = valueofplace;

			return;
	}
</SCRIPT>
<div align="center"><font color="#0066CC" class="unnamed3">�� ̨ �� �� ע ��</font><br><br></div>
<form action="RegisterProcess.jsp" name="orgnCust" method="post" onsubmit="return(
ValidNull(UserID,false) &&
ValidNull(UserPassword,false) &&
ValidNull(ConfirmPassword,false) &&
ValidNull(EnterpriseName,false) &&
ValidNull(OwenerShip,false) &&
ValidNull(CorporationDelegrate,false) &&
ValidNull(Province,false) &&
ValidNull(City,false) &&
ValidNull(Place,false) &&
ValidNull(ContactorName,false) &&
ValidNull(Tel,false) &&
ValidNull(Email,false) &&
ValidNull(Fax,false) &&
ValidNull(ZipCode)&&
ValidUserPwd(UserID,'0') &&
ValidUserPwd(UserPassword,'1') &&
ValidSame(UserPassword,ConfirmPassword)&&
ValidEmail(Email)&&
ValidTel(Tel)&&
ValidInt(ZipCode)&&
ValidTel(Fax)) ;">
 <table width="100%" border="1" cellspacing="0" cellpadding="0" align="center" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6">
	<tr>
		<td width="14%"><font color="#ff0000"><%=clientTitle%>�ͻ�����¼�룺</font></td>
		<td width="52%" align="right">
		<font color="#FF0000">��*����Ŀ������д</font>
		</td>
	</tr>
	<tr>
		<td width="66%" colspan="2"><font color="#3300FF">������Ѿ���www.pa18.com �û����������ʹ��www.pa18.com���û�����?
					 <br><input type="radio" name="RegisterType" value="1" <%if (RegisterType.equals("1")) out.println("checked");%>> ��
										<input type="radio" name="RegisterType" value="0" <%if (RegisterType.equals("0")) out.println("checked");%>>��
												��������������ԭ�û��������룬�Ա��顣
				</font>
		</td>
	</tr>
	<tr>
		<td width="14%">�û�����</td>
		<td width="52%"><input type="text" name="UserID" value="<%=UserID%>"size="18" maxlength="16">* (����Ϊ3��16λ,��Сд��ĸ,�������<font color="#FF0000">����λΪСд��ĸ</font>)</td>
	</tr>
	<tr>
		<td width="14%">���������룺</td>
		<td width="52%"><input type="password" maxlength="15" name="UserPassword" value="<%=UserPassword%>" size="18">* (����ֻ��Ϊ6��15λ,��Сд��ĸ,�������)</td>
	</tr>
	<tr>
		<td width="14%">��֤���룺</td>
		<td width="52%"><input type="password" maxlength="15" name="ConfirmPassword" value="<%=ConfirmPassword%>"size="18">*</td>
	</tr>
	<tr>
		<td width="14%">
				���룺
		</td>
		<td width="52%"><input type="text" name="Code" value="<%=Code%>" size="18" maxlenth="12">*<input type="radio" value="AGENT" <%if (codeType.equals("AGENT")) out.println("checked");%> name="codeType">�����˱���<input type="radio" value="OPEN_COVER" <%if (codeType.equals("OPEN_COVER")) out.println("checked");%> name="codeType">ԤԼ�ͻ�����</td>
	</tr>
	</table>
			<span class="title">��ҵ��Ϣ��</span><br>
				<table width="100%" border="1" cellspacing="1" cellpadding="0" height="332" class="td">
					<tr bordercolor="#FFFFFF">
						<td bgcolor="#F6F6F6" align="right">��ҵ���ƣ�</td>
						<td nowrap><input type="text" name="EnterpriseName" value="<%=EnterpriseName%>" size="26" maxlength="150">*</td>
			<!--
						<td align="right" bgcolor="#F6F6F6" >���ļ�ƣ�</td>
						<td><input type="text" name="C_CHN_ABR" size="18" maxlength="12"></td>
					</tr>
					<tr bordercolor="#FFFFFF">
			-->
						<td bgcolor="#F6F6F6" align="right">Ӣ�����ƣ�</td>
						<td><input type="text" name="EnglishName" value="<%=EnglishName%>" size="26" maxlength="100">
						</td>
			<!--
						<td align="right" bgcolor="#F6F6F6">Ӣ�ļ�ƣ�</td>
						<td><input type="text" name="C_ENG_ABR" size="18" maxlength="12">
						</td>
			-->
					</tr>
					<tr bordercolor="#FFFFFF">
						<td bgcolor="#F6F6F6" nowrap align="right">���̵ǼǺţ�</td>
						<td> <input type="text" name="C_RGST_NO" value="<%=C_RGST_NO%>" size="26" maxlength="20">
						</td>
						<td nowrap align="right" bgcolor="#F6F6F6">��ҵ��</td>
						<td>
						<select name="C_TRD_CDE" size="1">
								<option selected value="">��ѡ��</option>
								<%
									 if(TradeTypeLen > 1)
									 {
								int c_trd_cde = Objects.getColNum("c_trd_cde",TradeType);
								int c_trd_cnm = Objects.getColNum("c_trd_cnm",TradeType);
											for(i = 1; i < TradeTypeLen; i++)
											{
								%>
													<option value="<%=TradeType[i][c_trd_cde]%>" <%if (TradeType[i][c_trd_cde].equals(C_TRD_CDE)) out.println("selected");%>><%=TradeType[i][c_trd_cnm]%></option>
								<%
											 }
										}
								%>
				</select>
						</td>
					</tr>
					<tr bordercolor="#FFFFFF">
			<!--by Lawrence 2001-3-28
						<td bgcolor="#F6F6F6" align="right">��֯��ʽ��</td>
						<td> <select name="C_ORGZ_TYP_CDE" size="1">
								<option selected value="">��ѡ��</option>

													<option value= 1> �ɷ��� </option>

													<option value= 2> �ǹɷ��� </option>

							</select>
						 </td>
			 -->
						<td align="right" bgcolor="#F6F6F6">�����ƣ�</td>
							 <td>        <select name="OwenerShip" size="1">
								<option selected value="">��ѡ��</option>
								<%
									 if(OwnershipLen > 1)
									 {
								int c_ownership_cde = Objects.getColNum("c_ownership_cde",Ownership);
								int c_ownership_cnm = Objects.getColNum("c_ownership_cnm",Ownership);
											for(i = 1; i < OwnershipLen; i++)
											{
								%>
													<option value= <%=Ownership[i][c_ownership_cde]%> <% if (Ownership[i][c_ownership_cde].equals(OwenerShip)) out.println("selected");%>> <%=Ownership[i][c_ownership_cnm]%> </option>
								<%
											 }
										}
								%>
							</select>*</td>
					</tr>
					<tr bordercolor="#FFFFFF">
						<td bgcolor="#F6F6F6" align="right">���˴���</td>
						<td><input type="text" name="CorporationDelegrate" value="<%=CorporationDelegrate%>" size="26" maxlength="12">*</td>
						<td bgcolor="#F6F6F6" align="right">��ϵ�ˣ�</td>
						<td> <input type="text" name="ContactorName" value="<%=ContactorName%>" size="26" maxlength="20">*</td>

<!--            <td align="right" bgcolor="#F6F6F6">���ʲ���</td>
						<td> <input type="text" name="N_RGST_MNY" size="18" maxlength="14">
						</td>
-->
					</tr>

					<tr bordercolor="#FFFFFF">

<td bgcolor="#F6F6F6" align="right">ʡ�У�</td>
						<td><select name="Province" size="1" onChange="changeCity(Province,City);return true;"
						onfocus="changeCity(Province,City);return true;">
								<option selected value="">��ѡ��</option>
								<%
									 if(ProvinceLen > 1)
									 {
								int c_city = Objects.getColNum("c_city",Province);
									int c_city_cnm = Objects.getColNum("c_city_cnm",Province);
											String value = "";
											for(i = 1; i < ProvinceLen; i++)
											{

								%>
													<option value= <%=Province[i][c_city]%> <%if (Province[i][c_city].equals(ProvinceCode)) out.println("selected");%>> <%=Province[i][c_city_cnm]%> </option>
								<%
											 }
										}
								%>
							</select>*</td>
				<!-- removed by lawrence 2001-3-28
						<td bgcolor="#F6F6F6" align="right">Ա��������</td>
						<td><input type="text" name="N_EMLY_NUM" size="26" maxlength="6">
						</td>
							-->

						<td nowrap align="right" bgcolor="#F6F6F6">���أ�</td>
			<Script lanaguage=JavaScript>
			 /* {
						for address onChange="setAddress('1',C_PROVINCE,C_CITY,C_PLACE);
					 return true;"
						 } */
			</script>
						<td><select name="City" size="1" >
								<option selected value="">��ѡ��</option>
								<script language=JavaScript>
								 /* index = document.orgnCust.C_PROVINCE.options.selectedIndex-1;
									for(var i = 0;i<city[index].length;i++)
									 {
										var text = city[index][i].split("-");
										document.write("<options value='"+text[1]+"'>"+text[0]);
									 }*/
								</script>

					</select>*</td>
			<!-- removed by Lawrence
						<td nowrap align="right" bgcolor="#F6F6F6">��ҵ��ģ��</td>
						<td><select name="C_SCALE_CDE" size="1">
								<option selected value="">��ѡ��</option>

													<option value= 1> ������ҵ </option>

													<option value= 2> ������ҵ </option>

													<option value= 3> С����ҵ </option>


							</select>
						</td>
		-->
					</tr>

					<tr bordercolor="#FFFFFF">
						<td align="right" bgcolor="#F6F6F6">��ϸ��ַ��</td>
						<td nowrap colspan="3">
						<input type="text" name="Place" value="<%=Place%>" size="60" maxlength="100">*</td>
					</tr>

					<tr bordercolor="#FFFFFF">
						<td bgcolor="#F6F6F6" align="right">EMail��</td>
						<td>   <input type="text" name="Email" value="<%=Email%>" size="20" maxlength="60">*</td>
						<td align="right" bgcolor="#F6F6F6">�ʱࣺ</td>
						<td><input type="text" name="ZipCode" value="<%=ZipCode%>"size="20" maxlength="6">*
						</td>

					</tr>
					<tr bordercolor="#FFFFFF">
						<td bgcolor="#F6F6F6" align="right">�绰��</td>
						<td>   <input type="text" name="Tel" value="<%=Tel%>" size="20" maxlength="20">*</td>
						<td align="right" bgcolor="#F6F6F6">���棺</td>
						<td> <input type="text" name="Fax" value="<%=Fax%>" size="20" maxlength="20">*</td>
					</tr>
				</table>
	<table width="100%" border="0" cellspacing="1" cellpadding="0" class="td">
		<tr><td align="left">
			�����Ƽ���վ��ҵ��Ա:<input type="text" name="C_REMARK">
			<input type="hidden" name="updateTime" value="<%=updateTime%>">
		</td></tr>
		<tr><td align="center">
			<input type="submit" value="ע��">
			<input type="button" value="����" onclick="history.back()">
		</td></tr>
	</table>
		 </form>
<%@ include file="public/bottom.jsp" %>
