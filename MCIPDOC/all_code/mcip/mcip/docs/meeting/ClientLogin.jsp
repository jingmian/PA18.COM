

<%@ page language="java" import="java.beans.Beans,java.lang.*,java.io.*,java.util.*,exceptions.*,constant.*,utility.*,beans.*,ctil.message.*" errorPage="ErrOut.jsp" contentType= "text/html; charset=gb2312"%>
<jsp:useBean id="cb"  scope="page" class="beans.CustManagerBean"/>
<jsp:setProperty name="cb" property="*"/>

<%
//Added by Liuxy 
    if (!Init.isInit())
    {
       Init.initAll();
    }

%>

<%  //for get login para and to bean

	MessageBean mb = MessageBean.instance;


    String Result[][] = null;
    String sessionId = "";
    String RemoteOperType = "";

    String user = request.getParameter("user");
    String subject  = request.getParameter("sub");
	String orgID = request.getParameter("orgID"); //��������
	String insuranceID = request.getParameter("insuranceID"); //���ֱ���

	
	
	if(subject == null || subject == ""){ //���������⽻̸
		subject = "Have no subject";

		System.out.println("------------------>This is a no subject talking");
		SessionBuffer sessionbuffer = SessionBuffer.getSessionBuffer();
		HttpSession https = request.getSession(true);
		String sessionIdCurr = https.getId();
	    int Locate = sessionbuffer.ProcessSession(Const.SESSAUTH,sessionIdCurr);
		if(Locate < 0){
			throw NormalExceptionHandler.Handle(Const.SYS_LOGIN_ERR_CDE,Const.SYS_LOGIN_ERR); 
		}
		user = sessionbuffer.getuserId(Locate);
		
		orgID = sessionbuffer.getClientAddInfo(Locate)[4];
	
		
		
		
	}


%>


<%

    HttpSession https = request.getSession(true);
    String sessionIdNew = https.getId();

//Added by Liuxy on 2001.4.6
	SessionBuffer sessionbuffer = SessionBuffer.getSessionBuffer();
	int Locate = sessionbuffer.ProcessSession(Const.SESSAUTH,sessionIdNew);
    if (Locate < 0)
    {
        throw NormalExceptionHandler.Handle(Const.SYS_LOGIN_ERR_CDE,Const.SYS_LOGIN_ERR);
    }

    

%>

<%
///////// ���´����Ǵ����������������֡���ƥ�� /////////


if(orgID == null || orgID == ""){
	orgID = "";
}
if(insuranceID == null || insuranceID == "" ){
	insuranceID = "";
}
System.out.println("ORGID is ------------> " + orgID);
System.out.println("InsuranceID is --------->" + insuranceID);
//orgID = "2";
//insuranceID="00001";
//subject = "Have no subject";


/////////////////////////////////////////////////




	//�ж��Ƿ�����Ӧ�����ĺ˱�������
	boolean haveServer = false;
	Vector serverQueue = mb.GetAllServers();
	Server serverTemp;
	Enumeration e;

	if(subject.equals("Have no subject")){
		for(e = serverQueue.elements(); e.hasMoreElements();){
			serverTemp = (Server)e.nextElement();
			haveServer = true;
			if(serverTemp.IsAuthOrg(orgID)){
				haveServer = true;
				break;
			}
		}
	}else{
		for(e = serverQueue.elements(); e.hasMoreElements();){
		serverTemp = (Server)e.nextElement();
			
			if(serverTemp.IsAuthOrg(orgID)) System.out.println("IsAuthOrg");
			if(serverTemp.IsAuthInsurance(insuranceID)) System.out.println("IsAuthInsurance");
			haveServer = true;//temp for test
			if(serverTemp.IsAuthOrg(orgID) && serverTemp.IsAuthInsurance(insuranceID)){
				haveServer = true;
				System.out.println("haveServer");
				break;
			}
		}
	}


%>



<%

    if(mb.GetServerCount()<=0 || !haveServer ){  //û�к˱�������
    if(!haveServer) System.out.println("have no Server");
    if(mb.GetServerCount()<=0) System.out.println("mb.GetServerCount()<=0");
     https.setAttribute("myName", user);
     https.setAttribute("subject", subject);
  %>
    <jsp:forward page="Reminder.jsp"/>
  <%}



    /*try
    {
        cb.setFormPara(Const.CUSTOMER_LOGIN,FormPara);
        Result = cb.getRetValueArra();
        sessionId = cb.ProcessLogin(Result,user,sessionIdNew);
    }
    catch(NormalException e)
    {
         throw NormalExceptionHandler.Handle(e);
    }catch(Throwable eb){
      eb.printStackTrace();
    }*/

	request.setAttribute("sub",subject);

    if(mb.IsClientLogged(user)){
        //NormalException e1 = new NormalException("���Ѿ���¼!");
        //throw NormalExceptionHandler.Handle(e1);
	%>

	<jsp:forward page="ClientChat.jsp?refresh=1"/>

	<%
	}else{
		//mb.ClientLogin(user, "", "",subject);//�û���¼����Ϊ���û��������������֣����⣩

		mb.ClientLogin(user, orgID, insuranceID, subject);//�û���¼����Ϊ���û��������������֣����⣩
		System.out.println("subject is: " + subject);

  %>
  <jsp:forward page="ClientChat.jsp"/>
  <%}%>


