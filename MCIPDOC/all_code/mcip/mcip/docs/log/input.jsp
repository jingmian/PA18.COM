<%@ page  import="ken.*" contentType="text/html;charset=gb2312"%>
<jsp:useBean id="LogOperator" scope="session" class="ken.LogOperator" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE> �������� </TITLE>
</HEAD>

<BODY>

<form name="form1" method="post" action="receive.jsp">
  <table width="94%" border="1">
    <tr> 
      <td width="13%">��������</td>
      <td colspan="2" width="87%"> 
        <textarea name="content" cols="85"></textarea>
      </td>
    </tr>
    <tr> 
      <td width="13%" height="21">���߶���</td>
      <td colspan="2" width="87%" height="21">
        <input type="checkbox" name="checkbox1" value="0">
        1���û�
        <input type="checkbox" name="checkbox2" value="0">
        2���û� 
        <input type="checkbox" name="checkbox3" value="0">
        3���û�</td>
    </tr>
    <tr> 
      <td colspan="3"> 
        <div align="center">
          <input type="submit" name="Submit" value="ȷ��">
          <input type="reset" name="Submit2" value="����">
        </div>
      </td>
    </tr>
  </table>
</form>
</BODY>
</HTML>
