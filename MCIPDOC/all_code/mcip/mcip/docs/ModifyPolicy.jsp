<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>�����޸�</title>
<link rel="stylesheet" href="TableStyle.css">
<link rel="stylesheet" href="style.css">
</head>
<body>
<div align="right">
<address style="border-bottom: 1px dotted">
  ƽ������...
</address>
</div>
<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="tool.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="set.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="art_open.js"></SCRIPT>
<%@ include file="public/Public.jsp" %>


<jsp:useBean id="sb"  scope="request" class="beans.StaticInfoBean"/> 
<jsp:setProperty name="sb" property="*"/>
<jsp:useBean id="pmb"  scope="session" class="beans.PolicyManagerBean"/> 
<jsp:setProperty name="pmb" property="*"/>

<%  //for get  para and to bean

    String PlyNo =  request.getParameter("C_PLY_NO");
	if(PlyNo.indexOf("&")>0){
	      
           PlyNo = PlyNo.substring(0,PlyNo.indexOf("&"));
    }
    String para[]={PlyNo};
    out.println("PlyNo:"+PlyNo);
    try
    {
        pmb.setFormPara(0,para);
    }
    catch(NormalException e)
    {
 	    if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
    }
      out.println("Trabs type from pmb:"+ pmb.plyEdrAppPayInfo.c_insrnc_cde+"</p>");
      // modify on 11.16.2000 rao
      String TranType = "B02";
      String C_INSRNC_CDE = pmb.plyEdrAppPayInfo.c_insrnc_cde;
      if( C_INSRNC_CDE.equals("B01") || C_INSRNC_CDE.equals("B02")){
         TranType =  C_INSRNC_CDE;
      }else{
         TranType = "B03";
      }
      //
      // following is new
      String ClientName = sessionbuffer.getClientName(Locate); //Ͷ����
      String ClientType = sessionbuffer.getClientType(Locate); //��¼�ͻ�����
      String ClientId =   sessionbuffer.getClientId(Locate);

      String C_INSRNT_CDE = pmb.plyEdrAppInfo.c_insrnt_cde; //�����˱���
      String C_INSRNT_NME = pmb.plyEdrAppInfo.c_insrnt_nme ;//����������

      String C_PROVINCE_CDE=pmb.plyPlyAppNetInfo.c_province ;//�ʹ�ʡ��
      String C_CITY_CDE = pmb.plyPlyAppNetInfo.c_city ;//�ʹ���
      String C_PLACE = pmb.plyPlyAppNetInfo.c_place ;//�ʹ���ϸ��ַ
      String C_CONTACT_NAME= pmb.plyPlyAppNetInfo.c_contact_name ;//��ϵ��
      String C_CONTACT_PHONE = pmb.plyPlyAppNetInfo.c_contact_phone ;//��ϵ�绰
      String C_CONTACT_FAX = pmb.plyPlyAppNetInfo.c_contact_fax;//��ϵ����
      String C_CONTACT_EMAIL= pmb.plyPlyAppNetInfo.c_contact_email ;//

      String C_CRGO_DESC=pmb.plyEdrAppCrgoInfo.c_crgo_desc ;//Ʒ������
      String C_PACK_CNM=pmb.plyEdrAppCrgoInfo.c_pack_cnm ;//��װ����
      String C_AMOUNT=pmb.plyEdrAppCrgoInfo.c_amount ;//����
      String C_MARK=pmb.plyEdrAppCrgoInfo.c_mark ;//��ͷ
      String N_INVC_AMT = pmb.plyEdrAppCrgoInfo.n_invc_amt;//��Ʊ���
      String C_INVC_AMT_CUR  = pmb.plyEdrAppCrgoInfo.c_invc_amt_cur ;//����
      String C_INVC_NO =pmb.plyEdrAppCrgoInfo.c_invc_no ;//��Ʊ����
      String C_RECEIPT_NO =pmb.plyEdrAppCrgoInfo.c_receipt_no;//�ᵥ��
      String C_FRM_PRT_ARA =pmb.plyEdrAppCrgoInfo.c_frm_prt_ara;//���˹�
      if(pmb.plyEdrAppCrgoInfo ==null)out.println("NULL NULL NULL");
      String C_FRM_PRT=  pmb.plyEdrAppCrgoInfo.c_from_prt ; //���˸�
      String C_PASS_PRT =pmb.plyEdrAppCrgoInfo.c_pass_prt;//;����
      String C_TO_PRT_ARA = pmb.plyEdrAppCrgoInfo.c_to_prt_ara;//�����
      String C_TO_PRT = pmb.plyEdrAppCrgoInfo.c_to_prt ;//�����
      String C_SAIL_NO = pmb.plyEdrAppCrgoInfo.c_sail_no ;//����
      String C_CONTAINER = pmb.plyEdrAppCrgoInfo.c_container ;//��װ�䷽��
      String t_insrnc_bgn_tm = pmb.plyEdrAppInfo.t_insrnc_bgn_tm ;
      out.println("Start date:"+ pmb.plyEdrAppInfo.t_insrnc_bgn_tm);
      String birth_year="";  //plyEdrAppCrgoInfo.c_prn_frm������
      String birth_month=""; //������
      String birth_day=""; //��������
      // Get Year , Month, Day
      if( t_insrnc_bgn_tm != null){
            birth_year = t_insrnc_bgn_tm.substring(0,4);
            birth_month =  t_insrnc_bgn_tm.substring(5,7);
            birth_day  = t_insrnc_bgn_tm.substring(8,10);
      }  

      String   C_PROVINCE_CNM = "";
      String   C_CITY_CNM= "";
      String   C_CURRENCY_CNM = "";
      String   C_FRM_PRT_ARA_CNM = "";
      String   C_TO_PRT_ARA_CNM = "";

     //for get
      PlyNo = request.getParameter("C_PLY_NO");
      String HOME = Const.C_HOME_CDE;//B03
      String EXPORT = Const.C_EXPORT_CDE;//B02
      String IMPORT = Const.C_IMPORT_CDE; //B01

      Hashtable hashData = new Hashtable();
      int step = 9 ;//ob.getStep();
      String DefaultProvince = "";
      String DefaultCls = "";
      String[] HomeTransit = new String[Const.HOME_TRANSIT_LEN];
      String[] PortTransit = new String[Const.PORT_TRANSIT_LEN];
      String[] PortTransitName = new String[Const.PORT_TRANSIT_LEN];  
      int i=0 ;

      boolean IsNewPlyApp = false;
      String[] DefaultCur = null;
  %>
  <%@ include file="PublicPly.jsp" %> 
 <% //--------------------get the province name------------------ 
    if(ProvinceLen > 1)
       {  for(i = 1; i < ProvinceLen; i++)
              {    
                  if(C_PROVINCE_CDE.equals(Province[i][c_city])){
                    C_PROVINCE_CNM =Province[i][c_city_cnm];
                   }
                }
        }
       //---------------get city name ------------------------------------------------
       c_city = Objects.getColNum("c_city",City);
  	   c_city_cnm = Objects.getColNum("c_city_cnm",City);

      // out.println("CITY_CDE:"+C_CITY_CDE);
         try{
                sb.setFieldValue(Const.GET_CITY,C_PROVINCE_CDE);
                String cityss[][] = sb.getRetValueArra();
                for(i = 1; i < CityLen; i++)
                {
                // out.println("i:"+cityss[i][c_city] + ","+ cityss[i][c_city_cnm]);
                   if(C_CITY_CDE.equals(cityss[i][c_city])){
                        C_CITY_CNM = cityss[i][c_city_cnm];
                    }
                 }
         }catch(NormalException e)
        { }
      //------------------get currency name -------------

      out.println("CurrencyLen:"+CurrencyLen);
       out.println("+++:"+C_INVC_AMT_CUR);
     if(CurrencyLen > 1)
	   {
	     for(i = 1 ;i< CurrencyLen;i++ )
	     {    out.println("+++:"+C_INVC_AMT_CUR);

            if(C_INVC_AMT_CUR.equals(Currency[i][c_cur_no])){
            C_CURRENCY_CNM   =Currency[i][c_cur_cnm];
	          }
	     }
     }else{
       C_CURRENCY_CNM = "�����";
     }

    //get Start Country name
     if(TranType.equals(EXPORT) || TranType.equals(HOME))
           {
              C_FRM_PRT_ARA_CNM = Const.CHINA_CNM;

           }
           else
           {
		         if(AreaLen > 1)
		         {
		              for(i = 1 ;i< AreaLen;i++ )
		              {
		                 String AraCdeTemp = Area[i][c_ara_cde];
		                 int PointTemp = AraCdeTemp.length() - 2;
		                 String CdeLastTwo = AraCdeTemp.substring(PointTemp);
		                 if(!(CdeLastTwo.equals("00")))
		                  {

	                     if(C_FRM_PRT_ARA.equals(Area[i][c_ara_cde]))
                        C_FRM_PRT_ARA_CNM=Area[i][c_ara_cnm] ;
		                  }
		                }
		           }
           }
		   //-------------get desc country------------------
       if(TranType.equals(IMPORT) || TranType.equals(HOME))
       {
           C_TO_PRT_ARA_CNM = Const.CHINA_CNM;
        }else{
            if(AreaLen > 1)
		        {
		            for(i = 1 ;i< AreaLen;i++ )
		            {
		               String AraCdeTemp1 = Area[i][c_ara_cde];
		               int PointTemp = AraCdeTemp1.length() - 2;
		               String CdeLastTwo = AraCdeTemp1.substring(PointTemp);
		               if(!(CdeLastTwo.equals("00")))
		               {
	                   if(C_TO_PRT_ARA.equals(Area[i][c_ara_cde]))
                       C_TO_PRT_ARA_CNM = Area[i][c_ara_cnm] ;
		                }
		              }
		            }
          }
 %>         
<p align="center">��<font face="����" size="4">��������</font></p>
<form name="nf" method="POST" action="ModifyPolicyAction.jsp" onsubmit="return(ValidDateNew(tempdate,birth_year)
&& ValidDateBegin(tempdate,'<%=Sdate%>',birth_year,C_REMARK)
&& ValidNull(C_INSRNT_NME,false)
&& ValidNull(C_PLACE,false)
&& ValidNull(C_CONTACT_NAME,false)
&& ValidNull(C_CONTACT_PHONE,false)
&& ValidNull(C_CONTACT_EMAIL,false)
&& ValidNull(C_CRGO_DESC,false)
&& ValidNull(C_PACK_CNM,false)
&& ValidNull(C_AMOUNT,false)
&& ValidNull(N_INVC_AMT)
&& ValidAmt(N_INVC_AMT)
&& ValidNull(C_SAIL_NO,false)
&& ValidNull(C_FRM_PRT_ARA,false)
&& ValidNull(C_TO_PRT_ARA,false)
&& ValidNull(C_FRM_PRT,false)
&& ValidNull(C_TO_PRT,false))">

<div align="left">
    <p align="right"><font
  color="#ED7CC9"><small>��</small> * <small>����Ŀ������д</small></font> </p>

<%  out.println("pmb.plyEdrAppInfo.c_insrnt_cde:"+ pmb.plyEdrAppInfo.c_insrnt_cde); %>
      Ͷ���ˣ� �й��������г��ڿ�<%=ClientName%> &nbsp;&nbsp;&nbsp;�����ţ�<%=PlyNo%><br>
  </div>

  <div>
  <input type=hidden name="C_REMARK">
  <center>
      <table width="95%" border="2">
        <tr  align="center" width=100%>
          <td  align="center" width=50%>ԭ����</td>
          <td width=50%>���ı���</td>
        </tr>
        <tr>
          <td align="left" width=50%>�������ˣ�<%=C_INSRNT_NME%></td>
          <td width=50%>�������ˣ�
            <input type="text"  name="C_INSRNT_NME" maxlength="100" size="20" value="<%=C_INSRNT_NME%>">
            <input type=hidden name="C_INSRNT_CDE" value="<%=C_INSRNT_CDE%>">
            * </td>
        </tr>
        <tr>
          <td> <font face="����" size="2" color="#F19CD1"><em>�͵�ʱ�䣺�ӷ����б�֪ͨ��ʼһ���������ڡ�</em></font>
            <br>
            �͵��ص�: <br>
            <%=C_PROVINCE_CNM%> ��/��/��:<%=C_CITY_CNM%>  <br>
            ��ϸ��ַ:<%=C_PLACE%> <br>
            ��ϵ��: <%=C_CONTACT_NAME%> <br>
            ��ϵ�绰:<%=C_CONTACT_PHONE%>  <br>
            ����: <%=C_CONTACT_FAX%>  <br>
            E-mail:<%=C_CONTACT_EMAIL%>  </td>
          <td> <font face="����" size="2" color="#F19CD1"><em>�͵�ʱ�䣺�ӷ����б�֪ͨ��ʼһ���������ڡ�</em></font>
            <br>
            �͵��ص�:  <%=C_PROVINCE_CNM%> &nbsp;&nbsp;  <%=C_CITY_CNM%> 

            <br>
            ��ϸ��ַ:
            <input type="text" name="C_PLACE" size="50" maxlength="100" value="<%=C_PLACE%>">
            * <br>
            ��ϵ��:
            <input type="text"  name="C_CONTACT_NAME" size="14"  maxlength="20"  value="<%=C_CONTACT_NAME%>">
            * <br>
            ��ϵ�绰:
            <input type="text"  name="C_CONTACT_PHONE" size="15"  maxlength="20"  value="<%=C_CONTACT_PHONE%>">
            * <br>
            ����:
            <input type="text"   name="C_CONTACT_FAX" size="14" maxlength="20" value="<%=C_CONTACT_FAX%>">
            &nbsp;&nbsp;&nbsp;&nbsp; <br>
            E-mail:
            <input type="text"  name="C_CONTACT_EMAIL" size="15" maxlength="50" value="<%=C_CONTACT_EMAIL%>">
            * </td>
        </tr>
        <tr>
          <td  align="center">
            <div align="left"> Ʒ������:<%=C_CRGO_DESC%></div>
          </td>
          <td > Ʒ������:<br>
            <textarea rows="2"  name="C_CRGO_DESC" cols="45"><%=C_CRGO_DESC%> 312312</textarea>
            * </td>
        </tr>
        <tr>
          <td  align="center">
            <div align="left"> ��װ����: <%=C_PACK_CNM%> </div>
          </td>
          <td > ��װ����:
            <a href="ViewHelp.jsp?path=packing-descrip.txt" onclick="return js_openSmallPage(this.href);">
            <img src="images/inline-help1.gif" border=0></a> 

            <input type="text"  name="C_PACK_CNM" size="50" maxlength="60" value="<%=C_PACK_CNM%>">
            * </td>
        </tr>
        <tr>
          <td  align="center">
            <div align="left">
              <p>������<%=C_AMOUNT%></p>
              <p>��ͷ:<%=C_MARK%></p>
            </div>
          </td>
          <td >
            <p>������
              <input type="text"  name="C_AMOUNT" size="25" maxlength="200" value="<%=C_AMOUNT%>">
              * </p>
            <p>��ͷ :
              <input type="text" name="C_MARK" size="30" maxlength="200" value="<%=C_MARK%>">
              * </p>
          </td>
        </tr>

        <tr>
          <td  align="center">
            <p align="left">��Ʊ���:<%=N_INVC_AMT%> (<%=C_CURRENCY_CNM%>)</p>
            <p align="left">��Ʊ����:<%=C_INVC_NO%> </p>
            <p align="left">�ᵥ/�˵�����:<%=C_RECEIPT_NO%></p>
          </td>
          <td >
            <p align="left">��Ʊ���:
              <input type="text" name="N_INVC_AMT" maxlength="20" size="12"  value="<%=N_INVC_AMT%>">*
              (<%=C_CURRENCY_CNM%>)</p>
            <p align="left">��Ʊ����:
              <input type="text" name="C_INVC_NO" maxlength="60" size="14" value="<%=C_INVC_NO%>">
            </p>
            <p align="left">�ᵥ/�˵�����:
              <input type="text" name="C_RECEIPT_NO" maxlength="50" size="12" value="<%=C_RECEIPT_NO%>">
            </p>
          </td>
        </tr>
        <tr>
          <td  align="center">
            <p align="left">���˸۹��ң�<%=C_FRM_PRT_ARA_CNM%></p>
            <p align="left">���˸����ƣ�<%=C_FRM_PRT%></p>
          </td>
          <td >
            <p>���˸۹��ң�
              <select name="C_FRM_PRT_ARA" size="1" >
                <% if(TranType.equals(EXPORT) || TranType.equals(HOME))
                {
                 %>
                 <option value=<%=Const.CHINA_CDE%>>(China)<%=Const.CHINA_CNM%> </option>
                <%}
               else
              {
		             if(AreaLen > 1)
		            {
		              for(i = 1 ;i< AreaLen;i++ )
		              {
		                 String AraCdeTemp = Area[i][c_ara_cde];
		                 int PointTemp = AraCdeTemp.length() - 2;
		                 String CdeLastTwo = AraCdeTemp.substring(PointTemp);
		                 if(!(CdeLastTwo.equals("00")))
		                {//warning it's well
                    %>
	                   <option  <%if(C_FRM_PRT_ARA.equals(Area[i][c_ara_cde])){%>selected<%}%>  value=<%=Area[i][c_ara_cde]%>>(<%=Area[i][c_ara_enm]%>)<%=Area[i][c_ara_cnm]%></option>
		              <%
		                }
		               }
		              }
                 }
		   %>

              </select>*
            </p>
            <p>���˸����ƣ�
              <input type="text" name="C_FRM_PRT" maxlength="60" size="25" value="<%=C_FRM_PRT%>">*
            </p>
          </td>
        </tr>
        <tr>
          <td  align="center">
            <div align="left">;�������ƣ�<%=C_PASS_PRT%></div>
          </td>
          <td >;�������ƣ� <input type="text" name="C_PASS_PRT"  maxlength="40" size="22" value="<%=C_PASS_PRT%>"></td>
        </tr>
        <tr>
          <td  align="center">
            <div align="left">
              <p>Ŀ�ĸ۹��ң�<%=C_TO_PRT_ARA_CNM%></p>
              <p>Ŀ�ĸ����ƣ�<%=C_TO_PRT%> </p>
            </div>
          </td>
          <td>
            <div align="left">
              <p>Ŀ�ĸ۹��ң�
                <select name="C_TO_PRT_ARA" size="1" >                  
                   <%
	                    if(TranType.equals(IMPORT) || TranType.equals(HOME))
                      {
                      %>
                      <option value= <%=Const.CHINA_CDE%>>(China)<%=Const.CHINA_CNM%> </option>
                      <%
                       }else{
		                     if(AreaLen > 1)
		                     {

		                       for(i = 1 ;i< AreaLen;i++ )
		                      {
		                          String AraCdeTemp1 = Area[i][c_ara_cde];
		                          int PointTemp = AraCdeTemp1.length() - 2;
		                          String CdeLastTwo = AraCdeTemp1.substring(PointTemp);
		                          if(!(CdeLastTwo.equals("00")))
		                         {//waring
                             		   %>
	                            <option  <%if(C_TO_PRT_ARA.equals(Area[i][c_ara_cde])){%>selected<%}%>  value=<%=Area[i][c_ara_cde]%>>(<%=Area[i][c_ara_enm]%>)<%=Area[i][c_ara_cnm]%></option>
		                         <%
		                         }
		                        }
		                       }
                          }
		                   %>
                </select>*
              </p>
              <p>Ŀ�ĸ����ƣ�
                <input type="text"  name="C_TO_PRT" maxlength="60" size="25" value="<%=C_TO_PRT%>">*
              </p>
            </div>
          </td>
        </tr>
        <tr> 
          <td  align="center"> 
            <div align="left">����/����/����ţ�<%=C_SAIL_NO%> </div>
          </td>
          <td >����/����/����ţ� 
            <input type="text" name="C_SAIL_NO" maxlength="60" size="14" value="<%=C_SAIL_NO%>">
            * </td>
        </tr>
         <tr> 
          <td  align="center"> 
            <div align="left">��װ������</div>
          </td>
          <td > 
            <input type="radio" name="C_CONTAINER" <%if(C_CONTAINER.equals("��װ������")) out.print("checked");%> value="��װ������">
            ��װ������
            <input type="radio" name="C_CONTAINER" <%if(C_CONTAINER.equals("��װ��ƴ��")) out.print("checked");%> value="��װ��ƴ��">
            ��װ��ƴ��
            <input type="radio" name="C_CONTAINER" <%if(C_CONTAINER.equals("�Ǽ�װ������")) out.print("checked");%> value="�Ǽ�װ������">
            �Ǽ�װ������</td>
        </tr>
        <tr> 
          <td  align="center"> 
            <p align="left">�������ڣ�<%=birth_year%>-<%=birth_month%>-<%=birth_day%>2000-05-16</p>
            <p>&nbsp;</p>
          </td>
          <td >�������ڣ�
            <input type="text" name="birth_year" size="4"  maxlength="4" value="<%=birth_year%>">
            ��
            <input type="text" name="birth_month" size="2" maxlength="2" value="<%=birth_month%>">
            ��
            <input type="text" name="birth_day" size="2" maxlength="2" value="<%=birth_day%>">
            ��*
            <input type="hidden" name="tempdate" value="2000-08-23">
            </td>
        </tr>
      </table>
</center>
</div>
  <dl>
              <dd align="left"> 
                <div align="center"> 
                  <input type="submit" value="��  ��" name="B1" onclick="sub(temp);change(birth_year,birth_month,birth_day,tempdate);">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <input type="reset" value="��  ��" name="B2">
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  <input type="button" value="��  ��" name="B44" onclick='javascript:history.back();'>
                </div>
              </dd>
           
   
  </dl>
      
    <%String sessionid = Code.Encrypt(sessionId);%>
    <input type="hidden" name="sessionid" value="<%=sessionid%>">
    <input type=hidden name="C_PLY_NO" value="<%=PlyNo%>">
    <input type="hidden" name="temp" value="sub">
    <input type="hidden" name="C_PLY_APP_NO" value="">    
    <input type="hidden" name="AGENCYNO" value="CASE">
    <input type="hidden" name="ADDAGENCYNO" value="">    

</form>
</body>
</html>


        



