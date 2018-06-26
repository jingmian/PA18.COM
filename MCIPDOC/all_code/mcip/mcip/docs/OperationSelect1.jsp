<%
/*
*****************************GENERAL INFORMATION***********************************************
*Program ID : OperationSelect1.jsp
*Directory : /data1/pa18/nul/mcip/public_html/
*URL : http://10.16.102.1:8800/OperationSelect1.jsp
*Previous Page : Menu.jsp
*Next Page : Inquiry.jsp
*Author : Lawrence Kang
*Created Date : 2000/09/26
*Last Updated : 2000/10/10
*Status : submited for test
*Function : I.Submit user's query request to the next page
*============================MODIFIED HISTORY==================================================
*Date : 
*Time : 
*Modify id : 
*Modifier : 
*Reason : 
***********************************************************************************************
*/
%>
<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=index.css>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0"  onload="f.TranType(0).click();">
<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="tool.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript">
function disHomes(){
	f.HomeType(0).disabled = true;
	f.HomeType(1).disabled = true;
	f.HomeType(2).disabled = true;
	f.HomeType(3).disabled = true;
	f.PortType(0).disabled= false;
	f.PortType(1).disabled= false;
	f.PortType(2).disabled= false;
}
function disPorts(){
	f.HomeType(0).disabled = false;
	f.HomeType(1).disabled = false;
	f.HomeType(2).disabled = false;
	f.HomeType(3).disabled = false;
	f.PortType(0).disabled= true;
	f.PortType(1).disabled= true;
	f.PortType(2).disabled= true;
}
</SCRIPT>

<FORM name="f" METHOD="POST" ACTION="Inquiry.jsp" >
<%@ include file="public/Public.jsp" %>
<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr> 
  <%@ include file="public/PublicConsultLeft.html" %>
    <td width="613" height="288" valign="top"> <br>
      <img src="images/con_cal.gif" width="150" height="31" alt="���Ѳ���"> 
<!--new page start-->
      <table border="0" width="98%" cellpadding="0" height="235" cellspacing="0">
        <tr> 
          <td class="title" height="49"> ҵ�����ͺ����䷽ʽѡ��: </td>
        </tr>
        <tr>
          <td height="20">�������ͣ�</td>
        </tr>
        <tr>
          <td height="47"> ������ 
            <input type="radio" checked name="TranType" value="<%=Const.C_HOME_CDE%>" onclick="disPorts();">
            ���ڻ��� 
            <input type="radio" name="TranType" value="<%=Const.C_IMPORT_CDE%>" onclick="disHomes();">
            ���ڻ��� 
            <input type="radio" name="TranType" value="<%=Const.C_EXPORT_CDE%>" onclick="disHomes();">
            ���ڻ��� </td>
        </tr>
        <tr>
          <td height="27">���䷽ʽ��</td>
        </tr>
        <tr>
          <td> <br>
            <table width="97%" border="1" cellspacing="0" cellpadding="0" height="67" align="center">
              <tr bgcolor="#F5F5F5" bordercolor="#FFFFFF"> 
                <td width="51%" class="text">���ڻ���</td>
                <td width="49%" class="text">����/���ڻ���</td>
              </tr>
              <tr bgcolor="#FFFFFF" bordercolor="#FFFFFF"> 
                <td width="51%"> �� 
                  <input type="radio" checked name="HomeType" value="<%=Const.C_RAILAGE_CDE%>"><%=Const.C_RAILAGE_CNM%>
                  <input type="radio" name="HomeType" value="<%=Const.C_ROAD_CDE%>"><%=Const.C_ROAD_CNM%>
                  <input type="radio" name="HomeType" value="<%=Const.C_WATER_CDE%>"><%=Const.C_WATER_CNM%>
                  <input type="radio" name="HomeType" value="<%=Const.C_H_AVIATION_CDE%>"><%=Const.C_H_AVIATION_CNM%>
				</td>
                <td width="49%"> �� 
                  <input type="radio" checked name="PortType" value="<%=Const.C_LANDWAY_CDE%>"><%=Const.C_LANDWAY_CNM%>
                  <input type="radio" name="PortType" value="<%=Const.C_SEA_CDE%>"> <%=Const.C_SEA_CNM%> 
                  <input type="radio" name="PortType" value="<%=Const.C_AVIATION_CDE%>"><%=Const.C_AVIATION_CNM%>
				</td>
              </tr>
            </table>
			<br>
			<div align="center">
              <input type="submit" name="Submit" value="��һ��">
			  </div>
          </td>
        </tr>
      </table>
</td>
  </tr>
</table>
  <%String sessionid = Code.Encrypt(sessionId);%>
  <input type="hidden" name="sessionid" value="<%=sessionid%>">
</form>
<!--new page stop-->
<%@ include file="public/PublicBottom.html" %>
</body>
</html>
