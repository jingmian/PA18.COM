<%@ include file="public/up.jsp" %>
<jsp:useBean id="bb"  scope="page" class="beans.BusinessManagerBean"/>
<jsp:setProperty name="bb" property="*"/>
<jsp:useBean id="sb"  scope="page" class="beans.StaticInfoBean"/>
<jsp:setProperty name="sb" property="*"/>
<jsp:useBean id="pm"  scope="session" class="beans.PageManagerBean"/>
<jsp:setProperty name="pm" property="*"/>
<jsp:useBean id="util"  scope="session" class="utility.StringTool"/>
<jsp:setProperty name="util" property="*"/>
<%
/*
*****************************GENERAL INFORMATION***********************************************
*Program ID : Bus_Policyapp_List.jsp
*Directory : /data1/pa18/nul/mcip/public_html/operator_manager/
*URL : http://10.16.102.1:8800/operator_manager/Bus_Policyapp_List.jsp
*Previous Page : Bus_Forward.jsp
*Next Page : none
*Author : Lawrence Kang
*Created Date : 2000-11-06
*Last Updated :
*Status : open
*Function : �г�Ͷ���嵥��С�ƹ�����Ա�鿴
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
		dptSum[][],
		insrncSum[][],
	/*B0002+*/
	numStr = request.getParameter("numStr"),
	/*E0002+*/
		fromYear = StringTool.null2Blank((String)request.getAttribute("fromYear")),
		fromMonth = StringTool.null2Blank((String)request.getAttribute("fromMonth")),
		fromDay = StringTool.null2Blank((String)request.getAttribute("fromDay")),
		toYear = StringTool.null2Blank((String)request.getAttribute("toYear")),
		toMonth = StringTool.null2Blank((String)request.getAttribute("toMonth")),
		toDay = StringTool.null2Blank((String)request.getAttribute("toDay")),
		dpt = StringTool.null2Blank((String)request.getAttribute("dpt")),
		expand = StringTool.null2Blank((String)request.getAttribute("expand")),
		fromInsrncTyp = StringTool.null2Blank((String)request.getAttribute("fromInsrncTyp")),
		toInsrncTyp = StringTool.null2Blank((String)request.getAttribute("toInsrncTyp")),
		currency = StringTool.null2Blank((String)request.getAttribute("currency")),
		siteCde = StringTool.null2Blank((String)request.getAttribute("siteCde")),
		plyAppStat = StringTool.null2Blank((String)request.getAttribute("plyAppStat")),
		busType = StringTool.null2Blank((String)request.getAttribute("busType")),
		fromTime ,
		toTime,
		formTable[][] ,
		formPara[],
		result[][],
		dptResult[] = null,
		oprCde;

	if (plyAppStat == null || plyAppStat.length()== 0){
		plyAppStat = request.getParameter("plyAppStat");
	}
/*B0002+*/
Integer pNo;
/*E0002+*/

	oprCde=sessionuser.getuserId(Locate);
/*B0002+*/
if (numStr == null) //first enter the page
{
/*E0002+*/
	try//�����Ͻ�����б�
	{
		formPara = new String[1];
		formPara[0] = oprCde;
		ub.setFormPara(ZConst.QUERY_OPTRDPTLIST,formPara);
		result = ub.getRetValueArra();
	}
	catch(NormalException e)
	{
		result = null;
	}
	if (result != null && result.length>1){
		int indexOprCde = Objects.getColNum("C_OPR_CDE",result);
		int indexDptCde = Objects.getColNum("C_DPT_CDE",result);
		int indexDptCnm = Objects.getColNum("C_DPT_CNM",result);
		int indexDptEnm = Objects.getColNum("C_DPT_ENM",result);
		dptResult = new String[result.length-1];
		for (int i=1, j=0;i<result.length;i++,j++){
			dptResult[j] = result[i][indexDptCde];
		}
	}

	try{
		formTable = new String[11][];//there are 10 parameters should be pass
		formTable[0] = new String[1];//from time
		formTable[1] = new String[1];// to time
		formTable[2] = new String[1];//departlist
		formTable[3] = new String[1];//from depart
		formTable[4] = new String[1];// to depart
		formTable[5] = new String[1];//from insurance code
		formTable[6] = new String[1];// to insurance code
		formTable[7] = new String[1];//currency code
		formTable[8] = new String[1];//site code
		formTable[9] = new String[1];//ply app status
		formTable[10] = new String[1];//operator code
		formTable[0][0] = fromYear + "-" + fromMonth + "-" + fromDay;
		formTable[1][0] = toYear + "-" + toMonth + "-" + toDay;
		formTable[2] = dptResult;
		formTable[3][0] = dpt;
		formTable[4][0] = expand;
		formTable[5][0] = fromInsrncTyp;
		formTable[6][0] = toInsrncTyp;
		formTable[7][0] = currency;
		formTable[8][0] = siteCde;
		formTable[9][0] = plyAppStat;
		formTable[10][0] = oprCde;
		bb.setFormTable(BConst.GET_PLYAPP_STATICS,formTable);
		result = bb.getRetValueArra();
	}
	catch (Exception e){
		result = null;
	}
/*B0002+*/
	pm.setPageLength(10);
	pm.dumpIn(result);
	pNo = new Integer(0);
	result = pm.getPage(pNo.intValue());
}
else
{
	pNo = new Integer(numStr);
	result = pm.getPage(pNo.intValue());
}
/*E0002+*/
%>
<%@ include file="public/left.jsp"%>

			<div align="center"><br>
				<font color="#0066CC" class="unnamed3">Ͷ �� �� �� �� </font><br>
			</div>
<table width="100%" border="1" cellspacing="0" cellpadding="0" class="td" bgcolor="#DFF9F3" align="center">
	<tr bgcolor="#9DEEDE">
		<td align="center" height="33" width="8%">����</td>
		<td align="center" height="33" width="10%">����</td>
		<td align="center" height="33" width="19%">Ͷ������</td>
		<td align="center" height="33" width="18%">��������</td>
		<td align="center" height="33" width="15%">Ͷ�����</td>
		<td align="center" height="33" width="20%">Ͷ������</td>
	<%if (plyAppStat.equals("2")){%>
		<td align="center" height="33" width="10%">״̬</td>
	<%}%>
	</tr>
	<% if (result != null && result.length>1){
		int indexPlyAppNo = Objects.getColNum("C_PLY_APP_NO",result);
		int indexDptCde = Objects.getColNum("C_DPT_CDE",result);
		int indexInsrncCde = Objects.getColNum("C_INSRNC_CDE",result);
		int indexNAmt = Objects.getColNum("N_AMT",result);
		int indexAmtCur = Objects.getColNum("C_AMT_CUR",result);
		int indexNRate = Objects.getColNum("N_RATE",result);
		int indexNPrm = Objects.getColNum("N_PRM",result);
		int indexPrmCur = Objects.getColNum("C_PRM_CUR",result);
		int indexUndrPrsn = Objects.getColNum("C_UNDR_PRSN",result);
		//int indexUndrTm = Objects.getColNum("T_UNDR_TM",result);
		//int indexAppTm = Objects.getColNum("T_APP_TM",result);
		int indexCrtTm = Objects.getColNum("T_CRT_TM",result);
		int indexSiteCde = Objects.getColNum("C_SITE_CDE",result);
		int indexDptCnm = Objects.getColNum("C_DPT_CNM",result);
		int indexInsrncCnm = Objects.getColNum("C_INSRNC_CNM",result);
		int indexAmtCurCnm = Objects.getColNum("C_AMT_CUR_CNM",result);
		int indexPrmCurCnm = Objects.getColNum("C_PRM_CUR_CNM",result);
		int indexInsrntNme = Objects.getColNum("C_INSRNT_NME",result);
		int indexPrpslExist = Objects.getColNum("PRPSL_EXIST",result);
			for (int i=1;i<result.length;i++){%>
	<tr>
		<td align="center" width="8%"><%=result[i][indexDptCnm]%>&nbsp;</td>
		<td align="center" width="10%"><%=result[i][indexInsrncCnm]%>(<%=result[i][indexInsrncCde]%>)&nbsp;</td>
		<td align="center" width="19%"><%=result[i][indexPlyAppNo]%>&nbsp;</td>
		<td align="center" width="18%"><%=result[i][indexInsrntNme]%>&nbsp;</td>
		<td align="center" width="15%"><%=util.fixedComma(result[i][indexNAmt])%>(<%=result[i][indexAmtCurCnm]%>)&nbsp;</td>
		<td align="center" width="20%"><%=result[i][indexCrtTm]%>&nbsp;</td>
	<%if (plyAppStat.equals("2")){
			if(result[i][indexPrpslExist].equals("0")){%>
				<td width="10%">�޽�����</td>
			<%}else{%>
				<td width="10%">�н�����</td>
	<%	}
	}%>
	</tr>
	<%	}
	}%>
</table>
	<!--
	B0002+
	-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="td" align="center">
	<tr>
		<td align="left" width="30%">
		<%if (pNo.intValue()>0){%>
		<a href="Bus_Plyapp_List.jsp?plyAppStat=<%=plyAppStat%>&numStr=<%=pNo.toString(0)%>">[��    ҳ]</a>
		<a href="Bus_Plyapp_List.jsp?plyAppStat=<%=plyAppStat%>&numStr=<%=pNo.toString(pNo.intValue()-1)%>">[��һҳ]</a>
		<%}
		else{
			out.println("[��    ҳ]");
			out.println("[��һҳ]");
		}
		%>
		<td align="center" width="40%">
			��<%=pm.getTotalPage()%>ҳ����<%=pNo.toString(pNo.intValue()+1)%>ҳ
		</td>
		</td>
		<td align="right" width="30%">
		<%if (pNo.intValue() < pm.getTotalPage()-1){%>
		<a href="Bus_Plyapp_List.jsp?plyAppStat=<%=plyAppStat%>&numStr=<%=pNo.toString(pNo.intValue()+1)%>">[��һҳ]</a>
		<a href="Bus_Plyapp_List.jsp?plyAppStat=<%=plyAppStat%>&numStr=<%=pm.getTotalPage()-1%>">[ĩ    ҳ]</a>
		<%}
		else{
			out.println("[��һҳ]");
			out.println("[ĩ    ҳ]");
		}
		%>
		</td>
	</tr>
	</table>
	<!--
	E0002+
	-->
<br>
<center>
<%
		Vector  dptCde = new Vector();//������
		Vector  dptName = new Vector();//��������
		Vector countD = new Vector();//ҵ�����������ݻ���������
		Vector AmtD = new Vector();//�����ݻ���������

		Vector insrncCde = new Vector();
		Vector insrncName = new Vector();//����
		Vector countI = new Vector();//ҵ����������������������
		Vector AmtI = new Vector();//����������������

		//������ж�����ҵĻ���
			String exchangeList[][] = null;
			try{
				formPara = new String[2];
				formPara[0] = "";
				formPara[1] = "01";
				sb.setFormPara(Const.GET_EXCHANGERATE,formPara);
				exchangeList = sb.getRetValueArra();
			}
			catch (Exception e){
				exchangeList = null;
			}

		result = pm.dumpOut();
		if (result != null && result.length>1 ){
			int index = 0;
			int indexDpt=0,indexInsrnc=0;
			int indexPlyAppNo = Objects.getColNum("C_PLY_APP_NO",result);
			int indexDptCde = Objects.getColNum("C_DPT_CDE",result);
			int indexInsrncCde = Objects.getColNum("C_INSRNC_CDE",result);
			int indexNAmt = Objects.getColNum("N_AMT",result);
			int indexAmtCur = Objects.getColNum("C_AMT_CUR",result);
			int indexNRate = Objects.getColNum("N_RATE",result);
			int indexNPrm = Objects.getColNum("N_PRM",result);
			int indexPrmCur = Objects.getColNum("C_PRM_CUR",result);
			int indexUndrPrsn = Objects.getColNum("C_UNDR_PRSN",result);
			int indexUndrTm = Objects.getColNum("T_UNDR_TM",result);
			int indexSiteCde = Objects.getColNum("C_SITE_CDE",result);
			int indexDptCnm = Objects.getColNum("C_DPT_CNM",result);
			int indexInsrncCnm = Objects.getColNum("C_INSRNC_CNM",result);
			int indexAmtCurCnm = Objects.getColNum("C_AMT_CUR_CNM",result);
			int indexPrmCurCnm = Objects.getColNum("C_PRM_CUR_CNM",result);
			for (int i=1;i<result.length;i++){
				//get exchange rate for current policy
				BigDecimal exRate =new BigDecimal(1);
				if (exchangeList != null && exchangeList.length > 1){
					int indexCurNo1 = Objects.getColNum("C_CUR_NO_1",exchangeList);
					int indexCurNo2 = Objects.getColNum("C_CUR_NO_2",exchangeList);
					int indexEffcTm = Objects.getColNum("T_EFFC_TM",exchangeList);
					int indexChgRte = Objects.getColNum("N_CHG_RTE",exchangeList);
					for (int j=1;j<exchangeList.length;j++){
						if (exchangeList[j][indexCurNo1].equals(result[i][indexAmtCur])){
							exRate = new BigDecimal(exchangeList[j][indexChgRte]);
							break;
						}//endif
					}//endfor
				}//endif
				indexDpt = dptCde.indexOf(result[i][indexDptCde]);
				indexInsrnc = insrncCde.indexOf(result[i][indexInsrncCde]);
				//calculate the summary by department
				if (indexDpt == -1) {//find a new department
					dptCde.add(result[i][indexDptCde]);
					dptName.add(result[i][indexDptCnm]);
					countD.add( new Integer(1));
					AmtD.add( new BigDecimal(exRate.doubleValue()*(new BigDecimal(result[i][indexNAmt]).doubleValue())));
				}
				else{//add the known department counter & amount
					Integer intConv = (Integer)countD.get(indexDpt);
					BigDecimal doubConv = (BigDecimal)AmtD.get(indexDpt);

					countD.set(indexDpt, new Integer(intConv.intValue()+1));
					AmtD.set(indexDpt, new BigDecimal(doubConv.doubleValue()+ exRate.doubleValue()*(new BigDecimal(result[i][indexNAmt]).doubleValue())));
				}
				//calculate the summary by insruance type
				if (indexInsrnc == -1) {// find a new insurance type
					insrncCde.add(result[i][indexInsrncCde]);
					insrncName.add(result[i][indexInsrncCnm]);
					countI.add( new Integer(1));
					AmtI.add( new BigDecimal(exRate.doubleValue()*(new BigDecimal(result[i][indexNAmt]).doubleValue())));
				}
				else{//add the known insurance counter & amount
					Integer intConv = (Integer)countI.get(indexInsrnc);
					BigDecimal doubConv = (BigDecimal)AmtI.get(indexInsrnc);
					countI.set(indexInsrnc, new Integer(intConv.intValue()+1));
					AmtI.set(indexInsrnc, new BigDecimal(doubConv.doubleValue()+ exRate.doubleValue()*(new BigDecimal(result[i][indexNAmt]).doubleValue())));
				}

			}//endfor
}//endif
%>
<span class="unnamed3"><font color="#0066CC">�� �� С ��</font></span>
<table width="100%" border="1" cellspacing="0" cellpadding="0" bgcolor="#DFF9F3" class="td">
		<tr bgcolor="#9DEEDE">
			<td width="58%" align="center">������</td>
			<td width="19%" align="center">ҵ��������������</td>
			<td width="23%" align="center">������ң�</td>
		</tr>
		<%
		int sumCountD = 0;//counter subtotal
		BigDecimal sumAmtD = new BigDecimal(0);//amount subtotal
		for (int i=0;i<dptCde.size();i++){
				sumCountD += ((Integer)countD.get(i)).intValue();
				sumAmtD = sumAmtD.add((BigDecimal)AmtD.get(i));%>
		<tr>
			<td width="58%" align="center">
			<%=dptName.get(i)%>(<%=dptCde.get(i)%>)&nbsp;</td>
			<td width="19%" align="center"><%=countD.get(i)%>&nbsp;</td>
			<td width="23%" align="center">
			<!--//=((BigDecimal)AmtD.get(i)).setScale(2,BigDecimal.ROUND_HALF_UP)
			//�������շ���ĵ�����-->
           <%=util.fixedComma(((BigDecimal)AmtD.get(i)).setScale(2,BigDecimal.ROUND_HALF_UP).toString())%>
			&nbsp;</td>
		</tr>
		<%}%>
		<tr bgcolor="#9DEEDE">
			<td width="58%" align="center">�ܼƣ�</td>
			<td width="19%" align="center"><%=sumCountD%>&nbsp;</td>
			<td width="23%" align="center">
			<!--
			//=sumAmtD.setScale(2,BigDecimal.ROUND_HALF_UP)
			//�������շ���ĵ�����-->
			<%=util.fixedComma(sumAmtD.setScale(2,BigDecimal.ROUND_HALF_UP).toString())
			%>
			&nbsp;</td>
		</tr>
	</table>
<font color="#0066CC"><span class="unnamed3"> �� �� С ��</span></font>
	<table width="100%" border="1" cellspacing="0" cellpadding="0" bgcolor="#DFF9F3" class="td">
		<tr bgcolor="#9DEEDE">
			<td width="58%" align="center">������</td>
			<td width="19%" align="center">ҵ��������������</td>
			<td width="23%" align="center">������ң�</td>
		</tr>
		<%
		int sumCountI = 0;//counter subtotal
		BigDecimal sumAmtI = new BigDecimal(0);//amount subtotal
		for (int i=0;i<insrncCde.size();i++){
				sumCountI += ((Integer)countI.get(i)).intValue();
				sumAmtI = sumAmtI.add((BigDecimal)AmtI.get(i));%>
		<tr>
			<td width="58%" align="center"><%=insrncName.get(i)%>(<%=insrncCde.get(i)%>)&nbsp;</td>
			<td width="19%" align="center"><%=countI.get(i)%>&nbsp;</td>
			<td width="23%" align="center">
			<!--//=((BigDecimal)AmtI.get(i)).setScale(2,BigDecimal.ROUND_HALF_UP)
			//�������շ���ĵ�����-->
		<%=util.fixedComma(((BigDecimal)AmtI.get(i)).setScale(2,BigDecimal.ROUND_HALF_UP).toString())%>
			&nbsp;</td>
		</tr>
		<%}%>
		<tr bgcolor="#9DEEDE">
			<td width="58%" align="center">�ܼƣ�</td>
			<td width="19%" align="center"><%=sumCountI%>&nbsp;</td>
			<td width="23%" align="center">
			<!-- //=sumAmtD.setScale(2,BigDecimal.ROUND_HALF_UP)
			//�������շ���ĵ�����-->
			<%=util.fixedComma(sumAmtD.setScale(2,BigDecimal.ROUND_HALF_UP).toString())
			%>
			&nbsp;</td>
		</tr>
	</table>
</center>
<p>&nbsp;</p><p><center><a href="Bus_List.jsp?sessionId=<%=Code.Encrypt(sessionId)%>">���� </a> </center></p>
<%@ include file="public/bottom.jsp"%>