<%@ include file="public/up.jsp" %>
<%@ include file="public/left.jsp" %>
<SCRIPT LANGUAGE="JavaScript" SRC="../check.js"></SCRIPT>
<SCRIPT LANGUAGE="JavaScript" SRC="../tool.js"></SCRIPT>

<div align="center"><font color="#0066CC" class="unnamed3">�� ̨ �� �� ע ��</font><br><br></div>
<form action="RegisterNext.jsp" method="post" onsubmit="return(
ValidNull(UserID,false) &&
ValidNull(UserPassword,false) &&
ValidNull(ConfirmPassword,false)&&
ValidNull(Code)&&
ValidUserPwd(UserID,'0') &&
ValidUserPwd(UserPassword,'1') &&
ValidSame(UserPassword,ConfirmPassword)) ;">
 <table width="100%" border="1" cellspacing="0" cellpadding="0" align="center" class="td" bordercolor="#009999" bordercolorlight="#E6E6E6">
	<tr>
		<td width="14%"><font color="#ff0000">�����ͻ�����¼�룺</font></td>
		<td width="52%" align="right">
		<font color="#FF0000">��*����Ŀ������д</font>
		</td>
	</tr>
	<tr>
		<td width="66%" colspan="2"><font color="#3300FF">������Ѿ���www.pa18.com �û����������ʹ��www.pa18.com���û�����?
					 <br><input type="radio" name="RegisterType" value="1"> ��
										<input type="radio" name="RegisterType" value="0" checked>��
												��������������ԭ�û��������룬�Ա��顣
				</font>
		</td>
	</tr>
	<tr>
		<td width="14%">�û�����</td>
		<td width="52%"><input type="text" name="UserID" size="18" maxlength="16">* (����Ϊ3��16λ,��Сд��ĸ,�������(<font color="#FF0000">����λΪСд��ĸ��2</font>)</td>
	</tr>
	<tr>
		<td width="14%">���������룺</td>
		<td width="52%"><input type="password" maxlength="15" name="UserPassword" size="18">* (����ֻ��Ϊ6��15λ,��Сд��ĸ,�������)</td>
	</tr>
	<tr>
		<td width="14%">��֤���룺</td>
		<td width="52%"><input type="password" maxlength="15" name="ConfirmPassword" size="18">*</td>
	</tr>
	<tr>
		<td width="14%">
				���룺
		</td>
		<td width="52%"><input type="text" name="Code" size="18" maxlenth="12">*<input type="radio" value="AGENT" name="codeType" checked>�����˱���<input type="radio" value="OPEN_COVER"  name="codeType">ԤԼ�ͻ�����</td>
	</tr>
	<tr>
		<td width="66%" colspan="2" align="center">
				<input type="submit" value="��һ��>>">
		</td>
	</tr>
</table>
</form>
<%@ include file="public/bottom.jsp" %>
