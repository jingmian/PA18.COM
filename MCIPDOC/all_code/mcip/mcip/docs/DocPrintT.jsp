<%@ page language="java"%>
<%@ page import="beans.*"%>
<%@ page import="java.util.*"%>
<%@ page contentType= "text/html; charset=gb2312"%>
<html>
<body>
<OBJECT ID ="AXprint"  WIDTH=0 HEIGHT= 0 f
    CLASSID ="CLSID:FF2426E6-7C68-11D5-8533-0000E84438A5"
    CODEBASE = "http://10.16.102.1:85/MDocPrinter.ocx">
</OBJECT>
<form name="temp">
				<textarea name="tt" rows="5" cols="70">    1 91955018600020101000050 1018600020101000028                     1201        �й�ƽ�����չ�˾�����ֹ�˾                                                                          admin     ����Ա              zs2009_en                                                                                                                                                                                                                                                                                                                                                     zs2009_cn                                                                                                                                                                                                                   B01 2001091400000020010914000000200209141200002001091410514103��Ԫ                USD   Ԫ                           0              119900     .0005               59.95                   0               59.9503��Ԫ                USD   Ԫ        admin       ����Ա              2000010006  ����                2001091400000020010914105141����������                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ���������������ڴ��23��ƽ������ʮ���                                                                                                                                                                  1000320987-12345678                           1101      ���ȣ�С�󡢴��ס����ס��󶹵ȣ�                                                                    12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
123456789012345678901234567890123456789012345678901234567890
12345678901234567890123456789012345678901234567890123456789012345678901234567890
12345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        kkflasdgqoieriotoi                                chuan                                             SEP. 14,2001        auf                                     01���ʺ���            dalian                                  09 ���乤�߲���                                                                                                                                                                                            1017      1001                                              201         �й�ƽ�����չɷ����޹�˾�����ֹ�˾
���������������ڴ��23��ƽ������15��
TEL:010-66213388
FAX:010-66210447                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          119900     .0005               59.95����                                                                                                COVERING MARINE RISKS AS PER INSTITUTE CARGO CLAUSES (C) DATED 1/1/1982.
SUBJECT TO TERMS AND CONDITIONS IN "YEAR 2000 EXCLUSION CLAUSES FOR PROPERTY INSURANCE"
qitafujiaxiaj                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 1U.S. DOLLARS                            </textarea>
			</form>
			<script language="JavaScript">
			//BuildPolicy();
			alert("OCX initialized");
			alert("iSqlNum:"+AXprint.iSqlNum);
			AXprint.iRetCode = 0;
			AXprint.sRetValue = temp.tt.value;
			alert("textarea length:"+temp.tt.value.length);
			alert(AXprint.sRetValue);
			var r = AXprint.RetResult(AXprint.iSqlNum);
			alert("save result:"+r);
			AXprint.Preview();
			</script>

<form name="PrintDocForm" action="" method="post">
<input type="button" name="b_down" value="download FMT" onclick="PolicyBuild();">
<input type="text" name="combinedSqlStr" value="">
</form>
</body>
</html>
<script language="JavaScript">
function changeAction(url){
	PrintDocForm.action=url;
	return;
}
function download(){
	if (fmtBuild()){
		changeAction("DocPrint.jsp");
		PrintDocForm.submit();
	}
}
function fmtBuild(){
	var resultNum;
	var sqlStrSet ="";
	var res = AXprint.SetDnDptCde('201');
	if (res != 0){
		return false;
	}
	resultNum = AXprint.iSqlNum;
	for (i = 0;i<resultNum;i++){
		AXprint.GetSqlStr(i);
		sqlStrSet +=AXprint.sSqlStr + "|";
	}
	PrintDocForm.combinedSqlStr.value= sqlStrSet;
	return true;
}

function PolicyBuild(){
	AXprint.BuildCondStr("0","1018600020101000028","zs2009_en","2001-09-14","B01","admin","C");
	alert(AXprint.iCondLen);
	alert(AXprint.sCondStr);
	PrintDocForm.combinedSqlStr.value= AXprint.sCondStr;
	PrintDocForm.submit();
	return true;
}

function saveFormat(){
	AXprint.iRetCode = 0;
	AXprint.sRetValue = "aaaaaaa";
	AXprint.RetDnResult(0);
}
</script>
