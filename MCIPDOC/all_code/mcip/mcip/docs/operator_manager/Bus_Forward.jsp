<%@ page language="java" import="java.beans.Beans,java.math.*,java.lang.*,java.io.*,java.util.*,exceptions.*,constant.*,utility.*,beans.*" errorPage="ErrOut.jsp" contentType= "text/html; charset=gb2312"%>
<%
/*
*****************************GENERAL INFORMATION***********************************************
*Program ID : Bus_Forward.jsp
*Directory : /data1/pa18/nul/mcip/public_html/operator_manager/
*URL : http://10.16.102.1:8800/operator_manager/Bus_Forward.jsp
*Previous Page : Bus_List.jsp
*Next Page : Bus_Plyapp_List.jsp, Bus_Proposal_List.jsp, Bus_Policy_List.jsp, Bus_Edr_List.jsp Bus_Claim_List.jsp, Bus_Cust_List.jsp
*Author : Lawrence Kang
*Created Date : 2000-10-18 11:24:09
*Last Updated :
*Status : open
*Function : �����û�����һ��ҳ����ѡ�������,ת����ͬ��ҳ��.���ҳ������û���˵��͸����.
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
/////////////////////////////////////////////////////////////////////////////////////////////////
//GET PARAMETERS FROM LAST PAGE
String	sessionId=request.getParameter("sessionId");
String fromYear = request.getParameter("fromYear");//��ʼ��
String fromMonth = request.getParameter("fromMonth");//��ʼ��
String fromDay = request.getParameter("fromDay");//��ʼ��
String toYear = request.getParameter("toYear");//������
String toMonth = request.getParameter("toMonth");//������
String toDay = request.getParameter("toDay");//������
String dpt = request.getParameter("dpt");//��ʼ����
String expand = StringTool.null2Blank(request.getParameter("expand"));//չ����־
String fromInsrncTyp = request.getParameter("fromInsrncTyp");//��ʼ����
String toInsrncTyp = request.getParameter("toInsrncTyp");//��������
String currency = request.getParameter("currency");//��������
String siteCde = request.getParameter("siteCde");//ҵ����Դ
String plyAppStat = request.getParameter("plyAppStat");//Ͷ���嵥����
String busType = request.getParameter("busType");//ҵ�����
request.setAttribute("sessionId",sessionId);
request.setAttribute("fromYear",fromYear);
request.setAttribute("fromMonth",fromMonth);
request.setAttribute("fromDay",fromDay);
request.setAttribute("toYear",toYear);
request.setAttribute("toMonth",toMonth);
request.setAttribute("toDay",toDay);
request.setAttribute("dpt",dpt);
request.setAttribute("expand",expand);
request.setAttribute("fromInsrncTyp",fromInsrncTyp);
request.setAttribute("toInsrncTyp",toInsrncTyp);
request.setAttribute("currency",currency);
request.setAttribute("siteCde",siteCde);
request.setAttribute("plyAppStat",plyAppStat);
request.setAttribute("busType",busType);
%>
<jsp:forward page="<%=busType%>" />
<!--
<html>
	<head>
	</head>
	<body>
fromYear:<%=fromYear%><br>
fromMonth:<%=fromMonth%><br>
fromDay:<%=fromDay%><br>
toYear:<%=toYear%><br>
toMonth:<%=toMonth%><br>
toDay:<%=toDay%><br>
dpt:<%=dpt%><br>
expand:<%=expand%><br>
fromInsrncTyp:<%=fromInsrncTyp%><br>
toInsrncTyp:<%=toInsrncTyp%><br>
currency:<%=currency%><br>
siteCde:<%=siteCde%><br>
plyAppStat:<%=plyAppStat%><br>
busType:<%=busType%><br>
	</body>
</html>
-->