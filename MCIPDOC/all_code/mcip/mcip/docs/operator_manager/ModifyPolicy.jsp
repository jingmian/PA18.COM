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
<%@ include file="Public.jsp" %>

<jsp:useBean id="ob"  scope="session" class="beans.OperationBean"/> 
<jsp:setProperty name="ob" property="*"/>
<jsp:useBean id="sb"  scope="request" class="beans.StaticInfoBean"/> 
<jsp:setProperty name="sb" property="*"/>
<jsp:useBean id="pb"  scope="request" class="beans.PolicyInfoBean"/> 
<jsp:setProperty name="pb" property="*"/>
<%@ include file="PublicPly.jsp" %>   
<%  //for get  para and to bean

    String PlyNo =  request.getParameter("C_PLY_NO");
    String para[]={PlyNo};
    try
    {
        pb.setFormPara(0,para);
    }
    catch(NormalException e)
    {
 	    if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
    }
      // following is new
      String ClientName = sessionbuffer.getClientName(Locate); //Ͷ����
      String ClientType = sessionbuffer.getClientType(Locate); //��¼�ͻ�����
      String ClientId =   sessionbuffer.getClientId(Locate);
      String C_INSRNT_CDE = ""; //�����˱���
      String C_INSRNT_CDE ="" ; //��������
      String C_PROVINCE_CNM=""; //�ʹ�ʡ��
      String C_CITY = ""; //�ʹ���
      String C_PLACE = "" ; //�ʹ���ϸ��ַ
      String C_CONTACT_NAME= "" ; //��ϵ��
      String C_CONTACT_PHONE="" ;//��ϵ�绰
      String C_CONTACT_FAX=""; //��ϵ����
      String C_CONTACT_EMAIL="";//E_MAIL
      String C_CRGO_DESC="" ; //Ʒ������
      String C_PACK_CNM=""; //��װ����
      String C_AMOUNT=""; //����
      String C_MARK="";//��ͷ
      String N_INVC_AMT="";//��Ʊ���
      String C_INVC_NO=""; //��Ʊ����
      String C_RECEIPT_NO="";//�ᵥ��
      String C_FRM_PRT_ARA="";//���˹�
      String C_FROM_PRT="";//���˸�
      String C_PASS_PRT="";//;����
      String C_TO_PRT_ARA="";//�����
      String C_TO_PRT="";//�����
      String C_SAIL_NO="";//����
      String C_CONTAINER="" ;// ��װ�䷽��
      String birth_year="";  //������
      String birth_month=""; //������
      String birth_day=""; //��������

     //for get
      PlyNo = request.getParameter("C_PLY_NO");
      String HOME = Const.C_HOME_CDE;//B03
      String EXPORT = Const.C_EXPORT_CDE;//B02
      String IMPORT = Const.C_IMPORT_CDE; //B01
      String TranType = "B02";

      int i=0 ;
  %>



<p align="center">��<font face="����" size="4">��������</font></p>
<form name="nf" method="POST" action="ModifyBaoDan.jsp" onsubmit="return(
ValidDateNew(tempdate,birth_year) &&
ValidDateBegin(tempdate,"2000-10-21",birth_year,C_REMARK) &&
ValidNull(C_INSRNT_NME,false) &&
ValidNull(C_PLACE,false) &&
ValidNull(C_CONTACT_NAME,false) &&
ValidNull(C_CONTACT_PHONE,false) &&
ValidNull(C_CONTACT_EMAIL,false) &&
ValidNull(C_PROVINCE,false) &&
ValidNull(C_CITY,false) &&
ValidNull(C_CRGO_DESC,false) &&
ValidNull(C_PACK_CNM,false) &&
ValidNull(C_AMOUNT,false) &&
ValidAmt(C_AMOUNT) &&
ValidNull(C_INVC_AMT) &&
ValidAmt(C_INVC_AMT)&&
ValidNull(C_SAIL_NO,false) &&
ValidNull(C_FRM_PRT_ARA,false) &&
ValidNull(C_TO_PRT_ARA,false) &&
ValidNull(C_FROM_PRT,false) &&
ValidNull(C_TO_PRT,false) &&
ValidNull(birth_year,false) &&
ValidNull(birth_month,false) &&
ValidNull(birth_day,false) &&
ValidTel(C_CONTACT_PHONE) &&
ValidTel(C_CONTACT_FAX) &&
ValidEmail(C_CONTACT_EMAIL) &&
ValidNoOrReal(C_INVC_NO,C_RECEIPT_NO)
);">
  <div align="left">
    <p align="right"><font
  color="#ED7CC9"><small>��</small> * <small>����Ŀ������д</small></font> </p>

      Ͷ���ˣ� �й��������г��ڿ�<%=ClientName%> &nbsp;&nbsp;&nbsp;�����ţ�<%=C_PLY_NO%> ,00001799901<br>
  </div>
  <div>
  <center>
      <table width="95%" border="2">
        <tr  align="center" width=100%>
          <td  align="center" width=50%>ԭ����</td>
          <td width=50%>���ı���</td>
        </tr>
        <tr>
          <td align="left" width=50%>�������ˣ��й�����</td>
          <td width=50%>�������ˣ�
            <input type="text"  name="C_INSRNT_NME" maxlength="100" size="20" value="��ҵ����">
            <input type=hidden name="C_INSRNT_CDE" value="<%=C_INSRNT_CDE%>">
            * </td>
        </tr>
        <tr>
          <td> <font face="����" size="2" color="#F19CD1"><em>�͵�ʱ�䣺�ӷ����б�֪ͨ��ʼһ���������ڡ�</em></font>
            <br>
            �͵��ص�: <br>
            <%=C_PROVINCE_CNM%>���� ��/��/��:<%=C_CITY%> ���� <br>
            ��ϸ��ַ:<%=C_PLACE%>����ʡ��������ɽһ·28�� <br>
            ��ϵ��: <%=C_CONTACT_NAME%>���� <br>
            ��ϵ�绰:<%=C_CONTACT_PHONE%> 086-0768-5501918 <br>
            ����: <%=C_CONTACT_FAX%>  86-0768-5501919 <br>
            E-mail:<%=C_CONTACT_EMAIL%> pa18@pa18.com </td>
          <td> <font face="����" size="2" color="#F19CD1"><em>�͵�ʱ�䣺�ӷ����б�֪ͨ��ʼһ���������ڡ�</em></font>
            <br>
            �͵��ص�:  <%=C_PROVINCE_CNM%>����  <%=C_CITY%> ����

            <br>
            ��ϸ��ַ:
            <input type="text" name="C_PLACE" size="50" maxlength="100" value="<%=C_PLACE%>">
            * <br>
            ��ϵ��:
            <input type="text"  name="C_CONTACT_NAME" size="14"  maxlength="20" value="rewy213" value="<%=C_CONTACT_NAME%>">
            * <br>
            ��ϵ�绰:
            <input type="text"  name="C_CONTACT_PHONE" size="15"  maxlength="20"  value="<%=C_CONTACT_PHONE%>">
            * <br>
            ����:
            <input type="text"   name="C_CONTACT_FAX" size="14" maxlength="20" value="<%=C_CONTACT_FAX%>">
            &nbsp;&nbsp;&nbsp;&nbsp; <br>
            E-mail:
            <input type="text"  name="C_CONTACT_EMAIL" size="15" maxlength="50" value="<%=C_CONTACT_FAX%>">
            * </td>
        </tr>
        <tr>
          <td  align="center">
            <div align="left"> Ʒ������:<%=C_CRGO_DESC%>��С��Ϊ�������ר��</div>
          </td>
          <td > Ʒ������:<br>
            <textarea rows="2"  name="C_CRGO_DESC" cols="45"><%=C_CRGO_DESC%> 312312</textarea>
            * </td>
        </tr>
        <tr>
          <td  align="center">
            <div align="left"> ��װ����: <%=C_PACK_CNM%>�����ܷ⣬���� </div>
          </td>
          <td > ��װ����:
            <input type="text"  name="C_PACK_CNM" size="50" maxlength="60" value="<%=C_PACK_CNM%>">
            * </td>
        </tr>
        <tr>
          <td  align="center">
            <div align="left">
              <p>������<%=C_AMOUNT%>200</p>
              <p>��ͷ:<%=C_MARK%>HKG_01_MSG</p>
            </div>
          </td>
          <td >
            <p>������
              <input type="text"  name="C_AMOUNT" size="25" maxlength="200" value="<=C_AMOUNT%>">
              * </p>
            <p>��ͷ :
              <input type="text" name="C_MARK" size="30" maxlength="200" vale="<=C_MARK%>">
              * </p>
          </td>
        </tr>

        <tr>
          <td  align="center">
            <p align="left">��Ʊ���:<%=N_INVC_AMT%>6000 (����ң�</p>
            <p align="left">��Ʊ����:<%=C_INVC_NO%> 185001</p>
            <p align="left">�ᵥ/�˵�����:<%=C_RECEIPT_NO%>09999</p>
          </td>
          <td >
            <p align="left">��Ʊ���:
              <input type="text" name="N_INVC_AMT" maxlength="20" size="12" onBlur="setPrm(N_INVC_AMT,N_AMT,TRAN_TYPE_TEMP);setAmt(N_AMT,N_RATE,C_INVC_AMT_CUR_TEMP,N_PRM);return true;" value="<%=C_INVC_AMT%>">
              (����ң�</p>
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
            <p align="left">���˸۹��ң�<%=C_FRM_PRT_ARA%>�й�</p>
            <p align="left">���˸����ƣ�<%=C_FRM_PRT%>����</p>
          </td>
          <td >
            <p>���˸۹��ң�
              <select name="C_FRM_PRT_ARA" size="1" >
                <option value=1001>China(�й�) </option>
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

              </select>
            </p>
            <p>���˸����ƣ�
              <input type="text" name="C_FROM_PRT" maxlength="60" size="25" value="harbin" value="<%=C_FRM_PRT%>">
            </p>
          </td>
        </tr>
        <tr>
          <td  align="center">
            <div align="left">;�������ƣ�<%=C_PASS_PRT%>�Ϻ�</div>
          </td>
          <td >;�������ƣ� <input type="text" name="C_PASS_PRT"  maxlength="40" size="22" value="<%=C_PASS_PRT%>"></td>
        </tr>
        <tr>
          <td  align="center">
            <div align="left">
              <p>Ŀ�ĸ۹��ң�<%=C_TO_PRT_ARA%>�й�</p>
              <p>Ŀ�ĸ����ƣ�<%=C_TO_PRT%>���� </p>
            </div>
          </td>
          <td>
            <div align="left">
              <p>Ŀ�ĸ۹��ң�
                <select name="C_TO_PRT_ARA" size="1" >
                  <option value= 1001>(China)�й� </option>
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
                </select>
              </p>
              <p>Ŀ�ĸ����ƣ� 
                <input type="text"  name="C_TO_PRT" maxlength="60" size="25" value="<%=C_TO_PRT%>">
              </p>
            </div>
          </td>
        </tr>
        <tr> 
          <td  align="center"> 
            <div align="left">����/����/����ţ�<%=C_SAIL_NO%>88-09-01 </div>
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
            <input type="radio" name="C_CONTAINER" <%if(C_CONTAINER.equals("��װ������")) out.print("checked")%> value="��װ������">
            ��װ������
            <input type="radio" name="C_CONTAINER" <%if(C_CONTAINER.equals("��װ��ƴ��")) out.print("checked")%> value="��װ��ƴ��">
            ��װ��ƴ��
            <input type="radio" name="C_CONTAINER" <%if(C_CONTAINER.equals("�Ǽ�װ������")) out.print("checked")%> value="�Ǽ�װ������">
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
      
    <input type="hidden" name="sessionid" value="z8-Pz8-Pz8-PzgAA">
    <input type="hidden" name="temp" value="sub">
    <input type="hidden" name="C_PLY_APP_NO" value="">    
    <input type="hidden" name="AGENCYNO" value="CASE">
    <input type="hidden" name="ADDAGENCYNO" value="">
        <input type="hidden" name="TEMPAMT" value="">
        <input type="hidden" name="TEMPAMT1" value="">        

</form>
</body>
</html>
