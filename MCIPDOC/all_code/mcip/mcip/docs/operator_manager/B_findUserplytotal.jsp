<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>

<SCRIPT LANGUAGE="JavaScript" SRC="../check.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="../tool.js"></SCRIPT>
 <div align="center"><font color="#0066CC" class="unnamed3">���ϻ�Աҵ����ͳ��</font><br>
</div>
<form name="form2" action="B_Userplytotal.jsp" onsubmit="return(ValidNull(form2.userId,false) && ValidYear(form2.year) && ValidMonth(form2.month) );">
        
  <table width="85%" border="1" cellspacing="0" cellpadding="0" align="center" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6">
    <tr class="unnamed2" bgcolor="#9DEEDE"> 
      <td height="25" colspan="4"> �������ѯ������</td>
    </tr>
    <tr> 
      <td bgcolor="#DFF9F3" width="4%" height="16"> �û����� 
        <input type="text" name="userId" size="12" value="" maxlength="12">
      </td>
    </tr>
    <tr> 
      <td bgcolor="#DFF9F3" width="4%" height="100"> 
        <p>ͳ�Ƶ�ҵ�����ͣ�</p>
        <blockquote> 
		<p> 
		  <input type="checkbox" name="type0" value="B01">
		  ���ڻ��� 
		  <input type="checkbox" name="type1" value="B02">
		  ���ڻ��� </p>
		<p> 
        <input type="checkbox" name="type2" value="B23">
         ������· 
        <input type="checkbox" name="type3" value="B33">
         ���ڹ�· 
        <input type="checkbox" name="type4" value="B13">
         ����ˮ· 
        <input type="checkbox" name="type5" value="B43">
			���ں���
		</p>
        </blockquote>
        </td>
    </tr>
    <tr>
      <td bgcolor="#DFF9F3" width="4%" height="28"> 
		<p> ͳ�Ƶ�ʱ��
		  <input type="text" name="year" size="4" maxlength="4" value="<%=new java.util.GregorianCalendar().get(java.util.GregorianCalendar.YEAR)%>">
		  �� 
		  <input type="text" name="month" size="2" maxlength="2" value="<%= new java.util.GregorianCalendar().get(java.util.GregorianCalendar.MONTH)+1%>">
		  �� </p>
        </td>
    </tr>
  </table>
  <p align="center"> 
     <input type="submit" name="Submit" value="��ѯ" onClick="">
  </p>
 </form>
<%@ include file="public/bottom.jsp" %>



