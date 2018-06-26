<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>

<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>

<jsp:useBean id="obj_cust"  scope="page" class="beans.CustManagerBean"/> 
<jsp:useBean id="sb"  scope="page" class="beans.StaticInfoBean"/>

<%  //The folloing is to getData from database and display on page
    int i = 0;
    int j = 0;
    int tttt=0;
    String TradeType[][] = null; 
    String OrgType[][] = null;
    String Province[][] = null;
    String Ownership[][] = null;
    String Area[][] = null;
    String Scale[][] = null;
    String PremiumScale[][] = null;
    String city[][] = null;

    int cityLen=0;  
    int TradeTypeLen = 0;
    int OrgTypeLen = 0;   
    int ProvinceLen = 0;   
    int OwnershipLen = 0;   
    int AreaLen = 0;   
    int ScaleLen = 0;   
    int PremiumScaleLen = 0;   

    String custorg[][] = null; 
    String userid[] = new String[1];
	userid[0]=(String)request.getAttribute("userid");
	if(userid[0]==null)
    userid[0]=request.getParameter("userid");
//    userid[0] = sessionbuffer.getClientId(Locate);   


    try
    {
        sb.setFieldValue(Const.GET_TRADETYPE,"");
       TradeType = sb.getRetValueArra();

          sb.setFieldValue(Const.GET_ORGTYPE,"");
          OrgType = sb.getRetValueArra();
        
        sb.setFieldValue(Const.GET_PROVINCE,"");
      Province = sb.getRetValueArra();
        
          sb.setFieldValue(Const.GET_OWNERSHIP,"");
          Ownership = sb.getRetValueArra();

        sb.setFieldValue(Const.GET_AREA,"");
        Area = sb.getRetValueArra();

          sb.setFieldValue(Const.GET_SCALE,"");
          Scale = sb.getRetValueArra();

          sb.setFieldValue(Const.GET_PREMIUMSCALE,"");
          PremiumScale = sb.getRetValueArra();

        sb.setFieldValue(Const.GET_CITY,"");
        city = sb.getRetValueArra();
        
    }
    catch(NormalException e)
    {
        throw new ServletException("NormalExceptionThrows:"+e.getMessage());
    }
    catch(Exception e)
    {
        throw new ServletException("Not sureException:"+e.getMessage());
    }
    
    if(!(city== null))
        cityLen = city.length;

    if(!(TradeType == null))
        TradeTypeLen = TradeType.length;
    if(!(Area == null))
        AreaLen = Area.length;
    if(!(Province == null))
        ProvinceLen = Province.length;
    if(!(OrgType == null))
        OrgTypeLen = OrgType.length;
    if(!(Ownership == null))
        OwnershipLen = Ownership.length;
    if(!(Scale == null))
        ScaleLen = Scale.length;
    if(!(PremiumScale == null))
        PremiumScaleLen = PremiumScale.length;
        

   
     obj_cust.setFormPara(Const.QUERY_CUSTORGN,userid);
     custorg=obj_cust.getRetValueArra();
%>


      
<div align="center"><font color="#0066CC" class="unnamed3">�� �� �� �� �� ӡ<br></font></div>
  <p>��ҵ��Ϣ:</p>
        <table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolor="#009966" bgcolor="#F4FFF4" bordercolorlight="#FFFFFF" class="td" height="100">
          <tr> 
            <td width="54%">&nbsp;&nbsp;��ҵ����: 
              
        <%=custorg[1][4]%>
        
			</td>
            <td width="46%">���ļ��: 
              
        <%=custorg[1][5]%>
            </td>
          </tr>
          <tr> 
            <td width="54%">&nbsp;&nbsp;Ӣ������: 
              
        <%=custorg[1][10]%>
            </td>
            <td width="46%">Ӣ�ļ��: 
              
        <%=Objects.getValue(1,"c_eng_abr",custorg)%>
            </td>
          </tr>
          <tr> 
            <td width="54%">���̵ǼǺ�: 
              
        <%=custorg[1][13]%>
            </td>

            <td width="46%">&nbsp;&nbsp;&nbsp;&nbsp;��ҵ: 
                <%
                   if(TradeTypeLen > 1)
                   {
                      for(i = 1; i < TradeTypeLen; i++)
                      {
                        if( TradeType[i][0].equals(custorg[1][18]) )
                        {
                %>
                          <%=TradeType[i][2]%>
                <%      }
                      }
                    }   

                %>          
            </td>
          </tr>
          <tr> 
            <td width="54%">��ҵ��֯��ʽ: 
                <%
                   if(OrgTypeLen > 1)
                   {
                      for(i = 1; i < OrgTypeLen; i++)
                      {
                        if( OrgType[i][0].equals(custorg[1][9]) )
                        {
                %>
                          <%=OrgType[i][1]%> 
                <%      }
                     }
                    }   

                %>          
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
 
            <td width="46%">&nbsp;&nbsp;������: 
               <%
                   if(OwnershipLen > 1)
                   {
                      for(i = 1; i < OwnershipLen; i++)
                      {
                        if( Ownership[i][0].equals(custorg[1][12]) )
                        {
                %>
                           <%=Ownership[i][1]%> 
                <%      }
                      }
                    }   
                %>          
		   </td>
          </tr>
          <tr> 
            
      <td width="54%">&nbsp;&nbsp;&nbsp;&nbsp;���˴���: 
        <%=custorg[1][16]%> </td>
            <td width="46%">&nbsp;&nbsp;���ʲ�: 
              
        <%=custorg[1][15]%>
            </td>
          </tr>
          <tr> 
            <td width="54%">&nbsp;&nbsp;&nbsp;&nbsp;Ա������: 
              
        <%=custorg[1][17]%>
            </td>
            <td width="46%">��ҵ��ģ: 
                <%
                   if(ScaleLen > 1)
                   {
                      for(i = 1; i < ScaleLen; i++)
                      {
                        if( Scale[i][0].equals(custorg[1][7]) )
                        {
                %>
                          <%=Scale[i][1]%> 
                <%      }
                      }
                    }   
                %>          
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            </td>
          </tr>
          <tr> 
            <td width="54%">&nbsp;&nbsp;&nbsp;&nbsp;���ѹ�ģ: 
                <%
                   if(PremiumScaleLen > 1)
                   {
                      for(i = 1; i < PremiumScaleLen; i++)
                      {
                        if( PremiumScale[i][0].equals(custorg[1][8]) )
                        {
                %>
                          <%=PremiumScale[i][3]%> 
                <%      }
                      }
                    }   
                %>          
            </td>
            <td width="46%">&nbsp;</td>
          </tr>
          <tr bordercolor="#009999"> 
            <td width="54%">��ҵ���ڹ���: 
                <%
                   if(AreaLen > 1)
                   {
                      for(i = 1; i < AreaLen; i++)
                      {
                        if( Area[i][0].equals(custorg[1][26]) )
                        {
                %>
                         <%=Area[i][2]%>
                <%      }
                       }
                    }   
                %>          
				</td>
            <td width="46%">��ҵ����ʡ/ֱϽ��: 
                <%
                   if(ProvinceLen > 1)
                   {
                      for(i = 1; i < ProvinceLen; i++)
                      {
                        if( Province[i][0].equals(custorg[1][27]) )
                        {
                %>
                          <%=Province[i][1]%> 
                <%      }
                      }
                    }   
                %>          
              </select>
              *</td>
          </tr>
          <tr bordercolor="#009999"> 
            <td width="54%" height="49"> ������/��/��: 
                <%
                   if(cityLen > 1)
                   {
                      for(i = 1; i < cityLen; i++)
                      {
                        if( city[i][0].equals(Objects.getValue(1,"C_CITY",custorg)) )
                        {
                %>
                          <%=city[i][1]%>
                <%      }
                     }
                    }   
                %>          
              </td>
            <td rowspan="2" width="46%">��ҵ��ϸ��ַ: 
              <%=custorg[1][29]%> </td>
          </tr>
          <tr bordercolor="#009999"> 
            <td width="54%" height="45">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�ʱ�: 
              <%=custorg[1][30]%>
            </td>
          </tr>
          <tr bordercolor="#FF66FF"> 
            <td width="54%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;��ϵ��: 
              
        <%=custorg[1][21]%>
               </td>
            <td width="46%">�绰����: 
              
        <%=custorg[1][22]%>
               </td>
          </tr>
          <tr bordercolor="#FF66FF"> 
            <td width="54%">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;����: 
              
        <%=custorg[1][23]%>
            </td>
            <td width="46%">&nbsp;&nbsp;E-Mail: 
         <%=custorg[1][24]%>
              </td>
          </tr>
        </table>
        <div align="center"><center>
     <input align="left" type="button" value="�� ��" name="B44" onclick='javascript:history.back();'>  
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="submit" name="Submit" value="��ӡ" onClick="javascript:window.print()">
 &nbsp;&nbsp;&nbsp;&nbsp;  </center></div>


<%@ include file="public/bottom.jsp" %>
