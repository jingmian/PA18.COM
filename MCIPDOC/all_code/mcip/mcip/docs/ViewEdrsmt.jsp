<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=index.css>
</head>

<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">

<%@ include file="public/Public.jsp" %>

<jsp:useBean id="ob"  scope="session" class="beans.OperationBean"/> 
<jsp:setProperty name="ob" property="*"/>
<jsp:useBean id="pb"  scope="request" class="beans.PolicyInfoBean"/> 
<jsp:setProperty name="pb" property="*"/>
<jsp:useBean id="sb"  scope="request" class="beans.StaticInfoBean"/> 
<jsp:setProperty name="sb" property="*"/>


<%
      Hashtable hashData = new Hashtable();
      hashData = ob.getHashData();      
	//to be get insrnce info :main and addtion
      String InsrncName = "";
      String PlyAppRdrInfo[][] = null;
      String PlyNoDisp = Objects.getHt(hashData,"C_PLY_APP_NO");
      if(PlyNoDisp.equals(""))
         PlyNoDisp = Objects.getHt(hashData,"C_PLY_NO");
          
%>      
<%@ include file="PublicPly_ViewXmlsend.jsp" %>
<%

    try
    {
        pb.setFieldValue(Const.GET_PLYAPPRDRINFO,PlyNoDisp);
        PlyAppRdrInfo = pb.getRetValueArra();

    }
    catch(NormalException e)
    {
/* 	if(NormalExceptionHandler.IsSevere(e))
 	    throw NormalExceptionHandler.Handle(e);
 	else if(NormalExceptionHandler.IsWarning(e))    
 	    WarnMsg = e.getErrDesc(); 
*/ 	    
    }
	int c_rdr_nme =  Objects.getColNum("c_rdr_nme",PlyAppRdrInfo);
	int RdrLen = Servlets.getLen(PlyAppRdrInfo);
	if(RdrLen > 1)
	{
		for(int i = 1; i < RdrLen; i++)
		{
		    InsrncName = InsrncName + ":" + PlyAppRdrInfo[i][c_rdr_nme];
		}
	}	
%>
<%
      String TranType = Objects.getHt(hashData,"C_INSRNC_CDE");
      String Transit[] = new String[1];
      String TransitName = "";
System.out.println("in viewpolicy TranType:"+TranType);      
      if(TranType.equals(Const.C_EXPORT_CDE))//outport
      {
          TranType = Const.C_EXPORT_CNM;           
      }
      else if(TranType.equals(Const.C_IMPORT_CDE))//import
      {
          TranType = Const.C_IMPORT_CNM;           
      }
      else
      {
          TransitName = Objects.getValue(1,TranType,Const.HOME_TRANSIT);
System.out.println("home TransitName:"+TransitName);          
          FrmPrtName = "";
          ToPrtName = "";
          TranType = Const.C_HOME_CDE;           
      }
      
      if(!TranType.equals(Const.C_HOME_CDE))
      {
System.out.println("is port transit");                
        Transit = new String[Const.PORT_TRANSIT_LEN];
        Transit = Servlets.GetInsrncAddtion(PlyAppRdrInfo,Transit);     
        for(int k=0;k<Const.PORT_TRANSIT_LEN;k++)   
        {
           if(!(Transit[k] == null || Transit[k].equals("")))
           {
               TransitName = TransitName + Objects.getValue(1,String.valueOf(k),Const.PORT_TRANSIT);
           }
        }
        
      }
      
      if(!AmtCurName.equals(""))
         AmtCurName = "("+AmtCurName+")";
%>      

<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr> 
<%
if(MenuRef.equals("FindPly"))
{
%>
<%@ include file="public/PublicInquireLeft.jsp" %> 
<%
}
else
{
%>
<%@ include file="public/PublicPlyLeft.html" %>

<%
}
%>
    <td width="613"  valign="top">
      <div align=right> 
<br>
      </div>
      <p align=center><font face=���� size=5><strong>�й�ƽ�����չɷ����޹�˾ </strong></font><br>
        <font size=2>PING AN INSURANCE COMPANY OF CHINA. LTD.</font></p>
<p align="center"><font size="4"><u><font size="4"><%=TransitName%></font>�������䱣������</u></font></p>
<p align="center">&nbsp;</p>
<form >
  <div align="center"> 
    <center>
      <p align="left">��������(Insured)��  <%=Objects.getHt(hashData,"C_INSRNT_NME")%></p>
      <p align="left"><font size="2">�й�ƽ�����չɷ����޹�˾���ݱ������˵�Ҫ����������Լ���ı��շѣ����ձ����յ����������б������������䱣�գ����������յ���</font><i> 
        <br>
        </i></p>
    </center>
  </div>
</form>
<form>
        <table bordercolor=#999999 cellspacing=0 cellpadding=0 width="96%" border=1 height="198" align="center">

    <tr> 
      <td  colspan="2">������<br>Policy NO��<%=PlyNoDisp%>
                       ������:<%=Objects.getHt(hashData,"C_EDR_NO")%>
                       </td>
    </tr>
    <tr> 
      <td  colspan="2">��Ʊ���ᵥ��<br>Invoice NO.or B/L No.��<%=Objects.getHt(hashData,"C_INVC_NO")%></td>
    </tr>

    <tr>
       <td>
        Ʒ��<br>Goods�� <%=Objects.getHt(hashData,"C_CRGO_NAME")%>
	</td>
	<td>        
	��װ<br>Packing�� <%=Objects.getHt(hashData,"C_PACK_CNM")%><br>
        </td>
    </tr>

    <tr> <td>
        ����<br>Quantity��  <%=Objects.getHt(hashData,"C_AMOUNT")%><br>
  	</td>
	<td>        
        ��ͷ<br>Marks�� <%=Objects.getHt(hashData,"C_MARK")%>
        </td>
    </tr>

    <tr> 
      <td width="47%" height="28">���乤��<br>PerConveyance S.S��<%=Objects.getHt(hashData,"C_SAIL_NO")%></td>
      <td width="47%" height="28">��������<br>Slg.on or abt.��<%=Objects.getHt(hashData,"T_INSRNC_BGN_TM")%></td>

    </tr>
    <tr> 
      <td>   ��<br>From�� <%=Objects.getHt(hashData,"C_FROM_PRT")%></td>
      <td>   ��<br>To�� <%=Objects.getHt(hashData,"C_TO_PRT")%></td>
    </tr>
    <tr> 
      <td  colspan="2">���ս��<br>Amount Insured�� <%=AmtCurName%><%=Objects.getHt(hashData,"N_AMT")%></td>
    </tr>

    <tr>        
       <td colspan="2">�б�����(Conditions)��<br> <%=Objects.getHt(hashData,"C_UNDR_CNDTN")%><br>
       <%=Objects.getHt(hashData,"C_NO_REPAY")%>
       </td>
    </tr>
<%if(!TranType.equals(Const.C_HOME_CDE))
      {%>
    <tr> 
      <td colspan="2">�����ص�(Claim Payable at)��<br> <%=Objects.getHt(hashData,"C_PAY_ADDR")%></td>
    </tr>
<%}%>
    <tr>        
      <td colspan="2" valign="top">�鿱������(Survey By)��<br> <%=Objects.getHt(hashData,"C_SRVY_CNM")%></td>
    </tr>



  </table>
  <br>ǩ��ʱ��(Date)��<%=Objects.getHt(hashData,"T_SIGN_TM")%>

  <p align="center">
   <input type="button" value="��  ��" name="B44" onclick='javascript:history.back();'>                  
</p>
  </form>
    </td>
  </tr>
</table>

<%@ include file="public/PublicBottom.html" %>      

</body>
</html>
