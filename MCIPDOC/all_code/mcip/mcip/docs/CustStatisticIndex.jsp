<html>
<head>
<title>ƽ�����˱���-�����嵥</title>
<link REL=STYLESHEET TITLE=text TYPE=text/css href=index.css>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">

<%@ include file="public/Public.jsp" %>


<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="tool.js"></SCRIPT>
<SCRIPT FOR=window EVENT=onload LANGUAGE="JavaScript">
form1.checkOption[2].focus();
form1.checkOption[1].focus();
form1.checkOption[0].focus();
</SCRIPT>

<SCRIPT LANGUAGE="JavaScript">
  function checkIsnull(fieldOption,fieldply)
  {

     var valuestr = fieldply.value;
     if(fieldOption[0].checked && valuestr=="")
     {
        alert("���ݵ��Ų�ѯ�������뵥��");
        return false;
     }

     return true;
  }
</SCRIPT>

<%
   String SdateFrom[] = Servlets.DivideMultiStr(ServTool.getSysDate(-30),"-");
   String SdateTo[] = Servlets.DivideMultiStr(ServTool.getSysDate(0),"-");
   String Cnm = Const.PLYAPP_CNM;
   String Pic = "images/m_inq1.gif";
   String AgencyValue = Const.FIND;
   Cnm = Const.PLY_CNM;
   Pic = "images/m_inq2.gif";
   AgencyValue = Const.CASE;
%>



<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr>

<%
if(MenuRef.equals("MENU_REPORT"))
{
%>
<td width="165" height="288" valign="top">
<img src="images/rep_rep.gif" width="190" height="54"><br>
<br>��<a href="index.jsp?Logout=0"><img src="images/hback.gif" width="80" height="50" alt="������ҳ" border="0"></a>
</td>
<%
}
else
{
%>
<%@ include file="public/PublicInquireLeft.jsp" %>
<%
}
%>


    <td width="613" height="288" valign="top"> <br>
      <img src="<%=Pic%>" width="150" height="31" alt="<%=Cnm%>��ѯ">

 <table border="0" width="70%" cellpadding="4" >

  <tr>
<td width="5%">��</td>
    <td bgcolor="#F6F6F6">

<form name="form1" METHOD="POST" action="CustStatisticList.jsp" onsubmit="return(
   IsChecked(checkOption) ||
   (ValidDateNew(tempdatefr,year_fr)&&
   ValidDateNew(tempdateto,year_to))
);">

              <p>1����ѡ�����Ĳ�ѯ��ʽ</p>

                <p>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                  <input type="radio" name="checkOption" value="0"
                  onclick="PlyDisableNew(checkOption,C_PLY_APP_NO,year_fr,month_fr,day_fr,year_to,month_to,day_to);"
                  onfocus="PlyDisableNew(checkOption,C_PLY_APP_NO,year_fr,month_fr,day_fr,year_to,month_to,day_to);">
                  <%=Cnm%>��
                  <input type="radio" name="checkOption" value="1"
                  onclick="PlyDisableNew(checkOption,C_PLY_APP_NO,year_fr,month_fr,day_fr,year_to,month_to,day_to);"
                  onfocus="PlyDisableNew(checkOption,C_PLY_APP_NO,year_fr,month_fr,day_fr,year_to,month_to,day_to);">
                  <%if(MenuRef.equals("FindEdrSmtApp") || MenuRef.equals("FindEdrSmt")){%>����ʱ��<%}else{%>Ͷ��ʱ�� <%}%>
                  <input type="radio" name="checkOption" value="2" checked
                  onclick="PlyDisableNew(checkOption,C_PLY_APP_NO,year_fr,month_fr,day_fr,year_to,month_to,day_to);"
                  onfocus="PlyDisableNew(checkOption,C_PLY_APP_NO,year_fr,month_fr,day_fr,year_to,month_to,day_to);">

                  ����<%=Cnm%></p>
              <p>2�����������Ĳ�ѯ����</p>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
          <%=Cnm%>��:<input type="text" name="C_PLY_APP_NO" size="25" maxlength="20">
          <p>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
          Ͷ��ʱ�䷶Χ:
	</p>
        <p>
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        ��:
          <input type="text" name="year_fr" size="5" maxlength="4" value="<%=SdateFrom[0]%>">
          ��
          <input type="text" name="month_fr" size="3" maxlength="2" value="<%=SdateFrom[1]%>">
          ��
          <input type="text" name="day_fr" size="3" maxlength="2" value="<%=SdateFrom[2]%>">
          ��
          </p>
        <p>����
&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
        ��:
          <input type="text" name="year_to" size="5" maxlength="4" value="<%=SdateTo[0]%>">
          ��
          <input type="text" name="month_to" size="3" maxlength="2" value="<%=SdateTo[1]%>">
          ��
          <input type="text" name="day_to" size="3" maxlength="2" value="<%=SdateTo[2]%>">
          �� </p>
           <input type="hidden" name="tempdatefr" value="2000-08-28">
           <input type="hidden" name="tempdateto" value="2000-08-28">
          <div align="center"><br>
          	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <input type="submit" value="ȷ��" name="B1"
           onclick="change(year_fr,month_fr,day_fr,tempdatefr);change(year_to,month_to,day_to,tempdateto);return(checkIsnull(checkOption,C_PLY_APP_NO));">
            <input type="reset" value="���" name="B2">
          </div>
    	<input type="hidden" name="<%=Const.C_AGENCY_NO%>" value="<%=AgencyValue%>">
    <input type="hidden" name="<%=MenuMake.MENU_REF%>" value="<%=MenuRef%>">
    </form>

         </td>
    </tr>
  </table>


        </div>


    </td>
  </tr>
</table>
<!--<a href="Find_Ply.jsp?MENU_REF=FindPly">����</a>-->

<%@ include file="public/PublicBottom.html" %>

</body>
</html>
