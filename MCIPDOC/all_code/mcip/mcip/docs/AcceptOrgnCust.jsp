<html>
<head>
<title>�����û�ע��</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=table.css>
<style type="text/css">
<!--
.no {  border-top-width: auto; border-right-width: auto; border-bottom-width: auto; border-left-width: auto}
-->
</style>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" >

<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>

<%@ include file="public/PublicCust.jsp" %>      

<jsp:useBean id="sb"  scope="request" class="beans.StaticInfoBean"/> 
<jsp:setProperty name="sb" property="*"/>


<%  //The folloing is to getData from database and display on page
    int i = 0;
    int j = 0;
//           out.println("pppppppppyyyyyypppppppp");   
    String TradeType[][] = null; 
    String OrgType[][] = null;
    String Province[][] = null;
    String Ownership[][] = null;
    String Area[][] = null;
    String Scale[][] = null;
    String PremiumScale[][] = null;
    String City[][] = null;        

    try
    {
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
    catch(NormalException e)
    {
 	if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
 	else if(NormalExceptionHandler.IsWarning(e))    
 	    WarnMsg = e.getErrDesc(); 
 	    
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
 orgnCust.C_PROVINCE.focus();
// orgnCust.C_USER_ID.focus();
window.scrollTo(0,0);
</SCRIPT>


<SCRIPT LANGUAGE="JavaScript" SRC="tool.js"></SCRIPT>
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
<SCRIPT FOR=window EVENT=onload LANGUAGE="JavaScript">
   	orgnCust.C_USER_ID.focus();
</SCRIPT>

 <table width="778" border="0" cellspacing="0" cellpadding="0" height="509">
	<%@ include file="public/PublicRegTop.html" %>	
  <tr>
    <td height="405"> 
      <table width="778" border="0" cellspacing="0" cellpadding="0" height="509">
        <tr>
          <td width="102">&nbsp;</td>
          <td width="563" valign="top"> 
            <p><img src="images/zcxyh.gif" width="153" height="52"></p>
            <table width="96%" border="0" cellspacing="0" cellpadding="0" height="34">
              <tr>
                <td width="78%" class="title"><font color="#ff0000">�����ͻ�����¼�룺</font></td>
                <td width="22%">��<font color="#FF0000">��*����Ŀ������д</font></td>
              </tr>
            </table>
            <table width="100%" border="0" cellspacing="1" cellpadding="0" height="68">
            
<form name="orgnCust" method="POST" action="AcceptOrgnCustOut.jsp" onsubmit="return(
ValidNull(C_USER_ID,false) &&
ValidNull(C_User_pw,false) &&
ValidNull(ConfirmPassword,false) &&
ValidNull(C_CLNT_CDE,false) &&
ValidNull(C_OWNERSHIP_CDE,false) &&
ValidNull(C_CHIEF,false) &&
ValidNull(C_PROVINCE,false) &&
ValidNull(C_CITY,false) &&
ValidNull(C_PLACE,false) &&
ValidNull(C_CNTCT_PRSN_NME,false) &&
ValidNull(C_TEL,false) &&
ValidNull(C_EMAIL,false) &&
ValidNull(C_FAX,false) &&
ValidNull(C_ZIP_CDE)&&
ValidUserPwd(C_USER_ID,'0') &&
ValidUserPwd(C_User_pw,'1') &&
ValidSame(C_User_pw,ConfirmPassword)&&
ValidEmail(C_EMAIL)&&
ValidTel(C_TEL)&&
ValidInt(C_ZIP_CDE)&&
ValidZip(C_ZIP_CDE)&&
ValidTel(C_FAX)) ;">

          <tr>
          <td colspan="5">
	          <font color="#3300FF">������Ѿ���www.pa18.com �û����������ʹ��www.pa18.com���û�����?
					 <br><input type="radio" name="RegisterType" value="1"> ��
                    <input type="radio" name="RegisterType" value="0" checked>��
												��������������ԭ�û��������룬�Ա��顣
				</font>
				<br>
          </td>
          </tr>
          <tr>
            <td width="18%" bgcolor="#F6F6F6"><p align="right">�û����� </td>
              <td colspan="4"><input type="text" name="C_USER_ID" size="18" maxlength="16" onfocus="changeCity(C_PROVINCE,C_CITY);setSelectedIndex(C_CITY,selectedCity)">*
              (����Ϊ3��16λ,��Сд��ĸ,�������<font color="#FF0000">����λΪСд��ĸ</font>)</td>
          </tr>
          <tr>
            <td width="18%" bgcolor="#F6F6F6"><p align="right">���������룺 </td>
              <td colspan="4"><input type="password" maxlength="15" name="C_User_pw" size="18">*
		(����ֻ��Ϊ6��15λ,��Сд��ĸ,�������)</td>
          </tr>
          <tr>
            <td width="18%" bgcolor="#F6F6F6"><p align="right">ȷ�����룺 </td>
              <td width="31%"><input type="password" maxlength="15" name="ConfirmPassword" size="18">*</td>
              <td colspan="4"></td>

          </tr>

<!--          <tr>
            <td width="18%"><p align="right">������ʾ���⣺ </td>
              <td width="31%"><input maxlength="100" name="C_Pw_Question" size="22"></td>
            <td width="18%"><p align="right">������ʾ�𰸣� </td>
              <td width="31%"><input maxlength="50" name="C_Pw_Result" size="16"></td>
          </tr>
-->          
        </table>
        <p>&nbsp;</p>
		  <span class="title">��ҵ��Ϣ��</span><br>
        <table width="100%" border="1" cellspacing="1" cellpadding="0" height="332">
          <tr bordercolor="#FFFFFF">
            <td bgcolor="#F6F6F6" align="right">��ҵ���ƣ�</td>
            <td nowrap><input type="text" name="C_CLNT_CDE" size="26" maxlength="150">*</td>
			<!--
            <td align="right" bgcolor="#F6F6F6" >���ļ�ƣ�</td>
            <td><input type="text" name="C_CHN_ABR" size="18" maxlength="12"></td>
          </tr>
          <tr bordercolor="#FFFFFF">
		  -->
            <td bgcolor="#F6F6F6" align="right">Ӣ�����ƣ�</td>
            <td><input type="text" name="C_BRD_ENM" size="26" maxlength="100">
            </td>
			<!--
            <td align="right" bgcolor="#F6F6F6">Ӣ�ļ�ƣ�</td>
            <td><input type="text" name="C_ENG_ABR" size="18" maxlength="12">
            </td>
			-->
          </tr>
          <tr bordercolor="#FFFFFF">
            <td bgcolor="#F6F6F6" nowrap align="right">���̵ǼǺţ�</td>
            <td> <input type="text" name="C_RGST_NO" size="26" maxlength="20">
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
                          <option value="<%=TradeType[i][c_trd_cde]%>"><%=TradeType[i][c_trd_cnm]%></option>
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
                <%
                   if(OrgTypeLen > 1)
                   {
        	      int c_orgz_typ_cde = Objects.getColNum("c_orgz_typ_cde",OrgType);        	                                            
        	      int c_organization_cnm = Objects.getColNum("c_organization_cnm",OrgType);        	                                            
                      for(i = 1; i < OrgTypeLen; i++)
                      {
                %>
                          <option value= <%=OrgType[i][c_orgz_typ_cde]%>> <%=OrgType[i][c_organization_cnm]%> </option>
                <%
                       }
                    }   
                %>          
              </select>
             </td>
			 -->
            <td align="right" bgcolor="#F6F6F6">�����ƣ�</td>   
               <td>        <select name="C_OWNERSHIP_CDE" size="1">
                <option selected value="">��ѡ��</option>
                <%
                   if(OwnershipLen > 1)
                   {
        	      int c_ownership_cde = Objects.getColNum("c_ownership_cde",Ownership);        	                                            
        	      int c_ownership_cnm = Objects.getColNum("c_ownership_cnm",Ownership);        	                                            
                      for(i = 1; i < OwnershipLen; i++)
                      {
                %>
                          <option value= <%=Ownership[i][c_ownership_cde]%>> <%=Ownership[i][c_ownership_cnm]%> </option>
                <%
                       }
                    }   
                %>          
              </select>*</td>
          </tr>
          <tr bordercolor="#FFFFFF">
            <td bgcolor="#F6F6F6" align="right">���˴���</td>
            <td><input type="text" name="C_CHIEF" size="26" maxlength="12">*</td>
            <td bgcolor="#F6F6F6" align="right">��ϵ�ˣ�</td>
            <td> <input type="text" name="C_CNTCT_PRSN_NME" size="26" maxlength="20">*</td>

<!--            <td align="right" bgcolor="#F6F6F6">���ʲ���</td>
            <td> <input type="text" name="N_RGST_MNY" size="18" maxlength="14">
            </td>
-->            
          </tr>
        
          <tr bordercolor="#FFFFFF">
		  
  <input type="hidden" name="C_ARA_CDE" value="<%=Const.CHINA_CDE%>">          
<td bgcolor="#F6F6F6" align="right">ʡ�У�</td>
            <td><select name="C_PROVINCE" size="1" onChange="changeCity(C_PROVINCE,C_CITY);return true;"
            onfocus="changeCity(C_PROVINCE,C_CITY);return true;">
                <option selected value="">��ѡ��</option>
                <%
                   if(ProvinceLen > 1)
                   {
        	      int c_city = Objects.getColNum("c_city",Province);
  	              int c_city_cnm = Objects.getColNum("c_city_cnm",Province);
//                      int c_dpt_cde =  Objects.getColNum("c_dpt_cde",Province);
                      String value = "";
                      for(i = 1; i < ProvinceLen; i++)
                      {
//				value = Province[i][c_city]+"&"+Province[i][c_dpt_cde];                      
                %>
                          <option value= <%=Province[i][c_city]%>> <%=Province[i][c_city_cnm]%> </option>
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
            <td><select name="C_CITY" size="1" onChange= "SetSelectedCity(C_CITY,selectedCity)">
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
                <%
                   if(ScaleLen > 1)
                   {
        	      int c_scale_cde = Objects.getColNum("c_scale_cde",Scale);        	                                            
        	      int c_scale_cnm = Objects.getColNum("c_scale_cnm",Scale);        	                                            
                      for(i = 1; i < ScaleLen; i++)
                      {
                %>
                          <option value= <%=Scale[i][c_scale_cde]%>> <%=Scale[i][c_scale_cnm]%> </option>
                <%
                       }
                    }   
                %>          

              </select>
            </td>
		-->
          </tr>

          <tr bordercolor="#FFFFFF">
            <td align="right" bgcolor="#F6F6F6">��ϸ��ַ��</td>
            <td nowrap colspan="3">
            <input type="text" name="C_PLACE" size="60" maxlength="100">*</td>
          </tr>

          <tr bordercolor="#FFFFFF">
            <td bgcolor="#F6F6F6" align="right">EMail��</td>
            <td>   <input type="text" name="C_EMAIL" size="20" maxlength="60">*</td>
            <td align="right" bgcolor="#F6F6F6">�ʱࣺ</td>
            <td><input type="text" name="C_ZIP_CDE" size="20" maxlength="6">*
            </td>
              
          </tr>
          <tr bordercolor="#FFFFFF">
            <td bgcolor="#F6F6F6" align="right">�绰��</td>
            <td>   <input type="text" name="C_TEL" size="20" maxlength="20">*</td>
            <td align="right" bgcolor="#F6F6F6">���棺</td>
            <td> <input type="text" name="C_FAX" size="20" maxlength="20">*</td>
          </tr>
        </table>
		  
      <p align=left>�����Ƽ���վ��ҵ��Ա:<input type="text" name="C_REMARK">
      <p>&nbsp;</p>
        <div align="center">
		    <input type="hidden"  name="selectedCity" value="��ѡ��">
        	<input type="submit" value="��  ��" name="Btn_Sub">
              	<input type="reset" value="��  ��" name="Btn_Reset">
      	        <input type="button" value="�� ��" onclick='javascript:window.close();' >
        	</div>

        </td>
        <td width="113" height="416"></td>
      </tr>
    </table>
 </form>

    </td>
  </tr>
</table>

<%@ include file="public/PublicBottom.html" %>      

</body>
</html>