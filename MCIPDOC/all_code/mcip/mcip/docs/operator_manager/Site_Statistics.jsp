
<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>
<SCRIPT LANGUAGE="JavaScript" SRC="check.js"></SCRIPT>
<jsp:useBean id="bb"  scope="request" class="beans.BusinessManagerBean"/>
<jsp:setProperty name="bb" property="*"/>
<%

    String [][] retValueArra = null;
    int rowCount =0 ;
    String[] argss={""};
    try
    {
        bb.setFormPara(BConst.QUERY_EVENT_TYPELIST,argss);
        retValueArra = bb.getRetValueArra();
        rowCount = retValueArra.length;
    }
    catch(NormalException e)
    {
      if(!(e.getErrCode().equalsIgnoreCase("100000002")))
 	    throw NormalExceptionHandler.Handle(e);
      rowCount =0;
    }
     

%>

<div>
    <div align="center">
          <div align="center"><font color="#0066CC"><span class="unnamed3">��վ״̬ͳ�Ʊ������ѡ��</span></font><br>
            <br>
          </div>
<form method="post" action="Site_Statistics_List.jsp" name="busness statistics  classfy select"
    onSubmit="return checkForm(this)" >
  <input type=hidden name="fromdate">
  <input type=hidden name="todate">
  <table width="90%" border="1" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6">
    <tr bgcolor="#9DEEDE"> 
      <td height="42" width="46%"> 
        <center>
          ͳ��ʱ��� 
        </center>
      </td>
      <td height="42" width="54%"> 
        <center>
          ͳ������ѡ�� 
        </center>
      </td>
    </tr>
    <tr bgcolor="#DFF9F3"> 
      <td align="left" width="46%">��ʼʱ�䣺 
        <input type="text" name="From_Year"   size="5" maxlength="4" value="2001">
        �� 
        <input type="text" name="From_Month"  size="3" maxlength="2" value="01">
        �� 
        <input type="text" name="From_Day"  size="3" maxlength="2" value="01">
        ��</td>
      <td width="54%"> 
        <input type="radio" name="event"  value="1" checked>
        ��һ�¼� 
        <select name="c_event_cde">
          <option selected value="">��ѡ��</option>
          <% if(rowCount>0){
             for(int i=1; i< rowCount ;i++){%>
            <option value="<%=retValueArra[i][0]%>"> <%=retValueArra[i][1]%>
          <%}}
          %>

        </select>
        </select>
      </td>
    </tr>
    <tr bgcolor="#DFF9F3"> 
      <td width="46%">��ֹʱ�䣺 
        <input type="text" name="To_Year"  size="5" maxlength="4" value="2001">
        �� 
        <input type="text" name="To_Month" size="3" maxlength="2" value="12">
        �� 
        <input type="text" name="To_Day" size="3" maxlength="2" value="31">
        ��</td>
      <td width="54%" height="27">
        <input type="radio" name="event" value="0">
        ȫѡ�������¼��� </td>
    </tr>
  </table>

  <p><center>

    <input type="submit" name="Submit" value="�ύ">

    <input type="reset" name="Reset" value="����"></center>

  </p>

</form>
</div>
<%@ include file="public/bottom.jsp" %>

  <script language=JavaScript>
  function checkForm(theForm){
    if(!ValidYear(theForm.From_Year)){
             return false;
    }
    if(!ValidMonth(theForm.From_Month)){
             return false;
    }
    if(!ValidDay(theForm.From_Day)){
             return false;
    }

    if(!ValidYear(theForm.To_Year)){
             return false;
    }
    if(!ValidMonth(theForm.To_Month)){
             return false;
    }
    if(!ValidDay(theForm.To_Day)){
             return false;
    }
    fromdate = theForm.From_Year.value + "-" + theForm.From_Month.value  + "-" + theForm.From_Day.value ;
    theForm.fromdate.value = fromdate;
    if(!ValidDate(theForm.fromdate)){
       return false;
      }
    todate = theForm.To_Year.value + "-" + theForm.To_Month.value + "-" + theForm.To_Day.value  ;
    theForm.todate.value = todate;
	 
	/*window.alert(fromdate);
	window.alert(todate);*/
   if(!ValidDate(theForm.todate)){
       return false;
      }

      if(!checkIsnull(theForm.event, theForm.c_event_cde)){
       return false;
      }
   return true;
  }

  function checkIsnull(fieldOption,fieldply)
  {

     //var valuestr = fieldply.selectevalue;
     var index =0;
     for(i=0 ; i< fieldply.options.length; i++)
     {
         if(fieldply.options[i].selected){
             index =i;
             break;
         }
     }
     if(fieldOption[0].checked && index ==0)
     {
        alert("��ѡ���¼�");
        return false;
     }

     return true;
  }
  </script>
