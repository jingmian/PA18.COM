<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>����Э���б�</title>
<link rel="stylesheet" href="../style.css">
<link rel="stylesheet" href="../TableStyle.css">
</head>

<body>
<div align="right">

<address style="border-bottom: 1px dotted">
  ƽ������
</address>
</div>
<SCRIPT LANGUAGE="JavaScript" SRC="../check.js"></SCRIPT>

<%@ page language="java" import="java.lang.*,java.util.*,beans.*,exceptions.*,constant.*,utility.*,com.mcip.orb.CoException" errorPage="ErrOut.jsp" contentType= "text/html; charset=gb2312"%>
<jsp:useBean id="obj_cust"  scope="session" class="beans.CustManagerBean"/> 
<jsp:useBean id="sb"  scope="page" class="beans.StaticInfoBean"/>
<jsp:useBean id="obj_data"  scope="session" class="beans.Zdatabean"/>
<%-- //if expire or reboot --%>
<% String sessionId=obj_data.getinfo2(); %>
<%@ include file="public_session.jsp" %>

<%  //The folloing is to getData from database and display on page
    int i = 0;
    int j = 0;

    String National[][] = null; 
//    String Area[][] = null;
    String Province[][] = null;
    String Edu[][] = null;
    String Duty[][] = null;
    String Title[][] = null;
    String Major[][] = null;
    String city[][] = null;

    int cityLen=0;  
    int NationalLen = 0;
    int AreaLen = 0;   
    int ProvinceLen = 0;   
    int EduLen = 0;   
    int DutyLen = 0;   
    int TitleLen = 0;   
    int MajorLen = 0;   
    
    int birthlen = 0;   
    String birth=null;
    String birthyear="";
    String birthmonth="";
    String birthday="";

    String custorg[][] = null; 
    String userid[] = new String[1];
//    userid[0]="11a";
	userid[0]=(String)request.getAttribute("userid");
	if(userid[0]==null)
    userid[0]=request.getParameter("userid");
//   userid[0] = sessionbuffer.getClientId(Locate);   
    
    
    try
    {

        sb.setFieldValue(Const.GET_MAJOR,"");
        Major = sb.getRetValueArra();

        sb.setFieldValue(Const.GET_NATIONAL,"");
        National = sb.getRetValueArra();

//        sb.setFieldValue(Const.GET_AREA,"");
//        Area = sb.getRetValueArra();
        
        sb.setFieldValue(Const.GET_PROVINCE,"");
        Province = sb.getRetValueArra();
        
        sb.setFieldValue(Const.GET_EDU,"");
        Edu = sb.getRetValueArra();

        sb.setFieldValue(Const.GET_DUTY,"");
        Duty = sb.getRetValueArra();

        sb.setFieldValue(Const.GET_TITILE,"");
        Title = sb.getRetValueArra();

        sb.setFieldValue(Const.GET_CITY,"");
        city = sb.getRetValueArra();
        
    }
    catch(NormalException e)
    {
 		if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
    }
    
    String Area[][] = new String[2][3];
	 Area[1][0]=Const.CHINA_CDE;
	 Area[1][2]="�й�";

    if(!(city== null))
	 {
        cityLen = city.length;
		for(i=1;i<cityLen;i++)
			city[i][0]=city[i][0]+"&"+city[i][4];
	 }

    if(!(National == null))
        NationalLen = National.length;
    if(!(Area == null))
        AreaLen = Area.length;
    if(!(Province == null))
        ProvinceLen = Province.length;
    if(!(Edu == null))
        EduLen = Edu.length;
    if(!(Duty == null))
        DutyLen = Duty.length;
    if(!(Title == null))
        TitleLen = Title.length;
    if(!(Major == null))
        MajorLen = Major.length;
   
     obj_cust.setFormPara(Const.QUERY_CUSTPRSN,userid);
     custorg=obj_cust.getRetValueArra();
     if( !(custorg[1][13] == null) ) 
     	birthlen = custorg[1][13].length();
     if( birthlen < 10) birth="";
     if( birthlen >= 10) 
     {
			birth=custorg[1][13].substring(0,10);
			birthyear=birth.substring(0,4);
			birthmonth=birth.substring(5,7);
			birthday=birth.substring(8,10);
	  }
     // out.println("birlen="+birthlen);	
     // out.println("bir="+custorg[1][13]);	


String JS = ServTool.JSMake(city,Province,"0");
%>
<script LANGUAGE="JavaScript">
<%out.println(JS);%>
</script>
<SCRIPT LANGUAGE="JavaScript" SRC="../tool.js"></SCRIPT>


<p align="center"><font face="����" size="4">�ͻ������޸�</font></p>

<p align="right"><em><font color="#ED7CC9"><small>��</small> * <small>��ѡ�������д</small></font></em></p>

<form method="POST" action="subm_editprsn_rear.jsp" onsubmit="return(
ValidYear(birth_year) &&
ValidMonth(birth_month) &&
ValidDay(birth_day) &&

ValidNull(C_CLNT_NME,false) &&
ValidNull(C_RGST_NO,false) &&
ValidNull(C_TEL,false) &&
ValidNull(C_EMAIL,false) &&
ValidNull(C_PROVINCE,false) &&
ValidNull(C_CITY,false) &&
ValidNull(C_PLACE,false) &&
ValidTel(C_TEL) &&
ValidTel(C_FAX) &&
ValidEmail(C_EMAIL) &&
ValidInt(C_RGST_NO) &&
ValidInt(C_ZIP_CDE) 
);">

 <input TYPE="hidden" NAME="userid" VALUE="<%=userid[0]%>">

  <p>������Ϣ��</p>
  <table width="648" border="5" bordercolordark="#3300CC" bordercolorlight="#3300CC">
    <tr> 
            <td width="45%">��ʵ������ 
              
        <input type="text" name="C_CLNT_NME" value="<%=custorg[1][4]%>" size="20" maxlength="100">
              *</td>
            <td width="55%">���֤���룺
              
        <input type="text" name="C_RGST_NO" value="<%=custorg[1][9]%>" size="25" maxlength="20">
              * </td>
          </tr>
          <tr>
            <td width="45%">&nbsp;&nbsp;&nbsp;&nbsp;�Ա�
	     <% if ( custorg[1][10].equals("M") )
	        { 
	     %>
              <input type="radio" name="C_SEX" value="M" checked>
              ��
              <input type="radio" name="C_SEX" value="F">
              Ů</td>
             <%  }
	         else  {
	     %>
              <input type="radio" name="C_SEX" value="M">
              ��
              <input type="radio" name="C_SEX" value="F" checked>
              Ů</td>
             <%    }    
             %>
              
            <td width="55%">&nbsp;&nbsp;�������£�
              <input type="text" name="birth_year" value="<%=birthyear%>" size="4" maxlength="4">
              ��
              <input type="text" name="birth_month" value="<%=birthmonth%>" size="2" maxlength="2">
              ��
              <input type="text" name="birth_day" value="<%=birthday%>" size="2" maxlength="2">
              ��</td>
          </tr>
          <tr>
            <td width="45%">&nbsp;&nbsp;&nbsp;&nbsp;���壺
              <select name="C_NTN_CDE" size="1">
                <%
                   if(NationalLen > 1)
                   {
                      for(i = 1; i < NationalLen; i++)
                      {
                        if( National[i][0].equals(custorg[1][12]) )
                        {
                %>
                          <option selected value= "<%=National[i][0]%>"> <%=National[i][1]%> </option>
                <%      }
                        else   {
                %> 
                          <option value= "<%=National[i][0]%>"> <%=National[i][1]%> </option>
                <%
                                }       
                      }
                    }   
                %>          
              </select>
            </td>
            <td width="55%">&nbsp;&nbsp;�绰���룺
              <input type="text" name="C_TEL" value="<%=custorg[1][21]%>" size="25" maxlength="20">
              *���������� </td>
          </tr>
          <tr>
            <td width="45%">&nbsp;&nbsp;&nbsp;&nbsp;���棺
              <input type="text" name="C_FAX" value="<%=custorg[1][22]%>" size="20" maxlength="20">
            </td>
            <td width="55%">&nbsp;&nbsp;&nbsp;&nbsp;E-Mail��
              <input type="text" name="C_EMAIL" value="<%=custorg[1][23]%>" size="25" maxlength="30">
              *</td>
          </tr>
          <tr bordercolor="#CC33CC">
            <td width="45%">���ڹ��ң�
              <select name="C_ARA_CDE" size="1">
                <%
                   if(AreaLen > 1)
                   {
                      for(i = 1; i < AreaLen; i++)
                      {
                        if( Area[i][0].equals(Objects.getValue(1,"C_ARA_CDE",custorg)) )
                        {
                %>
                          <option selected value= "<%=Area[i][0]%>"> <%=Area[i][2]%> </option>
                <%      }
                        else   {
                %> 
                          <option value= "<%=Area[i][0]%>"> <%=Area[i][2]%> </option>
                <%
                                }       
                      }
                    }   
                %>          
              </select>
              *</td>
            <td width="55%">����ʡ/ֱϽ�У�
              <select name="C_PROVINCE" size="1" onChange="editCity(C_PROVINCE,C_CITY);return true;">
                <%
                   if(ProvinceLen > 1)
                   {
                      for(i = 1; i < ProvinceLen; i++)
                      {
                        if( Province[i][0].equals(Objects.getValue(1,"C_PROVINCE",custorg)) )
                        {
                %>
                          <option selected value= "<%=Province[i][0]%>"> <%=Province[i][1]%> </option>
                <%      }
                        else   {
                %> 
                          <option value= "<%=Province[i][0]%>"> <%=Province[i][1]%> </option>
                <%
                                }       
                      }
                    }   
                %>          
              </select>
              *</td>
          </tr>
          <tr bordercolor="#CC33CC">
            <td width="45%" height="48"> ������/��/��:
              <select name="C_CITY" size="1">
                <%
                   if(cityLen > 1)
                   {
							String tempsss=Objects.getValue(1,"C_CITY",custorg)+"&"+Objects.getValue(1,"c_dpt_cde",custorg);
                      for(i = 1; i < cityLen; i++)
                      {
                        if( city[i][0].equals(tempsss) )
                        {
                %>
                          <option selected value= "<%=city[i][0]%>"> <%=city[i][1]%> </option>
                <%      }
                        else   {
                %> 
                          <option value= "<%=city[i][0]%>"> <%=city[i][1]%> </option>
                <%
                                }       
                      }
                    }   
                %>          
              </select>
              *
			</td>
            <td rowspan="2" width="55%">��ϸ��ַ��
              <textarea name="C_PLACE" value="<%=custorg[1][28]%>" cols="40" rows="4"><%=Objects.getValue(1,"C_PLACE",custorg)%></textarea>
              *</td>
          </tr>
          <tr bordercolor="#CC33CC">
            <td width="45%">�ʱࣺ
              <input type="text" name="C_ZIP_CDE" value="<%=custorg[1][29]%>" size="20" maxlength="6">
            </td>
          </tr>
          <tr>
            <td width="45%">���ѧ����
              <select name="C_EDU_CDE" size="1">
                <%
                   if(EduLen > 1)
                   {
                      for(i = 1; i < EduLen; i++)
                      {
                        if( Edu[i][0].equals(custorg[1][17]) )
                        {
                %>
                          <option selected value= "<%=Edu[i][0]%>"> <%=Edu[i][1]%> </option>
                <%      }
                        else   {
                %> 
                          <option value= "<%=Edu[i][0]%>"> <%=Edu[i][1]%> </option>
                <%
                                }       
                      }
                    }   
                %>          
              </select>
            </td>
            <td width="55%">��ҵѧУ��
              <input type="text" name="C_GRDT" value="<%=custorg[1][15]%>" size="30" maxlength="30">
            </td>
          </tr>
          <tr>
            <td width="45%">רҵ��
              <select name="C_MAJOR_CDE" size="1">
                <%
                   if(MajorLen > 1)
                   {
                      for(i = 1; i < MajorLen; i++)
                      {
                        if( Major[i][0].equals(custorg[1][16]) )
                        {
                %>
                          <option selected value= "<%=Major[i][0]%>"> <%=Major[i][1]%> </option>
                <%      }
                        else   {
                %> 
                          <option value= "<%=Major[i][0]%>"> <%=Major[i][1]%> </option>
                <%
                                }       
                      }
                    }   
                %>          
              </select>
            </td>
            <td width="55%">ְ�ƣ�
              <select name="C_TITLE_CDE" size="1">
                <%
                   if(TitleLen > 1)
                   {
                      for(i = 1; i < TitleLen; i++)
                      {
                        if( Title[i][0].equals(custorg[1][19]) )
                        {
                %>
                          <option selected value= <%=Title[i][0]%>> <%=Title[i][1]%> </option>
                <%      }
                        else   {
                %> 
                          <option value= <%=Title[i][0]%>> <%=Title[i][1]%> </option>
                <%
                                }       
                      }
                    }   
                %>          
              </select>
            </td>
          </tr>
          <tr>
            <td width="45%">ְҵ��
              <select name="C_DUTY" size="1">
                <%
                   if(DutyLen > 1)
                   {
                      for(i = 1; i < DutyLen; i++)
                      {
                        if( Duty[i][0].equals(custorg[1][20]) )
                        {
                %>
                          <option selected value= <%=Duty[i][0]%>> <%=Duty[i][1]%> </option>
                <%      }
                        else   {
                %> 
                          <option value= <%=Duty[i][0]%>> <%=Duty[i][1]%> </option>
                <%
                                }       
                      }
                    }   
                %>          
              </select>
              </td>
          </tr>
        </table>
 <p>&nbsp;</p>
        <div align="center"><center><p><input type="submit" value="��  ��" name="Btn_Sub">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
              <input type="reset" value="��  ��" name="Btn_Reset"></p>
  </center></div>
</form>






</body>
</html>

