<html>
<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=table.css>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">
<%@ include file="public/Public.jsp" %> 

<% 
   String OperationType = "";
   String ClientType = sessionbuffer.getClientType(Locate);
   if(ClientType.equals(Const.CUST_AG))
   {  
      OperationType = Const.AGENT;   
   }
   else    
   {
      OperationType = Const.OTHER;   
   }
%>


<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="tool.js"></SCRIPT>
<SCRIPT FOR=window EVENT=onload LANGUAGE="JavaScript">
   	opselect.TranType[2].focus();
   	opselect.TranType[1].focus();
   	opselect.TranType[0].focus();   	   	
</SCRIPT>

<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr> 
<%if (ClientType.equals(Const.CUST_OC)){%>
	<%@ include file="public/PublicPlyLeft.html" %>
<%}else{%>
	<%@ include file="public/PublicPlyLeft_blank.jsp"%>
<%}%>


    <td width="613" height="288" valign="top"> 

<FORM name="opselect" METHOD="POST" ACTION="OperationSelectMid.jsp" >
        <table width="95%" border="0" cellspacing="0" cellpadding="0">
          <tr align="center">
            <td colspan="2" height="10">&nbsp;</td>
          </tr>
          <tr > 
            <td colspan="2"> <img src="images/select.gif" width="150" height="31" alt="ҵ�����ͺ����䷽ʽѡ��"> </td>
          </tr>
          <tr> 
            <td width="10%" height="10">&nbsp;</td>
            <td width="90%">&nbsp;</td>
          </tr>
          <tr align="center"> 
            <td colspan="2" height="15" class="text"><font color="#3333FF">����ȷѡ��������ͺ����䷽ʽ�����ǽ���������ѡ��ṩ���ͬʱ������Ҫ¼���Ͷ����Ϣ�� 
              </font></td>
          </tr>
          <tr> 
            <td width="10%" height="15">&nbsp;</td>
            <td width="90%">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" height="15">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" height="20" bgcolor="#F0F0F0">�������ͣ�����ѡ,���ڻ�����ѡ���Ƿ�����֤��ʽ���</td>
          </tr>
          <tr>

            <td width="10%" height="15">&nbsp;</td>
            <td width="90%">
            
                <input type="radio" name="TranType" checked value="<%=Const.C_HOME_CDE%>" onclick="selectDisable('1',TranType,HOME_TRANSIT,PORT_TRANSIT);creditDisable('1',TranType,Credit);return true"
                 onfocus="selectDisable('1',TranType,HOME_TRANSIT,PORT_TRANSIT);creditDisable('1',TranType,Credit);return true"                >
                <%=Const.C_HOME_CNM%>&nbsp;
                <input type="radio" name="TranType" value="<%=Const.C_IMPORT_CDE%>" onclick="selectDisable('2',TranType,HOME_TRANSIT,PORT_TRANSIT);creditDisable('1',TranType,Credit);return true"
                 onfocus="selectDisable('2',TranType,HOME_TRANSIT,PORT_TRANSIT);creditDisable('1',TranType,Credit);return true"                >
                <%=Const.C_IMPORT_CNM%>&nbsp;&nbsp;
                <input type="radio" name="TranType" value="<%=Const.C_EXPORT_CDE%>" onclick="selectDisable('2',TranType,HOME_TRANSIT,PORT_TRANSIT);creditDisable('2',TranType,Credit);return true"
                 onfocus="selectDisable('2',TranType,HOME_TRANSIT,PORT_TRANSIT);creditDisable('2',TranType,Credit);return true">
                <%=Const.C_EXPORT_CNM%>��<input type="radio" checked name="Credit"���� value="<%=Const.C_NOCREDIT_CDE%>" >������֤����
 			  <input type="radio" name="Credit"���� value="<%=Const.C_CREDIT_CDE%>">����֤���</p>
            </td>
          </tr>
          <tr>
            <td width="10%" height="15">&nbsp;</td>
            <td width="90%">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" height="15" bgcolor="#F0F0F0">���䷽ʽ��</td>
          </tr>
          <tr>
            <td width="10%" height="15">&nbsp;</td>
            <td width="90%">&nbsp;</td>
          </tr>
          <tr>
            <td colspan="2" height="15"> 
              <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr> 
                  <td width="50%"> 
                    <table width="95%" border="1" cellspacing="1" cellpadding="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#CCCCFF">
                      <tr align="center"> 
                        <td colspan="2" height="20" bgcolor="#F0F0F0">���ڻ���</td>
                      </tr>
                <tr> 
                  <td width="49%"> 
		    <input type="radio" checked name="HOME_TRANSIT"���� value="<%=Const.C_RAILAGE_CDE%>&<%=Const.N_RAILAGE_CDE%>"><%=Const.C_RAILAGE_CNM%>
					&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="radio" name="HOME_TRANSIT"���� value="<%=Const.C_ROAD_CDE%>&<%=Const.N_ROAD_CDE%>"><%=Const.C_ROAD_CNM%> 
                    <br> 
                    <input type="radio" name="HOME_TRANSIT"���� value="<%=Const.C_WATER_CDE%>&<%=Const.N_WATER_CDE%>"><%=Const.C_WATER_CNM%>
		<br>			 
                    <input type="radio" name="HOME_TRANSIT"���� value="<%=Const.C_H_AVIATION_CDE%>&<%=Const.N_H_AVIATION_CDE%>"><%=Const.C_H_AVIATION_CNM%>
                 </tr>
                    </table>
                  </td>
                  <td width="50%" align="right"> 
                    <table width="95%" border="1" cellspacing="1" cellpadding="0" bordercolor="#FFFFFF" bordercolorlight="#FFFFFF" bordercolordark="#FFCCCC">
                      <tr align="center" bgcolor="#F0F0F0"> 
                        <td colspan="2" height="20">����/���ڻ���</td>
                      </tr>
                   <tr>
                  <td width="51%"> 
                    <input type="radio" checked name="PORT_TRANSIT"���� value="<%=Const.C_LANDWAY_CDE%>&<%=Const.N_LANDWAY_CDE%>">
                    <%=Const.C_LANDWAY_CNM%>  &nbsp;&nbsp;&nbsp; 
                    <br> <input type="radio"  name="PORT_TRANSIT"���� value="<%=Const.C_LANDWAY_CDE%>&<%=Const.N_SEA_CDE%>">
                    <%=Const.C_SEA_CNM%> 
                    <br>  
                      <input type="radio"  name="PORT_TRANSIT"���� value="<%=Const.C_LANDWAY_CDE%>&<%=Const.N_AVIATION_CDE%>" >
                      <%=Const.C_AVIATION_CNM%> &nbsp;&nbsp;&nbsp;&nbsp; 
                      </tr>                  
                    </table>
                  </td>
                </tr>
              </table>
            </td>
          </tr>
          <tr align="center"> 
            <td colspan="2" height="15">&nbsp;</td>
          </tr>
          <tr align="center"> 
            <td colspan="2" height="15"> 

<%
   if(ClientType.equals(Const.CUST_AG))
   {  

%>        
        <input type="submit" value="��  ��" name="B1">
<%
   }
   else
   {
%>        
        <input type="submit" value="��ҪͶ��" name="B2" onclick="setField(OTHER_TYPE,'PLYNEW');return true;">
        <input type="submit" value="���Ʊ���" name="B3" onclick="setField(OTHER_TYPE,'PLYCPY');return true;">        
		<input type="submit" value="�ϴ�����" name="B4" onclick="setField(OTHER_TYPE,'PLYUPLD');return true;">
<%

   }
%>        
        <input type="button" value="ǰһҳ" name="B44" onclick='javascript:history.back();'>          
	</td>
	</tr>
          <tr align="center"> 
            <td colspan="2" height="10">&nbsp;</td>
          </tr>
        </table>
  <%String sessionid = Code.Encrypt(sessionId);%>
  <input type="hidden" name="sessionid" value="<%=sessionid%>">
   <input type="hidden"  name="OperationType" value="<%=OperationType%>">
   <input type="hidden" name="OTHER_TYPE" value="">        

      </form>
    </td>
  </tr>
</table>

<%@ include file="public/PublicBottom.html" %>      

</body>
</html>

