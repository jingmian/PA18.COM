<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>


<SCRIPT LANGUAGE="JavaScript" SRC="../check.js"></SCRIPT>

<form method="POST" name="form55" action="subm_page.jsp" onsubmit="return(
ValidNull(C_PAGE_TITLE,false) &&
ValidNull(C_FILE_ENM,false) 
);">

    <input type="hidden" name="subm" value="����/add">
        ����������Ա��<br>
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
					 <input type="text" name="C_PAGE_TITLE" value="" size="30" maxlength="60">
				</p>
            <p align="left"> �ʼ���ַ��
					<input maxlength="60" name="C_FILE_ENM" value="" size="30">
            </p>
            <p align="left">����������
                <select name="select">
                  <option selected>��ѡ��</option>
                </select>
            </p>
			</td>
         <td valign="top" width="25%" height="155"> 
              <br>
				  <p> 
                <input type="checkbox" name="checkbox" value="checkbox">
                ��Ա����</p>
              <p> 
                <input type="checkbox" name="checkbox2" value="checkbox">
                ��˱��� </p>
              <p> 
                <input type="checkbox" name="checkbox3" value="checkbox">
                �͵����� </p>
              <p> 
                <input type="checkbox" name="checkbox4" value="checkbox">
                �������� </p>
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
