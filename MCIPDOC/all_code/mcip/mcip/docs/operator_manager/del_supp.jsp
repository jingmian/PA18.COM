<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>

<jsp:useBean id="obj_user"  scope="session" class="beans.Zuserbean"/>
<%
 	String info[][]=null;
	String formpara[]=new String[1];
	int i=0;
	int no=Integer.parseInt(request.getParameter("select"));
 	String infosupp[][]=obj_user.getRetValueArra();

	
%>

<form method="POST" name="form55" action="subm_delsupp.jsp">

    <input type="hidden" name="supp_no" value="<%=Objects.getValue(no,"c_supp_no",infosupp)%>">
        ɾ��������Ա��<br>
        <br>
    <table border="1" cellspacing="0" cellpadding="0" bgcolor="#DFF9F3" class="td" width="85%" align="center">
       <tr bgcolor="#9DEEDE"> 
          <td  height=20 width="60%" align="center"> ������Ա��Ϣ </td>
          <td  height=20 width="25%" align="center"> ������Ա�������� </td>
	    </tr>
		 <tr> 
         <td valign="top" width="60%" height="155"> 
             <br>
				 <p align="left"> ��&nbsp;&nbsp;&nbsp;&nbsp;���� 
					 <%=Objects.getValue(no,"c_emp_nme",infosupp)%>
				</p>
            <p align="left"> �ʼ���ַ��
					<%=Objects.getValue(no,"c_emp_email",infosupp)%>
            </p>
            <p align="left">����������
                <%=Objects.getValue(no,"c_dpt_cnm",infosupp)%>
           </p>
			</td>
         <td valign="top" width="25%" height="155"> 
              <br>
				<%	String type=Objects.getValue(no,"c_emp_type",infosupp);
					if( (type.substring(0,1)).equals("1") )out.println("<p>��Ա����</p>");
					if( (type.substring(1,2)).equals("1") )out.println("<p>��˱���</p>");
					if( (type.substring(2,3)).equals("1") )out.println("<p>�͵�����</p>");
 					if( (type.substring(3,4)).equals("1") )out.println("<p>��������</p>");
				%>
              <p>&nbsp; </p>
      
       	</td>
		</tr>
		<tr> 
			<td valign="top" height="4" colspan="2" align="center"> 
          <input type="submit" value="�ύ" name="submitname">
			</td>
		</tr>
	</table>
</form>

<%@ include file="public/bottom.jsp" %>
