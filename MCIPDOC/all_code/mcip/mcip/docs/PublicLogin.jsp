<html>
<head>
<title>ƽ�����˱���</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link REL=STYLESHEET TITLE=text TYPE=text/css href=index.css>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0">

<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<%@ page language="java" import="java.beans.Beans,java.lang.*,java.io.*,java.util.*,exceptions.*,constant.*,utility.*,beans.*" errorPage="ErrOut.jsp" contentType= "text/html; charset=gb2312"%>

<%
System.out.println("You are in publicLogin.jsp");
   String[] MenuRef = MenuMake.MenuRef;
      //{"MENU_MEMBER","MENU_CONSULTANT","MENU_INSURANCE","MENU_REPORT","MENU_INQUIRE"};
   String[][] ParaPub = 
 {{"images/m-member.gif","","",""},{"","","",""},{"images/ins_ins.gif","images/tblca.gif","images/art_cabotage.gif",""},{"images/rep_rep.gif","images/balc.gif","images/tblc.gif",""},{"images/m-inquire.gif","","",""},{"","","",""}
 ,{"images/m-inquire.gif","","",""},{"images/m-inquire.gif","","",""},{"images/m-member.gif","","",""}};   
//images/con_con.gif is evaluate of consultant
    String MenuRefStr = (String)request.getAttribute("MENU_REF");
    int i = 0;
    
    for(i=0;i<MenuRef.length;i++)
    {
         if(MenuRefStr.equals(MenuRef[i]))
            break;
    }
%>

<table width="778" border="0" cellspacing="0" cellpadding="0" height="64">
  <tr> 
    <td width="167"><img src="images/ntoplogo.gif" width="238" height="66"></td>
    <td width="611">
      <table width="540" border="0" cellspacing="0" cellpadding="0" height="64">
        <tr> 
          <td height="46"><img src="images/topright.gif" width="540" height="46"></td>
        </tr>
        <tr>
          <td><script language="JavaScript"><%out.println(MenuMake.TopMenu(""));%></script></td>
        </tr>
      </table>
    </td>
  </tr>
</table>

<%
/*
<table width="778" border="0" cellspacing="0" cellpadding="0" height="64">
  <tr> 
    <td width="167"><img src="images/ntoplogo.gif" width="238" height="64"></td>
    <td width="611">
      <table width="540" border="0" cellspacing="0" cellpadding="0" height="64">
        <tr bgcolor="315E99"> 
          <td height="44">
            <div align="right"><img src="images/toplogo.gif" width="148" height="46"></div>
          </td>
        </tr>
        <tr>
          <td><script language="JavaScript"><%out.println(MenuMake.TopMenu(""));% ></script></td>
        </tr>
      </table>
    </td>
  </tr>
</table>
*/
%>

<table width="778" border="0" cellspacing="0" cellpadding="0" height="279">
  <tr> 
    <td width="165" height="288" valign="top">
<%if(!(ParaPub[i][0].equals(""))){%>
<img src="<%=ParaPub[i][0]%>" width="190" height="54"><br>
<%}
if(i == 0 || i == 8)//member
{
%>
<img src="images/m-change1.gif" width="101" height="17" alt="��Ա����" border="0"><br>
<img src="images/m-change2.gif" width="101" height="17" alt="�޸�����" border="0"><br>
<img src='images/PlyTotal.gif' width='101' height='17' alt='ҵ��ͳ��' border='0'><br>
<img src="images/m_open.gif" width="101" height="17" alt="ԤԼ����" border="0"><br>
<img src="images/baodpg-s.gif" width="101" height="17" alt="��������" border="0"><br>
<img src="images/zaixgt-s.gif" width="101" height="17" alt="���߹�ͨ" border="0"><br>
<img src="images/m_pay.gif" width="101" height="17" alt="֧������" border="0">
<%}
if(i == 4 || i==6 || i==7)//Inquire
{//maybe to dispaly LeftMenuInquire with no link
%>
<img src='images/m-tou.gif' width='101' height='17' alt='Ͷ����ѯ' border='0'><br>
<img src='images/m-jys.gif' width='101' height='17' alt='�������ѯ' border='0'><br>
<img src='images/m-bao.gif' width='101' height='17' alt='������ѯ' border='0'><br>
<img src='images/pidancx-s.gif' width='101' height='17' alt='������ѯ' border='0'><br>
<img src='images/pigaicx-s.gif' width='134' height='17' alt='�������뵥��ѯ' border='0'><br>
<img src='images/m-baoan.gif' width='134' height='17' alt='������ѯ' border='0'><br>
<img src='images/m-lipei.gif' width='134' height='17' alt='�����ѯ' border='0'>
<%}

if(i == 5)//evaluate
{%>
<script language="JavaScript" src="lmenu_consul.js"></script>
<%
}else
{
%>
<br>��<a href="index.jsp?Logout=0"><img src="images/hback.gif" width="80" height="50" alt="������ҳ" border="0"></a>
<%}%>
    </td>
    <td width="613"  valign="top">
<%
if(i > 0)
{

   if(!(ParaPub[i][1].equals(""))){%>
    <br><br>
<img src="<%=ParaPub[i][1]%>" width="99" height="21">
   <%}
   if(!(ParaPub[i][2].equals(""))){%>
       
<img src="<%=ParaPub[i][2]%>" width="382" height="38">
<%   }
}%>
<table border="0"
    width="90%" cellpadding="4">
      <tr>
<td width="5%">����</td>
        <td>����
<p>������Ϊ��վ�Ļ�Ա�û����������ܵ�ƽ�����˱�����վ��һ�й��ܣ��������Ѳ��㡢����Ͷ�������ϱ������ۺϲ�ѯ�ȣ��ڱ��Ѳ��㹦���У��������˽�������������䷽ʽ�ı�����Ϣ��ͬʱ��������Ͷ�����һʱ���ڲ�ѯ���б��������ڱ������⹦��������Ե�����ǰ��������ı�����ֱ�ӽ������ⱨ���ͽ����ѯ��һ��ԭ�����뾭����δ�ͳͨ�ŷ�ʽ����Ĺ���������ͨ�����粻�������������֮�࣬����Ч�ʺͰ�ȫ��Ҳ�����ߡ�

<p>��������������ǻ�Ա������롰<a href="register.jsp" target="_blank"><font color="#ff0000">��Աע��</font></a>����Ŀ��</p>

<FORM METHOD="POST" ACTION="ProcessLogin.jsp"  onSubMit="return (ValidNull(USER,false) && ValidNull(PSWD,false));" >
<table width="80%" bgcolor="#F6F6F6" cellpadding="4" >        
	<tr> 
          <td> ��<font color="#ff0000">��</font>�����¼��</td>
        </tr>
        <tr> 
          <td>�û����� 

            <input type="text" name="USER" size="16" maxlength="16">*
          </td>
        </tr>
        <tr> 
          <td>��&nbsp;&nbsp;�룺
            <input type="password" name="PSWD" size="16" maxlength="16">*
            <input type="submit" name="Submit2" value="�ύ">
          </td>
        </tr>
</table>     
            <input type="hidden" name="MENU_REF" value="<%=MenuRefStr%>">  
</form>
</td>
      </tr>
    </table>
      
 </td>
  </tr>
</table>

<%@ include file="public/PublicBottom.html" %>      

</body>
</html>
