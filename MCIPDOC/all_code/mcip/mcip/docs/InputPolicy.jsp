<%/**
Modified:2001-09-27
By : L.K
Description:��ֹ�û��޸��͵���ַ(ʡ����)
ID:R20010924-11
*****
Modified:2001-11-5
By:L.K
Description:���ں����յ����ո�Ϊ��(03)���������ա�(04)��������һ����
ID:LK0001
*****
Modified:2001-11-6
By:L.K
Description:�������Ʊ��������䷽ʽ��bug,(���Ʊ�����ʹ���ں��ձ�ɹ�����·��
ID:LK0002
*****
Modified:1999-11-8 17:22:47
By:L.K
Description:Enter key replace the tab key
ID:LK0003
*****
Modified:2001-11-16 15:12:11
By:L.K
Description:���Ƴб������Э���д��룬��������ˢ����Ļ
ID:LK0004
*/%>
<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=table.css>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">
<SCRIPT LANGUAGE="JavaScript">
/*
//LK0003+B
document.onkeydown = keyDown;
var fieldIndex = 0;

function keyDown(DnEvents){
	var minIndex = 0;
	var k =window.event.keyCode;
	var maxIndex = document.nf.elements.length;
	if (k==13){
		var notFocus = true;
		for (;notFocus;){
			var nextField =fieldIndex+1;
			if (nextField>=maxIndex)
				nextField = 0;
			try{
				eval('document.nf.'+document.nf.elements[nextField].name+'.focus()');
				notFocus = false;
			}catch(e){
				alert(e);
			}
		}
	}
}*/
//LK0003+E
</SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="tool.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="set.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="art_open.js"></SCRIPT>

<SCRIPT FOR=window EVENT=onload LANGUAGE="JavaScript">
   	nf.C_CRGO_CLS.focus();
</SCRIPT>


<%@ include file="public/Public.jsp" %>
<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr>
<%@ include file="public/PublicPlyLeft.html" %>

    <td width="613" height="288" valign="top">

<jsp:useBean id="ob"  scope="session" class="beans.OperationBean"/>
<jsp:setProperty name="ob" property="*"/>
<jsp:useBean id="sb"  scope="request" class="beans.StaticInfoBean"/>
<jsp:setProperty name="sb" property="*"/>
<jsp:useBean id="pb"  scope="request" class="beans.PolicyInfoBean"/>
<jsp:setProperty name="pb" property="*"/>
<jsp:useBean id="cb"  scope="request" class="beans.CustManagerBean"/>
<jsp:setProperty name="cb" property="*"/>
<jsp:useBean id="obn"  scope="session" class="beans.OperationBean"/>
<jsp:setProperty name="obn" property="*"/>
<jsp:useBean id="xmlHandler" scope="page" class="ken.xmlDocOperator"/>
<jsp:setProperty name="xmlHandler" property="*"/>
<%
//for get  para and to bean
String TranType = "";
String Credit = "";
String[] HomeTransit = new String[Const.HOME_TRANSIT_LEN];
String[] PortTransit = new String[Const.PORT_TRANSIT_LEN];
String[] PortTransitName = new String[Const.PORT_TRANSIT_LEN];
String Temp = "";
int i = 0;
String NameStr = "";
String PlyNo = "";
Hashtable hashData = new Hashtable();
int step = ob.getStep();
String DefaultCls = "";
String DefaultProvince = "";
String ClientName = sessionbuffer.getClientName(Locate);
String ClientType = sessionbuffer.getClientType(Locate);
String ClientId =   sessionbuffer.getClientId(Locate);
String HOME = Const.C_HOME_CDE;//B03
String EXPORT = Const.C_EXPORT_CDE;//B02
String IMPORT = Const.C_IMPORT_CDE; //B01
String NOCREDIT = Const.C_NOCREDIT_CDE;//0
String HASCREDIT = Const.C_CREDIT_CDE;//1
String RadioCheckValue = "";
String RadioCheckHash = "";
int OperType = 0;
String PlyAppNo = "";
String Oper = "";
String PLYAPPMOD = "PLYAPPMOD";
String AgencyNo = "";
String AddAgencyNo ="";
String AddInsrnc[] = null;
boolean IsMainInsrncSelect = false;
boolean IsNewPlyApp = false;
String RemoteOperType    ="";
String DateBeg[] = null;
String[] DefaultCur = null;
String C_insrnt  = "";
int  Oper_GET_RDR = 0;
boolean CopyFromPolicy = false;
/*LK0004+B*/
String _limitDesc = StringTool.null2Blank(request.getParameter("LimitDesc"));
/*LK0004+E*/
//add by kangjin for XML uploaded policy
Hashtable ht = null;
String fileName = 	request.getParameter("fileName");
if (fileName != null && fileName.trim().length()>0){
	String absolutePath = request.getRealPath("/");
	try{
		xmlHandler.setFileName(absolutePath+"upload/"+fileName);
		xmlHandler.parseFile();
		//xmlHandler.readXML(absolutePath+"upload/"+fileName);
		ht = xmlHandler.getPolicyHash();
	}catch(Exception e){
		ht = null;
	}
	if (ht!= null && ht.size() == 0)
		ht = null;
}
//end by kangjin's add
if(step == Const.STEP_BEG || step == Const.STEP_NEWMOD){
	PlyNo = request.getParameter("C_PLY_NO");
	if(PlyNo == null)
	PlyNo = (String)request.getAttribute("C_PLY_NO");

	AgencyNo = (String)request.getAttribute("AGENCYNO");
	if(AgencyNo == null)
		AgencyNo = request.getParameter("AGENCYNO");
	if(AgencyNo == null)
		AgencyNo = "";
	if(AgencyNo.equals(Const.FIND))//is plyApp
	{
		OperType = Const.GET_POLICYAPPINFO;
		Oper_GET_RDR = Const.GET_PLYAPPRDRINFO;
		Oper = request.getParameter("OPER");

		if(Oper == null)
			Oper = (String)request.getAttribute("OPER");
		if(Oper.equals(PLYAPPMOD))//is to be no use
		{
			PlyAppNo = PlyNo;
		}
	}
	else//is ply
	{
		CopyFromPolicy = true;//add by rao 2001/06/05
		OperType = Const.GET_POLICYINFO;
		Oper_GET_RDR = Const.GET_PLYRDRINFO ;
	}

    if(ClientType.equals(Const.CUST_AG)){
		  AddAgencyNo = request.getParameter("ADDAGENCYNO");
    }

    if(!(PlyNo == null || PlyNo.equals("")))
    {
    	String PlyInfo[][] = null;
        String PlyAppRdrInfo[][] = null;
        try{
			pb.setFieldValue(OperType,PlyNo);
			PlyInfo = pb.getRetValueArra();
	    }
        catch(NormalException e){
			if(NormalExceptionHandler.IsSevere(e))
			  throw NormalExceptionHandler.Handle(e);
			else if(NormalExceptionHandler.IsWarning(e))
	 	       WarnMsg = e.getErrDesc();
	    }
        int xx = Objects.getColNum("C_AGT_AGR_NO",PlyInfo);
        AgencyNo = PlyInfo[1][xx];
        //Added by rao 2001/3/13

		xx = Objects.getColNum("C_OPEN_COVER_NO",PlyInfo);
        String OpenCoverNo = PlyInfo[1][xx];
		if(OpenCoverNo.trim().length()!=0){
			obn.setFormData(PlyInfo);%>
				  <jsp:forward page="Notice.jsp" />
         <%}

         ob.setFormData(PlyInfo);
         hashData = ob.getHashData();
         DateBeg = Servlets.DivideMultiStr(Objects.getHt(hashData,"T_INSRNC_BGN_TM"),"-");
         if(DateBeg != null && DateBeg.length == 3)
	     {
             hashData.put("birth_year",DateBeg[0]);
             hashData.put("birth_month",DateBeg[1]);
             hashData.put("birth_day",DateBeg[2]);
         }
         //if(Oper.equals(PLYAPPMOD))//to set Operationselect value from rdrinfo return
		if(!(PlyNo==null || PlyNo.equals("")))
        {
	        int c_insrnc_cde = Objects.getColNum("c_insrnc_cde",PlyInfo);
	        int c_credit_id = Objects.getColNum("c_credit_id",PlyInfo);
	        int c_insrnt_id = Objects.getColNum("C_INSRNT_NME",PlyInfo);
	        if(Servlets.getLen(PlyInfo) > 1)
            {
               	String C_insrnc = PlyInfo[1][c_insrnc_cde];
               	String C_credit = PlyInfo[1][c_credit_id];

				C_insrnt = PlyInfo[1][c_insrnt_id];
               	if(!(C_insrnc.equalsIgnoreCase(IMPORT) || C_insrnc.equalsIgnoreCase(EXPORT)))
               	{
					/*LK0002-B*/
	           	   //HomeTransit[0] = C_insrnc;
				   /*LK0002-E*/
				   /*Lk0002+B*/
					for (i =0;i<Const.HOME_TRANSIT[0].length;i++)
					{
						System.out.println(Const.HOME_TRANSIT[0][i]+"=="+C_insrnc);
						if (Const.HOME_TRANSIT[0][i].equals(C_insrnc))
						{
							HomeTransit[i] = C_insrnc;
							break;
						}
					}
				   /*LK0002+E*/
	           	   C_insrnc = HOME;
                 }
                 else if (C_insrnc.equalsIgnoreCase(EXPORT))
                 {
                  	if(C_credit == null || C_credit.equals(""))
                  	    C_credit = NOCREDIT;
                  }
               	ob.setHomeTransit(HomeTransit);
               	ob.setTranType(C_insrnc);
  			    ob.setCredit(C_credit);

     			    //is to analyst transit:PlyAppRdrInfo

					if(C_credit.equals(NOCREDIT)){
					 try{
			          // pb.setFieldValue(Const.GET_PLYAPPRDRINFO,PlyNo);
					   pb.setFieldValue(Oper_GET_RDR,PlyNo);
			           PlyAppRdrInfo = pb.getRetValueArra();
			         }catch(NormalException e){
			 	        if(NormalExceptionHandler.IsSevere(e))
			 	         throw NormalExceptionHandler.Handle(e);
			 	        else if(NormalExceptionHandler.IsWarning(e))
			 	         WarnMsg = e.getErrDesc();
			         }
					  int c_rdr_cde =  Objects.getColNum("c_rdr_cde",PlyAppRdrInfo);
					  int RdrLen = Servlets.getLen(PlyAppRdrInfo);
					  AddInsrnc = new String[RdrLen - 1];
						for(int j=1;j<RdrLen;j++){
							   AddInsrnc[j - 1 ] =  PlyAppRdrInfo[j][c_rdr_cde];
						}


                    }
                  	if(C_insrnc.equalsIgnoreCase(IMPORT) || (C_insrnc.equalsIgnoreCase(EXPORT) & C_credit.equals(NOCREDIT)))
                  	{

		              //invoke getInsrncAddtion
					  if(!CopyFromPolicy){
		               PortTransit = Servlets.GetInsrncAddtion(PlyAppRdrInfo,PortTransit);
                      }else{
					    PortTransit = ob.getPortTransit();
					  }
		              boolean IsPort = false;
		              for(int k=0;k<Const.PORT_TRANSIT_LEN;k++)
		                {
		                 if(!(PortTransit[k] == null || PortTransit[k].equals("")))
		                       IsPort = true;
		              }
	                  if(!IsPort)
		               {//temp tip for dataError,is to be throw exception
                       %>
                         û��ȡ�����/����������ƥ����������ݡ�
                       <%
		                    return;
		               }
					   if(!CopyFromPolicy){
		                ob.setPortTransit(PortTransit);
                       }
		            }//end if port



                  }//end if  has plyappinfo
                  else
                  {
                    //no plyappinfo
                     %>
                    û��ȡ��Ͷ�������ݡ�
                   <%
		                     return;
                  }

              }//end if plyappmod
	        }
	       else
	       {

	          IsNewPlyApp = true;
	          hashData.clear();
	          RemoteOperType = ob.getRemoteOperType();
	          String NetAddPara[] = {ClientType,ClientId};
	          String NetAddInfo[][] = null;


	          try
	          {
	             if(RemoteOperType.equals(Const.REMOTE_PLY))
	             {
	               NetAddInfo = ob.getRemoteData();
	             }
	             else if(!(ClientType.equals(Const.CUST_AG)))
	            {
   	               pb.setFormPara(Const.GET_PLYAPPNETADDRESS,NetAddPara);
	               NetAddInfo = pb.getRetValueArra();
	             }
	          }
	          catch(NormalException e)
	          {
	 	          if(NormalExceptionHandler.IsSevere(e))
	 	            throw NormalExceptionHandler.Handle(e);
	 	          else if(NormalExceptionHandler.IsWarning(e))
	 	            WarnMsg = e.getErrDesc();
	          }

	          ob.setFormData(NetAddInfo);
	          hashData = ob.getHashData();
			  hashData.put("C_APP_NME",ClientName); //Added by ClarkRao 3/19/2001
	          if(!(RemoteOperType.equals(Const.REMOTE_PLY)))
	          {
			    TranType =  ob.getTranType();
			    String clientEnm ="";
				String resultTable[][] =null;
				String formPara[] = {ClientId};
			    if (ClientType.equals(Const.CUST_CM)){
		          try{
			          cb.setFormPara(Const.QUERY_CUSTPRSN,formPara);
			          resultTable = cb.getRetValueArra();


			          if (TranType.equals(EXPORT) || TranType.equals(IMPORT))
				        clientEnm = resultTable[1][Objects.getColNum("C_BRD_ENM",resultTable)];
			          else
			            clientEnm = resultTable[1][Objects.getColNum("C_CLNT_NME",resultTable)];
		             }catch(Exception e){
			             resultTable = null;
		             }//try
	             }//if COnst.CUST_CM

	            if (ClientType.equals(Const.CUST_AG)){
		         try{
			          cb.setFormPara(Const.QUERY_CUSTAGNT,formPara);
			          resultTable = cb.getRetValueArra();
			          if (TranType.equals(EXPORT) || TranType.equals(IMPORT))
				       clientEnm = resultTable[1][Objects.getColNum("C_AGT_ENM",resultTable)];
			          else
				       clientEnm = resultTable[1][Objects.getColNum("C_AGT_NME",resultTable)];
		           }catch(Exception e){
			           resultTable = null;
		         }//try
	            }//if CUST_AG

	            if (ClientType.equals(Const.CUST_OC)){
		        try{

			      cb.setFormPara(Const.QUERY_CUSTORGN,formPara);
			      resultTable = cb.getRetValueArra();
			       if (TranType.equals(EXPORT) || TranType.equals(IMPORT)){
				    clientEnm = resultTable[1][Objects.getColNum("C_BRD_ENM",resultTable)];

                   }
			       else{
				    clientEnm = resultTable[1][Objects.getColNum("C_CLNT_NME",resultTable)];

				   }
		          }catch(Exception e){
			        resultTable = null;
		          }//try
	             }//if CUST_OC

	      	    hashData.put("C_INSRNT_NME",clientEnm);

	          }
	          DateBeg = Servlets.DivideMultiStr(ServTool.getSysDate(0),"-");
              if(DateBeg != null && DateBeg.length == 3)
              {
                  hashData.put("birth_year",DateBeg[0]);
                  hashData.put("birth_month",DateBeg[1]);
                  hashData.put("birth_day",DateBeg[2]);
              }

	     }
      }
      else if(step == Const.STEP_REP)
      {

      	    hashData = ob.getHashData();

      	    String ChangFlag = (String)request.getAttribute("CHANGFLAG");
      	    if(ChangFlag.equals("1"))
      	    {
             %>
		       <SCRIPT FOR=window EVENT=onload LANGUAGE="JavaScript">
		       window.scrollTo(0,1008);
		        </SCRIPT>
             <%
            }
            String[] CurTemp = Servlets.DivideStr(Objects.getHt(hashData,"C_INVC_AMT_CUR_TEMP"),"&");
            if(!(CurTemp[0] == null || CurTemp[0].equals("")))
            	hashData.put("C_INVC_AMT_CUR_TEMP",CurTemp[0]);
            String[] CityTemp = Servlets.DivideStr(Objects.getHt(hashData,"C_CITY"),"&");
            if(!(CityTemp[0] == null || CityTemp[0].equals("")))
            	hashData.put("C_CITY",CityTemp[0]);
            if(ClientType.equals(Const.CUST_AG))
             {
               AgencyNo = (String)request.getAttribute("AGENCYNO");
   	           AddAgencyNo = request.getParameter("ADDAGENCYNO");
   	         }
             ob.setStep(Const.STEP_BEG);
      }
 %>
<%
      TranType =  ob.getTranType();
      if(TranType.equals(EXPORT))//outport
      {
          Credit = ob.getCredit();
      }
      if(TranType.equals(HOME))//home
      {
           NameStr = Const.AREA; //Const.PROVINCE;
           HomeTransit = ob.getHomeTransit();
           DefaultCur = Const.RMB;
      }
      else//import or outport
      {
           NameStr = Const.AREA;
           PortTransit = ob.getPortTransit();
           DefaultCur = Const.USA;
      }

%>
<%
if ( ht != null){
	ob.setFormDataAdd(hashData,ht);//add xml items to the current hashtable
	AddInsrnc = xmlHandler.getInsuranceAddCodeList();
	String tempDate = (String)hashData.get("T_INSRNC_BGN_TM");
	StringTokenizer token = new StringTokenizer(tempDate,"-");
	hashData.put("birth_year",token.nextToken());
	hashData.put("birth_month",token.nextToken());
	hashData.put("birth_day",token.nextToken());
}
 %>
<%@ include file="PublicPly.jsp" %>

<%
  //modify in 2000-11-06
  double RateToConverted = (Objects.ToDouble(Objects.getHt(hashData,"N_RATE")))*100;
  String RateConverted = Objects.getTrimZero(""+RateToConverted);
  String HelpRef1 = "<a href=\"ViewHelp.jsp?path=";
  String HelpRef2 = "\" onclick=\"return js_openSmallPage(this.href);\"><img src=\"images/inline-help1.gif\" border=0></a>";

%>

<form name="nf" method="POST" action = "PrePlyApp.jsp" >
<%
/*   wuyan delete ��װ��ʽ 2000-12-20

ValidNull(C_PACK_CDE,false) &&
*/

%>
<%
%>
        <table width="100%" border="0" cellspacing="0" cellpadding="0"  bordercolor="#F6F6F6">
          <tr>
            <td height="15"></td>
          </tr>
          <tr >
            <td ><img src ="images/fillblank.gif" width="150" height="31" alt="��дͶ����"></td>
          </tr>
		  <tr><td><table width="100%" border="1" cellspacing="1" cellpadding="0" bordercolorlight="#3399FF" bordercolordark="#FFFFFF"  bordercolor="#F6F6F6">
		  <tr><td align="center">Ͷ �� �� ֪</td></tr>
          <tr><td align="left">&nbsp;&nbsp;&nbsp;&nbsp;1����Ͷ����Ϊ���պ�ͬ����ɲ��֡���Ͷ��֮ǰ������ϸ�Ķ�������� ��
                 <br>&nbsp;&nbsp;&nbsp;&nbsp;2��Ͷ������Ͷ��ʱ��Ӧ��Ͷ�������������ʵ��ϸ����д�����������ʵ��֪���������������ʵ����������ʵ��֪ҵ��ģ��������ʧδ������ʵ��֪��������Ӱ�챣���˾����Ƿ�ͬ��б�������߱��շ��ʵģ���������Ȩ�����ͬ�������˶��ڱ��պ�ͬ���ǰ�����ı����¹ʣ����е��⳥��������ս�����Ρ���

          </td></tr>
		  </table>
		  </td></tr>
          <tr align="right">
            <td height="15"><font color="#ff0000">��*����Ŀ������д</font></td>
          </tr>
          <tr>
            <td height="15">Ͷ����(Proposer) ��

			<% //Modified by Clarkrao 3/19/2001
			  if(!(ClientType.equals(Const.CUST_AG))){%>
			  <input type="text"  disabled  name="C_APP_NME" size="60" value="<%=ClientName%>">
			<%}else{%>
			   <input type="text" name="C_APP_NME" size="60" value="<%=Objects.getHt(hashData,"C_APP_NME")%>">
			<%}%>
		      <input type="hidden" name="Oper" value="Oper">
              <br> ��������(Insured)��
	      <input type="text" <%=Objects.getHt(hashData,"C_INSRNT_NME")%> name="C_INSRNT_NME" maxlength="150" size="60" value="<%=Objects.getHt(hashData,"C_INSRNT_NME")%>">*
						 <% /* Modified by Clarkrao 3/13/2001 */ %>
						</td>

						</tr>

          <tr>
            <td height="15"></td>
          </tr>

            <td height="15">
              <table width="100%" border="1" cellspacing="1" cellpadding="0" bordercolorlight="#3399FF" bordercolordark="#FFFFFF"  bordercolor="#F6F6F6">
                <tr>
                  <td width="7%" bgcolor="#EFEFEF">�������:
                  <%=HelpRef1%>category.txt<%=HelpRef2%>
                  <br>Classification</td>
                  <td width="32%">

      <select  name="C_CRGO_CLS" size="1" onChange="forward(nf,temp,C_CRGO_CLS,'0'); return true;">
                <option  value="">��ѡ��</option>
           <%
	   if(CargoClsLen > 1)
	   {
	     for(i = 1 ;i< CargoClsLen;i++ )
	     {

	   %>
                <option  <%if(Objects.getHt(hashData,"C_CRGO_CLS").equals(CargoCls[i][c_crgo_cls])){%>selected<%}%>  value=<%=CargoCls[i][c_crgo_cls]%>><%=CargoCls[i][c_crgo_cnm]%></option>
	   <%
	      }
	    }
	   %>

      </select>
                 *</td>
                 </tr>

                <tr>
                  <td width="7%" bgcolor="#EFEFEF">����ϸ��:<br>Sub Class</td>
                  <td width="32%">
      <%if(ClientType.equals(Const.CUST_AG)){%>
      <select name="C_CRGO_CDE" size="1" >
	  <%}else{%>
	   <select name="C_CRGO_CDE" size="1">
	  <%}%>
                <option  value="">��ѡ��</option>
          <%
	   if(CargoTypeLen > 1)
	   {
	     int c_crgo_cde = Objects.getColNum("c_crgo_cde",CargoType);
	     c_crgo_cnm = Objects.getColNum("c_crgo_cnm",CargoType);

	     for(i = 1 ;i< CargoTypeLen;i++ )
	     {
	   %>
                <option  <%if(Objects.getHt(hashData,"C_CRGO_CDE").equals(CargoType[i][c_crgo_cde])){%>selected<%}%>  value=<%=CargoType[i][c_crgo_cde]%>><%=CargoType[i][c_crgo_cnm]%></option>
	   <%
	      }
	    }
	   %>

      </select>
                 *</td>
                 </tr>


<%
/*   wuyan delete ��װ��ʽ 2000-12-20

                <tr>
                  <td width="7%" bgcolor="#EFEFEF">��װ��ʽ:
                  <%=HelpRef1% >packing.txt<%=HelpRef2% >
                  <br>Packing Type</td>
                  <td width="32%">
      <select name="C_PACK_CDE" size="1">
                <option selected value="">��ѡ��</option>
          <%
	   if(PackLen > 1)
	   {
	     int c_pack_cde = Objects.getColNum("c_pack_cde",Pack);
	     int c_pack_cnm = Objects.getColNum("c_pack_cnm",Pack);

	     for(i = 1 ;i< PackLen;i++ )
	     {
	   % >
                <option  <%if(Objects.getHt(hashData,"C_PACK_CDE").equals(Pack[i][c_pack_cde])){% >selected<%}% >  value=<%=Pack[i][c_pack_cde]% >><%=Pack[i][c_pack_cnm]% ></option>
	   <%
	      }
	    }
	   % >
      </select>
                    * </td>
                </tr>
*/
%>

<% if((ob.getCredit()).equals(HASCREDIT)){%>
    <tr>
        <td width="7%" bgcolor="#EFEFEF">��������:
                  <%=HelpRef1%>goods-miaoshu.txt<%=HelpRef2%>
                  <br>Description</td>
                  <td width="37%">
	                <textarea rows="2" name="C_CRGO_DESC" cols="48"><%=Objects.getHt(hashData,"C_CRGO_DESC")%></textarea>*
                  </td>
                </tr>
     <%}else{%>
                <tr>
                  <td width="7%" bgcolor="#EFEFEF">��������:
                  <%=HelpRef1%>goods-descrip.txt<%=HelpRef2%>
                  <br>Description</td>
                  <td width="32%">
	     <textarea onblur="LimitLength(C_CRGO_NAME,199);" rows="2" <%=ob.getFieldProp("C_CRGO_NAME")%> name="C_CRGO_NAME" cols="48"><%=Objects.getHt(hashData,"C_CRGO_NAME")%></textarea>
                    * </td>
                </tr>
                <tr>
                  <td width="7%" bgcolor="#EFEFEF">�����װ:
                  <%=HelpRef1%>packing-descrip.txt<%=HelpRef2%>
                  <br>Packing Desc</td>
                  <td width="32%">
      <input type="text" <%=ob.getFieldProp("C_PACK_CNM")%> name="C_PACK_CNM" size="48" maxlength="60" value="<%=Objects.getHt(hashData,"C_PACK_CNM")%>">
                    * </td>
                </tr>

                <tr>
                  <td width="7%" bgcolor="#EFEFEF">��������λ:<br>Quantity</td>
                  <td width="38%">
        <input type="text" <%=ob.getFieldProp("C_AMOUNT")%> name="C_AMOUNT" size="30" maxlength="200" value="<%=Objects.getHt(hashData,"C_AMOUNT")%>">
                    *</td>
                </tr>

                <tr>

                  <td width="7%" bgcolor="#EFEFEF">��ͷ:
                  <%=HelpRef1%>Marks.txt<%=HelpRef2%>
                  <br>Marks</td>
                  <td width="37%">
	    <textarea rows="2" name="C_MARK" onblur="LimitLength(C_MARK,199);" cols="48"><%=Objects.getHt(hashData,"C_MARK")%></textarea>
      <input type="hidden" <%=ob.getFieldProp("C_CRGO_DESC")%> name="C_CRGO_DESC" value="<%=Objects.getHt(hashData,"C_CRGO_DESC")%>">
                  </td>
                </tr>
<%}%>
              </table>
            </td>
          </tr>
          <tr>
            <td height="15">&nbsp;</td>
          </tr>
          <tr>
            <td height="15">
              <table width="100%" border="1" cellspacing="1" cellpadding="0" bordercolorlight="#0099FF" bordercolordark="#FFFFFF"  bordercolor="#F6F6F6">
                <tr>
                  <td width="7%" bgcolor="#EFEFEF">��Ʊ���:
                  <%=HelpRef1%>invoice-amount.txt<%=HelpRef2%>
                  <br>Invoice Amount</td>
                  <td  colspan="3">
        <input type="text" name="N_INVC_AMT" maxlength="12" size="14" onblur="setPrm(N_INVC_AMT,N_AMT,TRAN_TYPE_TEMP);setAmt(N_AMT,N_RATE,C_INVC_AMT_CUR_TEMP,N_PRM_DISP);return true;" value=<%=Objects.getHt(hashData,"N_INVC_AMT")%>>
        <input type="hidden" name="C_INVC_AMT_CUR"  size="12" value=<%=Objects.getHt(hashData,"C_INVC_AMT_CUR")%>>
        <select name="C_INVC_AMT_CUR_TEMP" size="1"  onChange="setCur(C_INVC_AMT_CUR_TEMP,C_AMT_CUR,C_PRM_CUR,C_INVC_AMT_CUR,C_AMT_CUR_CNM,C_PRM_CUR_CNM);setAmt(N_AMT,N_RATE,C_INVC_AMT_CUR_TEMP,N_PRM_DISP);return true;">
          <%
	   if(CurrencyLen > 1)
	   {
	      boolean IsSelect = false;
	     for(i = 1 ;i< CurrencyLen;i++ )
	     {
	   %>
                <option  <%if(Objects.getHt(hashData,"C_INVC_AMT_CUR_TEMP").equals(Currency[i][c_cur_no])){IsSelect = true;%>selected<%}%>  value=<%=Currency[i][c_cur_no]+"&"+Currency[i][n_chg_rte]+"&"+Currency[i][c_cur_cnm]%>><%=Currency[i][c_cur_cnm]%></option>
	   <%
	     }
	     if(!IsSelect & !IsNewPlyApp)
	     {
	   %>
                <option selected value=""><%=Const.SELECT%></option>
	   <%

	     }
	    }
	   %>
        </select>
                    *</td>
                </tr>

                <tr>
                  <td width="7%" bgcolor="#EFEFEF">��Ʊ����:
                  <%=HelpRef1%>invoice-bill.txt<%=HelpRef2%>
                  <br>Invoice NO.</td>
                  <td width="32%">
        <input type="text" name="C_INVC_NO" maxlength="60" size="14" value="<%=Objects.getHt(hashData,"C_INVC_NO")%>">(���ᵥ�Ŷ��߱�����һ��)
                  </td>
                <tr>

                  <td width="7%" bgcolor="#EFEFEF">�ᵥ/�˵���
                  <%=HelpRef1%>invoice-bill.txt<%=HelpRef2%>
                  <br>B/L NO.</td>
                  <td width="33%">
        <input type="text" name="C_RECEIPT_NO" maxlength="50" size="14" value="<%=Objects.getHt(hashData,"C_RECEIPT_NO")%>">
                  </td>
                </tr>

                <tr>
                  <td width="7%" bgcolor="#EFEFEF">����/����/����<br>Conveyance NO.</td>
                  <td colspan="3">
        <input type="text" name="C_SAIL_NO" maxlength="60" size="14" value="<%=Objects.getHt(hashData,"C_SAIL_NO")%>">
                  *<% //Modified by Clarkrao 3/19/2001 %>
        <input type="radio" name="C_CONTAINER" <%if(Objects.getHt(hashData,"C_CONTAINER").equals("��װ������")){%> checked <%}%> value="��װ������">
        ��װ������(FCL)
        <input type="radio" name="C_CONTAINER" <%if(Objects.getHt(hashData,"C_CONTAINER").equals("��װ��ƴ��")){%> checked <%}%> value="��װ��ƴ��">
        ��װ��ƴ��(LCL)
        <input type="radio" name="C_CONTAINER" <%if(Objects.getHt(hashData,"C_CONTAINER").equals("�Ǽ�װ������")){%> checked <%}%> value="�Ǽ�װ������">
        �Ǽ�װ��(NCL)
        </td>
                </tr>

                <tr>
                  <td width="7%" bgcolor="#EFEFEF">���˸�<%=NameStr%>��<br>From</td>
                  <td colspan="3">
        <select name="C_FRM_PRT_ARA" size="1" >
          <%
	   if(TranType.equals(EXPORT) || TranType.equals(HOME))
           {
           %>
                          <option value=<%=Const.CHINA_CDE%>>China(<%=Const.CHINA_CNM%>) </option>
          <%
           }
           else
           {
%>
                <option selected value="">��ѡ��</option>
<%
		   if(AreaLen > 1)
		   {

		     for(i = 1 ;i< AreaLen;i++ )
		     {
		        String AraCdeTemp = Area[i][c_ara_cde];
		        int PointTemp = AraCdeTemp.length() - 2;
		        String CdeLastTwo = AraCdeTemp.substring(PointTemp);
		        if(!(CdeLastTwo.equals("00")))
		        {

		   %>
	                <option  <%if(Objects.getHt(hashData,"C_FRM_PRT_ARA").equals(Area[i][c_ara_cde])){%>selected<%}%>  value=<%=Area[i][c_ara_cde]%>><%=Area[i][c_ara_enm]%>(<%=Area[i][c_ara_cnm]%>)</option>
		   <%
		        }
		      }
		    }
           }
		   %>

        </select>
                    *</td>
                </tr>
                <tr>
                  <td width="7%" bgcolor="#EFEFEF">���˸����ƣ�
                  <br>Port</td>
                  <td colspan="3">
        <input type="text" <%=ob.getFieldProp("C_FROM_PRT")%> name="C_FROM_PRT" maxlength="60" size="25" value="<%=Objects.getHt(hashData,"C_FROM_PRT")%>">
                    *</td>
                </tr>
                <tr>
                  <td width="7%" bgcolor="#EFEFEF">Ŀ�ĸ�<%=NameStr%>
                          <%=HelpRef1%>destArea.txt<%=HelpRef2%>
                  <br>To</td>
                  <td colspan="3">
        <select name="C_TO_PRT_ARA" size="1" >
          <%
	   if(TranType.equals(IMPORT) || TranType.equals(HOME))
           {
           %>
                          <option value= <%=Const.CHINA_CDE%>>(China)<%=Const.CHINA_CNM%> </option>
          <%
           }
           else
           {
%>
                <option selected value="">��ѡ��</option>
<%

		   if(AreaLen > 1)
		   {

		     for(i = 1 ;i< AreaLen;i++ )
		     {
		        String AraCdeTemp1 = Area[i][c_ara_cde];
		        int PointTemp = AraCdeTemp1.length() - 2;
		        String CdeLastTwo = AraCdeTemp1.substring(PointTemp);
		        if(!(CdeLastTwo.equals("00")))
		        {


		   %>
	                <option  <%if(Objects.getHt(hashData,"C_TO_PRT_ARA").equals(Area[i][c_ara_cde])){%>selected<%}%>  value=<%=Area[i][c_ara_cde]%>><%=Area[i][c_ara_enm]%>(<%=Area[i][c_ara_cnm]%>)</option>
		   <%
		        }
		      }
		    }
           }
		   %>

        </select>
                    *</td>
                </tr>
                <tr>
                  <td width="7%" bgcolor="#EFEFEF">Ŀ�ĸ�����:
                  <%=HelpRef1%>destination.txt<%=HelpRef2%>
                  <br>Port</td>
                  <td colspan="3">
        <input type="text" <%=ob.getFieldProp("C_TO_PRT")%> name="C_TO_PRT" maxlength="60" size="25" value="<%=Objects.getHt(hashData,"C_TO_PRT")%>" <% if(TranType.equals(EXPORT)){%> onChange="ChangePay_Addr(C_TO_PRT,C_PAY_ADDR);ChangePay_Addr(C_TO_PRT,C_SRVY_ADDR);return true;" <%}%>>
                    *</td>
                </tr>
                <tr>
                  <td width="7%" bgcolor="#EFEFEF">;�������ƣ�<br>Via</td>
                  <td colspan="3">
        <input type="text" name="C_PASS_PRT"  maxlength="40" size="25" value="<%=Objects.getHt(hashData,"C_PASS_PRT")%>">
                  </td>
                </tr>
                <tr>
                  <td width="7%" bgcolor="#EFEFEF">�������ڣ�
                  <%=HelpRef1%>date.txt<%=HelpRef2%>
                  <br>Slg.on or abt.</td>
                  <td width="33%">
        <input type="text" name="birth_year" size="4"  maxlength="4" value=<%=Objects.getHt(hashData,"birth_year")%> onfocus="ChangeDate(birth_year,birth_month,birth_day,C_PRN_FRM)" onChange="change(birth_year,birth_month,birth_day,tempdate);return ValidDateNew(tempdate,birth_year)&&ChangeDate(birth_year,birth_month,birth_day,C_PRN_FRM)">
        ��
        <input type="text" name="birth_month" size="2" maxlength="2" value=<%=Objects.getHt(hashData,"birth_month")%> onChange="change(birth_year,birth_month,birth_day,tempdate);return ValidDateNew(tempdate,birth_year)&&ChangeDate(birth_year,birth_month,birth_day,C_PRN_FRM)">
        ��
        <input type="text" name="birth_day" size="2" maxlength="2" value=<%=Objects.getHt(hashData,"birth_day")%> onChange="change(birth_year,birth_month,birth_day,tempdate); return ValidDateNew(tempdate,birth_year)&&ChangeDate(birth_year,birth_month,birth_day,C_PRN_FRM)">
        ��*
        </td>
        <input type="hidden" name="tempdate" value="2000-08-23">
    		</tr>


        <tr>
                  <td width="7%" bgcolor="#EFEFEF">��ӡ��ʽ��<br>Prn Form</td>
                  <td colspan="3">

		<%
		   String yy = Objects.getHt(hashData,"birth_year");
		   String mm = Objects.getHt(hashData,"birth_month");
		   String dd = Objects.getHt(hashData,"birth_day");
		   String f1 = yy + "��" + mm +"��" + dd + "��" ;
		   String f2 = StringTool.getDateString(yy+"-"+ mm + "-"+ dd,"ENG");
		   f2= f2.toUpperCase();
		%>
		<select name="C_PRN_FRM">
		 <option value="<%=f2%>" <% if(Objects.getHt(hashData,"C_PRN_FRM").equals(f2)){%> selected <%}%>><%=f2%>
		 <option value="<%=f1%>" <% if(Objects.getHt(hashData,"C_PRN_FRM").equals(f1)){%> selected <%}%>><%=f1%>
		 <option value="����ᵥ" <% if(Objects.getHt(hashData,"C_PRN_FRM").equals("����ᵥ")){%> selected <%}%>>����ᵥ
		 <option value="AS PER B/L" <% if(Objects.getHt(hashData,"C_PRN_FRM").equals("AS PER B/L")){%> selected <%}%>> AS PER B/L
		 <option value="TO BE ADVISED" <% if(Objects.getHt(hashData,"C_PRN_FRM").equals("TO BE ADVISED")){%> selected <%}%>> TO BE ADVISED
		 <option value="����֪" <% if(Objects.getHt(hashData,"C_PRN_FRM").equals("����֪")){%> selected <%}%>> ����֪


		</select>
                  </td>
                </tr>
		<%if(TranType.equals(EXPORT)){%>
         <tr><td width="7%" bgcolor="#EFEFEF">�鿱�����˵ص�:</td>
             <td colspan="3"><input type="text" name="C_SRVY_ADDR"  value="<%=Objects.getHt(hashData,"C_SRVY_ADDR")%>">*</td></tr>
		 <tr><td width="7%" bgcolor="#EFEFEF">�����ص�:</td>
			<% if(Objects.getHt(hashData,"C_PAY_ADDR").equals("") && !TranType.equals(EXPORT)){
			   String Result[] = sessionbuffer.getClientAddInfo(Locate);%>
			   <td colspan="3"><input type="text"   name="C_PAY_ADDR" value="<%=Result[0]%>">*</td>
			<%}else{%>
			   <td colspan="3"><input type="text"    name="C_PAY_ADDR" value="<%=Objects.getHt(hashData,"C_PAY_ADDR")%>">*</td>
			 <%}%>

        </tr>
			<%}%>
        <input type="hidden" name="C_PRM_CUR" size="12" value=<%=Objects.getHt(hashData,"C_PRM_CUR")%>>
        <input type="hidden" name="C_AMT_CUR" value=<%=Objects.getHt(hashData,"C_AMT_CUR")%>>

	     	<tr>
                  <td width="7%" bgcolor="#EFEFEF">���ս�
                  <%=HelpRef1%>amount-insured.txt<%=HelpRef2%>
                  <br>Amount Insured</td>
                  <td colspan="3">
        <input type="text" name="N_AMT" size="12" maxlength="19"  onblur="setAmt(N_AMT,N_RATE,C_INVC_AMT_CUR_TEMP,N_PRM_DISP);return true;" value=<%=Objects.getHt(hashData,"N_AMT")%>>
        <input type="text" disabled name="C_AMT_CUR_CNM" size="8" maxlength="20" value=<%=Objects.getHt(hashData,"C_AMT_CUR_CNM")%>>
       ��<%if(!(TranType.equals(HOME))){%>�籣�ս�����Ʊ���110%,���ڱ�ע��˵��ԭ��<%}else{%>���ս����ۻ���ۼ����ӷ�ȷ��<%}%>��
        </td>
                </tr>
<%
           if(ClientType.equals(Const.CUST_AG))
           {
%>

                <tr>
                  <td width="7%" bgcolor="#EFEFEF">���ʣ�
                  <br>Rate</td>
                  <td width="32%">
        <input type="text" name="N_RATE" size="12" maxlength="20" onblur="ValidRate(N_RATE);setAmt(N_AMT,N_RATE,C_INVC_AMT_CUR_TEMP,N_PRM_DISP);return true;"  value="<%=RateConverted%>">%
		  </td>
                </tr>
                <tr>
                  <td width="7%" bgcolor="#EFEFEF">���շѣ�<br>Premium</td>
                  <td width="33%">
	  	<!--����2001-09-11
		1.��N_PRM�ֶ�����ΪN_PRM_DISP����ֹ�޸�
		2.����һ����ΪN_PRM�������ֶ�
		3.ʹ��N_PRM��ֵ���ύ��ʱ����N_PRM_DISP��ֵһ��
		-->
        <input type="hidden" name="N_PRM" size="12" maxlength="19" value="<%=Objects.getHt(hashData,"N_PRM")%>" onblur="SetRate(N_AMT,N_RATE,C_INVC_AMT_CUR_TEMP,N_PRM_DISP);return true;">
        <input type="text" name="N_PRM_DISP" size="12" maxlength="19" value="<%=Objects.getHt(hashData,"N_PRM")%>" onblur="SetRate(N_AMT,N_RATE,C_INVC_AMT_CUR_TEMP,N_PRM_DISP);return true;" disabled>
        <input type="text" disabled name="C_PRM_CUR_CNM" size="8" maxlength="20" value=<%=Objects.getHt(hashData,"C_PRM_CUR_CNM")%>>
        <input type="hidden"  name="TRAN_TYPE_TEMP" size="12" value=<%=TranType%>>
                  </td>
                </tr>
                <tr>
                  <td width="7%" bgcolor="#EFEFEF">���⣺ <br>Deductible</td>
                  <td colspan="3">
        <input type="text" name="C_NO_REPAY" size="65" maxlength="100" value="<%=Objects.getHt(hashData,"C_NO_REPAY")%>">
 		  </td>
                </tr>
<%
}else{
%>
<input type="hidden"  name="TRAN_TYPE_TEMP" size="12" value=<%=TranType%>>
<input type="hidden"  name="N_PRM" size="12" value="">
<input type="hidden" name="N_PRM_DISP" size="12" value="">
<input type="hidden"  name="C_PRM_CUR_CNM" size="12" value="">
<input type="hidden"  name="N_RATE" size="12" value="">
<%
}
         if(!(TranType.equals(EXPORT) & Credit.equals(HASCREDIT)))
         {
      %>

    <tr>
         <td width="7%" bgcolor="#EFEFEF">���գ�<br>Risks</td>
          <td colspan="3">

       <%
     if(!(TranType.equals(HOME)))
      {

        if((TranType.equals(IMPORT) || (TranType.equals(EXPORT) & Credit.equals(NOCREDIT) )) & PortTransit[Const.N_SEA_CDE].equals(Const.C_LANDWAY_CDE))
        {
		RadioCheckHash = Objects.getHt(hashData,"C_MAIN_INSURANCE1");

		if(!RadioCheckHash.equals(""))
		    RadioCheckHash = RadioCheckHash.substring(0,2);
		IsMainInsrncSelect = false;



              for(i=0;i<6;i++)
              {
                 RadioCheckValue = Const.C_H_B0102_CDE[i]+"&"+Const.C_H_B0102_CNM[i];
                 Temp  = RadioCheckValue.substring(0,2);
           %>
			<input type="radio" name="C_MAIN_INSURANCE1" <%if(RadioCheckHash.equals(Temp) || ServTool.IsInArray(AddInsrnc,Temp) || (i == 5 & (!IsMainInsrncSelect))) {IsMainInsrncSelect = true; %>checked<%}%>
			value="<%=RadioCheckValue%>" > <%=Const.C_H_B0102_CNM[i]%>
           <%
              }
          }
         if((TranType.equals(IMPORT) || (TranType.equals(EXPORT) & Credit.equals(NOCREDIT) )) & PortTransit[Const.N_LANDWAY_CDE].equals(Const.C_LANDWAY_CDE))
         {
		RadioCheckHash = Objects.getHt(hashData,"C_MAIN_INSURANCE2");
		if(!RadioCheckHash.equals(""))
		    RadioCheckHash = RadioCheckHash.substring(0,2);
		IsMainInsrncSelect = false;

              for(i=6;i<8;i++)
              {
                 RadioCheckValue = Const.C_H_B0102_CDE[i]+"&"+Const.C_H_B0102_CNM[i];
                 Temp  = RadioCheckValue.substring(0,2);

           %>

			<input type="radio" name="C_MAIN_INSURANCE2" <%if(RadioCheckHash.equals(Temp)  || ServTool.IsInArray(AddInsrnc,Temp) || (i == 7 & (!IsMainInsrncSelect))) {IsMainInsrncSelect = true; %>checked<%}%>
			value="<%=RadioCheckValue%>"> <%=Const.C_H_B0102_CNM[i]%>
           <%
              }
          }
         if((TranType.equals(IMPORT) || (TranType.equals(EXPORT) & Credit.equals(NOCREDIT) )) & PortTransit[Const.N_AVIATION_CDE].equals(Const.C_LANDWAY_CDE))
         {
		RadioCheckHash = Objects.getHt(hashData,"C_MAIN_INSURANCE3");
		if(!RadioCheckHash.equals(""))
		    RadioCheckHash = RadioCheckHash.substring(0,2);
                IsMainInsrncSelect = false;

              for(i=8;i< 10;i++)
              {
                 RadioCheckValue = Const.C_H_B0102_CDE[i]+"&"+Const.C_H_B0102_CNM[i];
                 Temp  = RadioCheckValue.substring(0,2);

           %>
			<input type="radio" name="C_MAIN_INSURANCE3" <%if(RadioCheckHash.equals(Temp) || ServTool.IsInArray(AddInsrnc,Temp) || (i == 9 & (!IsMainInsrncSelect))) {IsMainInsrncSelect = true; %>checked<%}%>
			value="<%=RadioCheckValue%>"> <%=Const.C_H_B0102_CNM[i]%>
           <%
              }
        }
          }
         if(TranType.equals(HOME))
         {
		RadioCheckHash = Objects.getHt(hashData,"C_MAIN_INSURANCE4");

		if(!RadioCheckHash.equals(""))
		    RadioCheckHash = RadioCheckHash.substring(0,2);
		    IsMainInsrncSelect = false;
			  /*LK0001+B*/
					boolean isHomeAviation = false;
					for (i=0;i<HomeTransit.length;i++){
						if (HomeTransit[i] != null && HomeTransit[i].equals(Const.C_H_AVIATION_CDE))
						{
							isHomeAviation = true;
//							break;
						 }
						}		
						//set the start index of the insruance code
				int indexStart = 0;//default value for home is 0
				if (isHomeAviation)//should be special handled  for home aviation
				{
					indexStart = 2;
				}
				  
			  /*LK0001+E*/
			  
              for(i=indexStart;i<indexStart+2;i++)
              {
                 RadioCheckValue = Const.C_H_B03_CDE[i]+"&"+Const.C_H_B03_CNM[i];

                 Temp  = RadioCheckValue.substring(0,2);

           %>
			<input type="radio" name="C_MAIN_INSURANCE4" <%if(RadioCheckHash.equals(Temp) || ServTool.IsInArray(AddInsrnc,Temp) || ((i == 1 || i== 3) & (!IsMainInsrncSelect))) {IsMainInsrncSelect = true; %>checked<%}%>
			 value="<%=RadioCheckValue%>" > <%=Const.C_H_B03_CNM[i]%>
           <%
              }
           }
        %>
           </td>
        </tr>

      <%
         if(!((TranType.equals(EXPORT) & Credit.equals(HASCREDIT)) || TranType.equals(HOME)))
         {
      %>
    <tr>
         <td width="7%" bgcolor="#EFEFEF">�����գ�<br>Add-Risks</td>
           <td colspan="3">

           <%
              String CheckboxName1 ="C_ADD_INSURANCE";
              String  CheckboxName = "";
              for(i=0;i<13;i++)
              {
              	CheckboxName = CheckboxName1 + String.valueOf(i);
		RadioCheckHash = Objects.getHt(hashData,CheckboxName);
		if(!(RadioCheckHash.equals("") || RadioCheckHash == null))
		    RadioCheckHash = RadioCheckHash.substring(0,2);
                 RadioCheckValue = Const.C_H_ADD_CDE[i]+"&"+Const.C_H_ADD_CNM[i];
                 Temp  = RadioCheckValue.substring(0,2);

                 if((i%5) == 0 && i>4)
                 {
           %>
        	  <br>
        <%
        	  }
         %>
			<input type="checkbox" name="<%=CheckboxName%>" <%if(RadioCheckHash.equals(Temp) || ServTool.IsInArray(AddInsrnc,Temp)) {%>checked<%}%>
			value="<%=RadioCheckValue%>"> <%=Const.C_H_ADD_CNM[i]%>
        <%

               }
        %>
           </td>
        </tr>

	<tr>
          <td width="7%" bgcolor="#EFEFEF">����������<br>Other Add-Risks</td>
          <td height="12" colspan="3">
      <textarea rows="3" name="C_ADD_RISK" cols="65" maxlength="500"><%=Objects.getHt(hashData,"C_ADD_RISK")%></textarea>
      </td>
    </tr>

        <%
           }
       }
         if(TranType.equals(EXPORT) & Credit.equals(HASCREDIT))
         {

        %>
    <tr>
          <td width="7%" bgcolor="#EFEFEF">��������<br>Insurance Conditions</td>
          <td height="12" colspan="3">
       <textarea rows="3" name="C_UNDR_CNDTN" cols="60" maxlength="500"><%=Objects.getHt(hashData,"C_UNDR_CNDTN")%></textarea>
      *</td>
    </tr>
      <%
        }
      %>
              </table>
            </td>
          </tr>
          <tr>
            <td height="15"></td>
          </tr>
          <tr>
            <td height="15">������ʧ��¼(��ȥ����)(Loss Record)��</td>
          </tr>
          <tr align="left">
            <td height="15">
  <input type="text" name="C_LOST_DESC" size="81" maxlength="500" value="<%=Objects.getHt(hashData,"C_LOST_DESC")%>">
            </td>
          </tr>
          <tr>
            <td height="15">��ע(����д������Ｐ����Ҫ��������)(Remarks)��
            <%=HelpRef1%>remark.txt<%=HelpRef2%>
            </td>
          </tr>
          <tr align="left">
            <td height="15">
   <textarea rows="2" name="C_REMARK" cols="80" maxlength="500" <%if(RemoteOperType.equals(Const.REMOTE_PLY)){%> onkeydown="return false;" <%}%>><%=Objects.getHt(hashData,"C_REMARK")%></textarea>
            </td>
          </tr>
          <tr>
            <td height="15">&nbsp;</td>
          </tr>
 <% if(ClientType.equals(Const.CUST_AG)){

    /* �����ܳɱ�����*/
    boolean disabled = false;
	/**LK0004-B
    String AgentInfo[][] = null;

	String textarea = "";
    if(!(Objects.getHt(hashData,"C_CRGO_CLS").equals("") && Objects.getHt(hashData,"C_CRGO_CDE").equals(""))){
		String  agr_insrnc_cde = Objects.getHt(hashData,"C_CRGO_CDE");
		if(TranType.equals(Const.C_HOME_CDE)){
		  for(int ii=0 ;ii<HomeTransit.length;ii++)
		   if(HomeTransit[ii]!=null && !HomeTransit[ii].equals(""))
			agr_insrnc_cde = HomeTransit[ii];
		}else{
		   agr_insrnc_cde =  TranType;
		}
		try
		{
			String paras[]={AgencyNo,agr_insrnc_cde,Objects.getHt(hashData,"C_CRGO_CLS"),Objects.getHt(hashData,"C_CRGO_CDE")};
 			pb.setFormPara(Const.GET_AGENCYINFO,paras);
			AgentInfo = pb.getRetValueArra();

		}
		catch(NormalException e)
		{
 			if(NormalExceptionHandler.IsSevere(e))
 			 throw NormalExceptionHandler.Handle(e);
 			else if(NormalExceptionHandler.IsWarning(e))
			{ disabled = true;
 			 WarnMsg = e.getErrDesc();
 			 //e.printStackTrace();
			 }

		}
        if(!disabled){
         int c_limit_desc = Objects.getColNum("C_LIMIT_DESC",AgentInfo);
         textarea =  (AgentInfo[1][c_limit_desc]).trim();
        }
    }LK0004-E*/
	String textarea = _limitDesc;
  %>
	  <%/*LK0004+B*/%>
	  <input type="hidden" name="LimitDesc" value="<%=textarea%>">
	  <%/*LK0004+E*/%>
  <% if(!textarea.equals("")){%>
   <tr><td height="15">���Ƴб����</td>
          </tr>
   <tr align="left">
            <td height="15" >
   <textarea rows="2" name="C_LIMIT_CARGO" cols="80" maxlength="500" disabled = true ><%=textarea%></textarea>
            </td>
          </tr>
  <%}%>
 <%}%>
<%if(!(ClientType.equals(Const.CUST_AG)))
  {
%>
          <tr>
            <td height="15">
              <table width="100%" border="1" cellspacing="1" cellpadding="0" bordercolorlight="#6699FF" bordercolordark="#FFFFFF" bordercolor="#F6F6F6">
                <tr>
                  <td width="11%" bgcolor="#EFEFEF">�͵�ʱ��:</td>
                  <td width="30%">�ӷ����б�֪ͨ��ʼһ����������</td>
                  <td width="11%" bgcolor="#EFEFEF">�͵��ص�:</td>
                  <td width="39%">
	            <%
               if(ProvinceLen > 1){
                      for(i = 1; i < ProvinceLen; i++){
						if(Objects.getHt(hashData,"C_PROVINCE").equals(Province[i][c_city])){%>
							<font color="blue"><%=Province[i][c_city_cnm]%></font>
							<input type="hidden" name="C_PROVINCE" value="<%=Province[i][c_city]%>">
         <%			}
                      }
                }
         %>

				  <!--
          <select name="C_PROVINCE" size="1" onChange="forward(nf,temp,C_PROVINCE,'1'); return true;" >
          <%
               if(ProvinceLen > 1)
                   {
                      for(i = 1; i < ProvinceLen; i++)
                      {
          %>
                          <option <%if(Objects.getHt(hashData,"C_PROVINCE").equals(Province[i][c_city])){%>selected<%}%> value=<%=Province[i][c_city]%>> <%=Province[i][c_city_cnm]%> </option>
         <%
                       }
                    }
         %>

          </select>--> ��/��/��:
			<%if(CityLen > 1){
        			c_city = Objects.getColNum("c_city",City);
  	                c_city_cnm = Objects.getColNum("c_city_cnm",City);
                    int c_dpt_cde =  Objects.getColNum("c_dpt_cde",City);
                    String value = "";
                    for(i = 1; i < CityLen; i++){
		   				value = City[i][c_city]+"&"+City[i][c_dpt_cde]+"&"+City[i][c_city_cnm];
						if(Objects.getHt(hashData,"C_CITY").equals(City[i][c_city])){%>
							<font color="blue"><%=City[i][c_city_cnm]%></font>
							<input type="hidden" name="C_CITY" value="<%=value%>">
         <%			}
                      }
                 }
          %>

			  <!--
          <select name="C_CITY" size="1" >
          <%
               if(CityLen > 1)
                   {
        	        c_city = Objects.getColNum("c_city",City);
  	                c_city_cnm = Objects.getColNum("c_city_cnm",City);
                        int c_dpt_cde =  Objects.getColNum("c_dpt_cde",City);
                        String value = "";
                      for(i = 1; i < CityLen; i++)
                      {
		   	value = City[i][c_city]+"&"+City[i][c_dpt_cde]+"&"+City[i][c_city_cnm];
          %>
          <option <%if(Objects.getHt(hashData,"C_CITY").equals(City[i][c_city])){%>selected<%}%> value=<%=value%>> <%=City[i][c_city_cnm]%> </option>
         <%
                       }
                    }
          %>
          </select> *-->
	  </td>
    </tr>
                <tr>
                  <td width="11%" height="26" bgcolor="#EFEFEF" nowrap>��ϸ��ַ:
                  <%=HelpRef1%>address.txt<%=HelpRef2%>
                  </td>
                  <td colspan="3" height="26">
        <input type="text" name="C_PLACE" size="65" maxlength="100" value="<%=Objects.getHt(hashData,"C_PLACE")%>">
         * </td>
    </tr>
                 <tr>
                  <td width="11%" height="26" bgcolor="#EFEFEF">��ϵ��:</td>
                  <td width="39%" height="26">
        <input type="text" <%=ob.getFieldProp("C_CONTACT_NAME")%> name="C_CONTACT_NAME" size="14"  maxlength="20" value="<%=Objects.getHt(hashData,"C_CONTACT_NAME")%>">
                    *</td>
                  <td width="11%" height="26" bgcolor="#EFEFEF">��ϵ�绰:</td>
                  <td width="39%" height="26">
        <input type="text" <%=ob.getFieldProp("C_CONTACT_PHONE")%> name="C_CONTACT_PHONE" size="15"  maxlength="20" value="<%=Objects.getHt(hashData,"C_CONTACT_PHONE")%>">
                    *</td>
                </tr>
                <tr>
                  <td width="11%" bgcolor="#EFEFEF">����:</td>
                  <td width="39%">
        <input type="text" <%=ob.getFieldProp("C_CONTACT_FAX")%>  name="C_CONTACT_FAX" size="14" maxlength="20" value="<%=Objects.getHt(hashData,"C_CONTACT_FAX")%>">
                  </td>
                  <td width="11%" bgcolor="#EFEFEF">E-mail:</td>
                  <td width="39%">
        <input type="text" <%=ob.getFieldProp("C_CONTACT_EMAIL")%> name="C_CONTACT_EMAIL" size="15" maxlength="60" value="<%=Objects.getHt(hashData,"C_CONTACT_EMAIL")%>">
                  *</td>
                </tr>
				<tr>
                  <td width="11%" bgcolor="#EFEFEF">�ʱ�:</td>
                  <td  colspan=3>
        <input type="text" <%=ob.getFieldProp("C_ZIP_CDE")%>  name="C_ZIP_CDE" size="14" maxlength="6" value="<%=Objects.getHt(hashData,"C_ZIP_CDE")%>">*
                  </td>

                </tr>
              </table>
            </td>
          </tr>
<%
   }//end if not agent

  %>
          <tr><td height="15"><table width="100%" border="1" cellspacing="1" cellpadding="0" bordercolorlight="#3399FF" bordercolordark="#FFFFFF"  bordercolor="#F6F6F6">����
			<tr><td align="center">Ͷ������</td></tr>
����        <tr><td>&nbsp;&nbsp;&nbsp;��Ͷ���˶Ա�����������Ǳ��������������������˽Ⲣͬ��Ͷ����
                 <br>&nbsp;&nbsp;&nbsp;��Ͷ����������Ͷ��������������д��ʵ����Ǳ�Ͷ�����ױʶ����������߾�����Ͷ������Ȩ��Ϊ���е��������Ρ�
                 <br>&nbsp;&nbsp;&nbsp;��Ͷ����ͬ���緢���й�����Ͷ�����֡����ս��ȷ���ķ��磬���й�ƽ�����չɷ����޹�˾�ĵ��Ӽ�¼ƾ֤�����ݵ�����Ϊ��Ͷ���������Ч��Ψһ�Ϸ���Чƾ֤��������ȫ֤��Ч���� ����
                 <br>&nbsp;&nbsp;&nbsp;��Ͷ���˶Ա�Ͷ�����·���"Ԥ��"��Ť�ĵ�������Լ�֧�����շѵ���Ϊ��Ϊ��Ͷ����Ͷ������ʵ��˼��ʾ��

           </td></tr> </table></td>
          </tr>
          <tr>
            <td height="15">&nbsp;</td>
          </tr>
          <tr align="center">
            <td height="15"><select name="language" size="1">
		       <option value="ENG" selected>Ӣ</option>
			   <option value="CHN" >��</option>
               </select>
               <input type="button" value="Ԥ  ��" name="B1" onclick="setNPrm();sub(temp);change(birth_year,birth_month,birth_day,tempdate);CheckForm(this.form);">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <input type="reset" value="��  ��" name="B2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="button" value="ǰһҳ" name="B44" onclick='javascript:history.back();'>
            </td>
          </tr>
        </table>
      <%String sessionid = Code.Encrypt(sessionId);%>
    <input type="hidden" name="sessionid" value="<%=sessionid%>">
    <input type="hidden" name="temp" value="sub">
    <input type="hidden" name="C_PLY_APP_NO" value="<%=Objects.getHt(hashData,"C_PLY_APP_NO")%>">
    <input type="hidden" name="AGENCYNO" value="<%=StringTool.null2Blank(AgencyNo)%>">
    <input type="hidden" name="ADDAGENCYNO" value="<%=StringTool.null2Blank(AddAgencyNo)%>">
        <input type="hidden" name="TEMPAMT" value="">
        <input type="hidden" name="TEMPAMT1" value="">

      </form>
    </td>
  </tr>
</table>

<%@ include file="public/PublicBottom.html" %>

</body>
</html>
<script language=JavaScript>
function CheckForm(theForm){
TrimForm(theForm);
if(ValidDateNew(theForm.tempdate,theForm.birth_year) &&
ValidDateBegin(theForm.tempdate,'<%=Sdate%>',theForm.birth_year,theForm.C_REMARK) &&
ValidNull(theForm.C_APP_NME,false) &&
ValidNull(theForm.C_INSRNT_NME,false) &&
<%if((ClientType.equals(Const.CUST_AG))){%>
AlertWin()&&
<%}%>
<%if(!(ClientType.equals(Const.CUST_AG)))
  {
%>
ValidNull(theForm.C_PLACE,false) &&
ValidNull(theForm.C_CONTACT_NAME,false) &&
ValidNull(theForm.C_CONTACT_PHONE,false) &&
ValidNull(theForm.C_CONTACT_EMAIL,false) &&
ValidNull(theForm.C_PROVINCE,false) &&
ValidNull(theForm.C_CITY,false) &&
ValidTel(theForm.C_CONTACT_PHONE) &&
ValidTel(theForm.C_CONTACT_FAX) &&
ValidEmail(theForm.C_CONTACT_EMAIL) &&
ValidNull(theForm.C_ZIP_CDE) &&
ValidZip(theForm.C_ZIP_CDE) &&
<%
   }//end if not agent N_INVC_AMT
  if(TranType.equals(EXPORT) & Credit.equals(HASCREDIT))
  {
%>
ValidNull(theForm.C_UNDR_CNDTN,false) &&
ValidNull(theForm.C_CRGO_DESC,false) &&
<%
   }else{
%>
ValidNull(theForm.C_PACK_CNM,false) &&
ValidNull(theForm.C_CRGO_NAME,false) &&
ValidNull(theForm.C_AMOUNT,false) &&
<%}%>
ValidNull(theForm.C_CRGO_CLS,false) &&
ValidNull(theForm.C_CRGO_CDE,false) &&
ValidNull(theForm.N_INVC_AMT,false) &&
ValidNull(theForm.C_INVC_AMT_CUR_TEMP,false) &&
ValidNull(theForm.C_SAIL_NO,false) &&
ValidNull(theForm.C_FRM_PRT_ARA,false) &&
ValidNull(theForm.C_TO_PRT_ARA,false) &&
ValidNull(theForm.C_FROM_PRT,false) &&
ValidNull(theForm.C_TO_PRT,false) &&
ValidNull(theForm.birth_year,false) &&
ValidNull(theForm.birth_month,false) &&
ValidNull(theForm.birth_day,false) &&
<%if(TranType.equals(EXPORT)){%>
ValidNull(theForm.C_SRVY_ADDR,false)&&
ValidNull(theForm.C_PAY_ADDR,false)&&
	<%}%>
ValidSamePort(theForm.C_FROM_PRT,theForm.C_TO_PRT) &&
ValidNoOrReal(theForm.C_INVC_NO,theForm.C_RECEIPT_NO) &&
ValidRate(theForm.N_RATE)
){
  //alert("Success");
  //By kangjin 2001-08-29
  theForm.B1.disabled=true;
  theForm.submit();
}else{
  //alert("false");
}
}

function AlertWin(){
	var result = true;
	try{
		if (nf.C_REMARK.value.length > 0 || nf.C_ADD_RISK.value.length >0 )
			result = confirm("���ڡ��������ӷ��ա��򡰱�ע����������ע�������ܽ����Զ��˱�");
	}catch(e){
	}
	return result;
}

function LimitLength(field,maxLength){
  /** verfy the max length of the field and warn */
   var extraLength;
	if (ActualLength(field) >maxLength){
		extraLength = ActualLength(field) - maxLength;
		alert("���ֶγ���"+extraLength+"���ַ�");
		field.focus();
	}
}

/*count Chinese character as 2 digits*/
function ActualLength(field){
	var actualLength = field.value.length;
	for (i = 0 ;i<field.value.length;i++){
		if (field.value.charCodeAt(i) > 1000){
			actualLength ++;
		}
	}
		return actualLength;
}

/*����2001-09-11
bug report:�ͻ����������޸ı���
solution:�����ѱ�Ϊ���ɸı���ֶ�
**/
function setNPrm(){
	try{
		nf.N_PRM.value = nf.N_PRM_DISP.value;
	}catch(e){
	}
}
</script>
