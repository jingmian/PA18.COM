<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp"%>
<SCRIPT LANGUAGE="JavaScript" SRC="../check.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="../art_open.js"></SCRIPT>
<jsp:useBean id="bb"  scope="session" class="beans.BusinessManagerBean"/>
<jsp:setProperty name="bb" property="*"/>
<%
// ********************** �Զ��庯�� ********************** //
/*
public boolean isAuthOrg(String[] orgs,String clientOrg){
	boolean isSucc = false;
	for(int i = 0 ; i < orgs.length; i++){
		if(orgs[i] != null){
			String a = orgs[i];
			if( clientOrg.length >= a.length && clientOrg.substring(a.length).equals(a) ){
				isSucc = true;		
				break;
			}
		}
	}
	return isSucc;
}

public boolean isAuthInsurance(String[] insurances,String clientInsur){
	boolean isSucc = false;
	for(int i = 0; i<insurances.length; i++){
		if(insurances[i] != null){
			if(insurances[i].equals(clientInsur)){
				isSucc = true;
				break;
			}
		}
	}
	return isSucc;
}
*/

// ****************************************************** //



//********* Added by Liuxy on 2001-4-12 ***********//
	 MessageBean mb = MessageBean.instance;

/*
	 int index_opr_cde = Objects.getColNum("C_OPR_CDE",Result);   //�������ʺ�
     int index_dpt_cde = Objects.getColNum("C_DPT_CDE",Result);   //�����߲���
	 //index_func_cde   = Objects.getColNum("C_FUNC_CDE",Result);  //���ܱ���
	 int index_func_cnm = Objects.getColNum("C_FUNC_CNM",Result);//��������
	 int index_emp_cde = Objects.getColNum("C_EMP_CDE",Result);//����Ա��˾Ա�����
	 int index_acredt_cde = Objects.getColNum("C_ACREDT_CDE",Result);//��Ȩ���ʺ�
	 int index_sys_admin = Objects.getColNum("C_SYS_ADMIN",Result);//�����û���־

	 String c_opr_cde=Result[1][index_opr_cde];
	 String c_func_cde[]=new String[Result.length-1];

	 for (int i=1;i<Result.length;i++)
	 {
		if (Result[i][index_func_cde]!=null)
			c_func_cde[i-1]=Result[i][index_func_cde];
	 }
*/
     String myName= sessionuser.getuserId(Locate);
	 String retArra[][] =null;
	 String[] authOrgs = null;
	 String[] authInsurances = null;
	 try{
	    String paras[] = {sessionuser.getemployeCode(Locate)};
		bb.setFormPara(BConst.GET_CHATRIGHT,paras);
        retArra =bb.getRetValueArra(); 
	 }catch(NormalException e){	                 			     
	 	               if(NormalExceptionHandler.IsSevere(e)){
	 	                throw NormalExceptionHandler.Handle(e);
                       }else if(NormalExceptionHandler.IsWarning(e)){				        
					     //
                       }          
	 }
	 if(retArra!=null && retArra.length>1){
	   int c_dpt_cde = Objects.getColNum("C_DPT_CDE",retArra);
	   int c_insrnc_cde =  Objects.getColNum("c_insrnc_cde",retArra);
	   authOrgs = new String[retArra.length-1];
       authInsurances = new String[retArra.length-1];
       for(int p=1;p <retArra.length;p++)
	   for(int q=0; q<retArra[p].length;q++){
	      authOrgs[p-1] = retArra[p][c_dpt_cde];
          authInsurances[p-1]= retArra[p][c_insrnc_cde];
		 }
	 }
     //server= new Server(myName,authInsurances,authOrgs);
     mb.ServerLogin(myName,authInsurances,authOrgs);
	 

	 //************ Liuxy added on 2001.04.18 ***************//
	 
	 //��δ��뽫�˱��˵Ļ��������ֺϲ�
	 
	 String serverOrgs = "";
	 String serverInsurances = "";
	 for(int i = 0;authOrgs != null && i<authOrgs.length;i++){
		if(authOrgs != null){
			serverOrgs = serverOrgs + ";" + authOrgs[i];
		}
	 }

	 for(int i = 0;authInsurances != null && i<authInsurances.length;i++){
		if(authInsurances[i] != null){
			serverInsurances = serverInsurances + ";" + authInsurances[i];
		}
		
	 }
	 

	 // ********************************************* //

//***********************************************//
   //MessageBean mb = MessageBean.instance;
   Server server;
   Client client;
   Vector queue;
   //String myName= sessionuser.getuserId(Locate);
 %>
<p>&nbsp;<%//=serverOrgs%>
<%//=serverInsurances%>

<%
  server = mb.GetServer(myName);
  Queue clients = server.GetClientQueue();
  //out.println("client count:"+clients.GetMemberCount());
  if(clients.GetMemberCount()>0){
     queue = clients.GetMembers();
     for(int i= 0 ; i< queue.size(); i++){
       client= (Client)queue.get(i); %>
        <script lanaguage=javaScript>
         // alert("<%=client.GetClientName()%>"+"is here");
          js_openMeetingSmallPageI("../meeting/ServerChat.jsp?transfter=11&serverName=<%=myName%>&clientName=<%=client.GetClientName()%>&subject=<%=client.GetSubject()%>","<%=client.GetClientName()%>");
        </script>
     <%}
     server.RemoveAllClients();
  }


  queue = mb.GetClientsNotConnected();
  
  Vector nosubClients = new Vector();

  if(queue.size()>0){
%>
<div align="center"> 
<p align="center"><font color="#0066CC"><span class="unnamed3">�����⽻̸�ͻ��ȴ�����</span></font></p>

<table width="90%" border="1" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6" align="center">
  <tr bgcolor="#9DEEDE">
	  <td>�ͻ�</td>
      <td>����</td>
	  <td>����</td>
      <td>����</td>
      <td>��¼ʱ��</td>
  </tr>
  <% for(int i= 0 ; i< queue.size(); i++){
       client= (Client)queue.get(i);

	   String clientOrg = client.GetOrgName(); //�ͻ�����
	   String clientInsurance = client.GetInsurance(); //�ͻ�����
	   String subject = client.GetSubject();
	   
	   if(subject.equals("Have no subject")){ //�����⽻̸
			nosubClients.add(client);
			continue;
	   }

	  //�жϿͻ��Ļ����������Ƿ���˱��˵Ļ���������ƥ��
	  // if(serverOrgs.indexOf(clientOrg)>0 && serverInsurance.indexOf(clientInsurance)>0){ 
	  //if(server.IsAuthOrg(clientOrg) && server.IsAuthInsurance(clientInsurance) ){ 
	  //if(server.IsAuthOrg(clientOrg) && server.IsAuthInsurance(clientInsurance)){
	  if(true){//temp for test
     %>
     <script language=JavaScript>
      alert("<%=client.GetClientName()%>"+"�ȴ��ش�!");
     </script>
  <tr>
   <td>
	 <a href="../meeting/ServerChat.jsp?accept=11&serverName=<%=myName%>&clientName=<%=client.GetClientName()%>&subject=<%=client.GetSubject()%>" onclick="return OpenChat('<%=myName%>','<%=client.GetClientName()%>',this.href)" ><%=client.GetClientName()%></a>
   </td>
   <td>&nbsp;<%=client.GetOrgName()%></td>
   <td>&nbsp;<%=client.GetInsurance()%></td>
   <td>&nbsp;<%=client.GetSubject()%></td>
   <td><%=client.GetLoginDate()%></td>
  </tr>
  <%
	   }//end if �жϿͻ��Ļ���������

   }//end for
   
  %>
</table>

<p align="center"><font color="#0066CC"><span class="unnamed3">�����⽻̸�ͻ��ȴ�����</span></font></p>
<table width="90%" border="1" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6" align="center">
  <tr bgcolor="#9DEEDE">
	  <td>�ͻ�</td>
      <td>����</td>
      <td>��¼ʱ��</td>
  </tr>
<% for(int i= 0 ; i< nosubClients.size(); i++){ //begin for1
      client= (Client)nosubClients.get(i);
      String clientOrg = client.GetOrgName(); //�ͻ�����
//	  if(server.IsAuthOrg(clientOrg)){//begin if �жϿͻ��Ƿ����Լ��Ļ���ƥ��
if(true){//temp for test
%>
  <script language=JavaScript>
      alert("<%=client.GetClientName()%>"+"�ȴ��ش�!");
  </script>

<tr>
<td>
<a href="../meeting/ServerChat.jsp?accept=11&serverName=<%=myName%>&clientName=<%=client.GetClientName()%>&subject=<%=client.GetSubject()%>" onclick="return OpenChat('<%=myName%>','<%=client.GetClientName()%>',this.href)" ><%=client.GetClientName()%></a>	
</td>
<td>&nbsp;<%=client.GetOrgName()%></td>
<td><%=client.GetLoginDate()%></td>
</tr>

<%
	  }// end if �жϿͻ��Ƿ����Լ��Ļ���ƥ��
} // end for1 
%>
</table>


</div>
<%}
  queue = mb.GetServersFree();
  if(queue.size()>0){
%>
<div align="center">
<p align="center"><font color="#0066CC"><span class="unnamed3">���к˱����б�</span></font></p>
<table width="90%" border="1" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6" align="center">
    <tr bgcolor="#9DEEDE"><td>�˱���</td>
        <td>��¼ʱ��</td>
    </tr>
    <% for(int i=0 ;i< queue.size() ;i++){
        server = (Server)(queue.get(i));
    %>
    <tr>
       <td><%=server.GetServerName()%></td>
       <td><%=server.GetLoginDate()%></td>
    </tr>
    <%}%>
</table>
</div>
<%}%>
<div align="center">
<p align="center"><font color="#0066CC"><span class="unnamed3">����</span></font></P>
<table width="90%" border="1" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6" align="center">
<tr bgcolor="#9DEEDE"><td>�ͻ�_�˱���</td>
    <td>����</td>
</tr>
<%
   Hashtable sessions = mb.GetAllSessions();
   if(sessions!=null){
      if(sessions.size()>0){
         Enumeration elements = sessions.elements();
         while(elements.hasMoreElements()){
           MsgSession theSession = (MsgSession)elements.nextElement();%>
           <tr><td>&nbsp;<%=theSession.GetSessionId()%></td>
               <td>&nbsp;<%=(theSession.GetClient()).GetSubject()%></td>
           </tr>    
         <%}
      }
   }
%>
</table>
</div>
<%@ include file="public/bottom.jsp" %>
<script language=JavaScript>
function OpenChat(serverName,clientName,url){
  //if(confirm(clientName +"�����⣡"+"\n"+"����ش���")){
     //alert(url);
     js_openMeetingSmallPageI(url,clientName);
 // }
  return false;
}
</script>








