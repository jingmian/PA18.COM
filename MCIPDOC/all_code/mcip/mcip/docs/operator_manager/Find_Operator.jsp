
<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>
<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<form name="form1" action="Operator_List.jsp" onSubmit="return checkForm(this)">
<div align="center">
        <div align="center">
          <div align="center">
            <div align="center">
              <div align="center"><font color="#0066CC"><span class="titel"><span class="unnamed3">��ѯ��̨����Ա</span></span></font><br>
                <br>
              </div>
              <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center" class="td">
                <tr> 
                  <td width="18%">
                    <div align="left"><input type="checkbox" name="oprCheck" value="1">����Ա�ʺţ�</div>
                  </td>
                  <td width="82%">
                    <input type="text" name="C_OPR_CDE">
                    <font color="#FF3300">**</font>�û�������Ϊ3��10λ��ֻ������ĸ��������� </td>
                </tr>
                <tr>
                  <td width="18%">
                    <div align="left"><input type="checkbox" name="empCheck" value="1">
                       Ա����ţ�</div>
                  </td>
                  <td width="82%"> 
                    <input type="text" name="C_EMP_CDE">
                    <font color="#FF3300">**</font> ����ĸ��������� </td>
                </tr>
                <tr> 
                  <td width="18%" height="28">&nbsp;</td>
                  <td width="82%" height="28" > 
                    <div align="center"><font color="#FF9999">��ע���� <font color="#FF3300">**</font> 
                      ��ѡ�������д��</font></div>
                  </td>
                </tr>
                <tr> 
                  <td colspan="2" height="50"> 
                    <div align="center"> 
                      <input type="submit" name="Submit" value="��ѯ">
                      <input type="submit" name="Submit2" value="����">
                    </div>
                  </td>
                </tr>
              </table>
            </div>
            </div>
          </div>
        </div>
  </form>      
 <%@ include file="public/bottom.jsp" %>       

<script language=JavaScript>
function checkForm(theForm){

  /*if(!theForm.oprCheck.checked && !theForm.empChecked){
     alert("Please check one to search!");
     return false;
  }*/
  if(theForm.oprCheck.checked){
     if( !ValidNull(theForm.C_OPR_CDE,false) || !ValidInvaKey(theForm.C_OPR_CDE)){
        theForm.C_OPR_CDE.focus();
        return false;
     }
  }
  if(theForm.empCheck.checked){
      if(!ValidNull(theForm.C_EMP_CDE,false) || !ValidInvaKey(theForm.C_EMP_CDE)){
        theForm.C_EMP_CDE.focus();
        return false;
      }
  }
  return true;
}
</script>
