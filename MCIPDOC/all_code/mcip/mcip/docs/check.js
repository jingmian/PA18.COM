
////////////////////////////////////////////////////////
// Author/change��ZhangJinQuan
// Function��For js check
// Create date��2000/9/15
// Update date��2000/9/18
////////////////////////////////////////////////////////

var MsgBufSize=50;
var Message = new Array(MsgBufSize);

Message[0]="����ֻ�ܰ�����ĸ�����֡�";
Message[1]="����ֻ�ܰ�������0-9��";
Message[2]="�������ڸ�ʽ����";
Message[3]="��������� 01 �� 12 ���·�ֵ��";
Message[4]="��������� 01 �� 31 ������ֵ��";
Message[5]="����û�� 31 �졣";
Message[6]="���겢������,����ֻ�� 28 �졣";
Message[7]="����ʱ���ʽ����";
Message[8]="��������� 01 �� 12 ��Сʱֵ��";
Message[9]="��ѡ��ʱ�������ʽ ȷ�� = Standard Time, ȡ�� = Military Time��";
Message[10]="�������� AM �� PM�� ";
Message[11]="����Ҫ���� military time ʱ���ʽ���� AM �� PM��";
Message[12]="��������� 00 �� 59 �ķ���ֵ��";
Message[13]="��������� 00 �� 59 ������ֵ��";
Message[14]="��*�ŵ�Ϊ��������,����Ϊ�ա�";
Message[15]="ʱ������ֵ����Ϊ�ա�";
Message[16]="ʱ�䳤��Ϊ6λ��";
Message[17]="���벻�ܰ�����-:=,&;`'\".*&^%$#@!~|\?<>{}[]() ���ַ���";
Message[18]="���벻��Ϊ0��";
Message[19]="���ֱ���Ϊ��ĸ;�����ַ�Ϊ��ĸ�����֡�";
Message[20]="����ͬʱΪ�ա�";
Message[21]="����ͬʱ���롣";
Message[22]="ɾ��,�Ƿ�ȷ��?";
Message[23]="�˲���������㡣";
Message[24]="������������벻��ͬ��";
Message[25]="�����¼��������--";

Message[26]="��Ʊ�ź��ᵥ�Ų���ͬʱ���롣";
Message[27]="��Ʊ�ź��ᵥ�Ų���ͬʱΪ�ա�";
Message[28]="��������� 00 �� 23 ��Сʱֵ��";
Message[29]="Email��ַ�������";
Message[30]="�绰������볤������Ϊ6λ��ֻ�������ֻ�-()���";
Message[31]="��ѡ��һ����ֻ����һ����������Ͷ�Ӧ�����䷽ʽ";

////////////////////////////////////////////////////////
Message[32]="���/���ʱ���Ϊ����";
Message[33]="������0~100������";
Message[34]="ֻ��Ϊʵ��";
Message[35]="�޸�Ͷ������Ҫѡ��Ͷ������";
Message[36]="��д����֪ͨ����Ҫѡ��OpenCoverЭ���";

Message[37]="�������λ����";
Message[38]="�������ڲ�������¼����������";

Message[39]="��ѯ��������Ҫѡ�������";
Message[40]="���ݴ���Э��Ͷ����Ҫѡ��Ͷ����Э��Э���";
Message[41]="������ѡ��һ��ѡ��";
Message[42]="���ʲ�����Ϊ��ֵ";
Message[43]="���ս��һ�㰴��Ʊ����110%ȷ��������д�ı��ս����˷�Ʊ����130%�����ڱ�ע����ע��ԭ��";
Message[44]="����Ԥ����Ҫѡ�񱣵���";
Message[45]="�û�������Ϊ3��16λ,��Сд��ĸ,�����������λΪСд��ĸ��\"2\"(��λΪ2�����Ϊ8λ����)";
Message[46]="���볤��ֻ��Ϊ6��16λ,��Сд��ĸ,�������";
Message[47]="���˸����ƺ�Ŀ�ĸ����Ʋ�����ͬ";
Message[48]= "�޸��������뵥��ѡ���������뵥��";
Message[49]= "����Ԥ����ѡ��������";
Message[50] ="���ı�����ѡ�񱣵���";
Message[51] = "���Ʊ�����ѡ�񱣵���";

////////////////////////////////////////////////////////
// ��֤���˸����ƺ�Ŀ�ĸ����Ʋ�����ͬ
////////////////////////////////////////////////////////
function ValidSamePort(field1,field2) {
		if (field1.value == field2.value){
				DspAlert(field1,Message[47]);
				return false;
		}
		return true;
}

///////////////////////////////////////////////////
//���ļ��,check for acceptorgnCust usr and pass
///////////////////////////////////////////////////////
function ValidUserPwd(field,flag)
{
		var valid = "abcdefghijklmnopqrstuvwxyz0123456789";
		var validprim = "abcdefghijklmnopqrstuvwxyz2";
		var validnum = "0123456789";
		var ok = "yes";
		var temp;
		var len = field.value.length;
		var msg = Message[45];
		if(flag=="1")//password
		{
			msg = Message[46];
		}
		if(flag =="0")//usr
		{
				temp = "" + field.value.substring(0, 1);
				if(validprim.indexOf(temp) == "-1" || len < 3 || len > 16 || (temp == "2" && len != 8))
				{
					DspAlert(field,msg);
					return false;
				}
				if (temp == "2"){
					for (var i=0;i<len;i++){
						temp = "" + field.value.substring(i,i+1);
						if (validnum.indexOf(temp) == "-1"){
							DspAlert(field,"��λΪ2�����ȫΪ����");
							return false;
						}
					}
				}


		}else//pwd
		{
			if(len<6 || len>16)
			{
					DspAlert(field,msg);
					return false;
		}
		}

		for (var i=0; i<len; i++)
		{
				temp = "" + field.value.substring(i, i+1);
				if (valid.indexOf(temp) == "-1")
				{
					DspAlert(field,msg);
					return false;
				}
		}
		return true;
}

///////////////////////////////
//�������ڲ�������¼����������
//////////////////////////////
function ValidDateBegin(field,Str,field1,field2)
{
	var beg = field.value;
	/*if(beg < Str)
	{
			alert(Message[38]);
						field1.focus();
			field2.value = "��ҵ��Ŀ������ھ�Ͷ�����ڲ�������";
						return false;

	}*/
	return true;
}

////////////////////////////////////////////////////////
// ��֤����,and foucus field
////////////////////////////////////////////////////////
function ValidDateNew(field,field1)
{
	if(!ValidDate(field))
	{
		field1.focus();
		return false;
	}
		 return true;
}

/////////////////////////
//��֤��
////////////////////////
function ValidYear(field)
{
	if ((!ValidInt(field)) ||  (field.value.length!=4) || (field.value=="0000"))
	{
		alert(Message[37]);
				field.focus();
				return false;
	}
	return true;
	}
///////////////////////
//��֤��
////////////////////////
function ValidMonth(field)
{
	 if (!ValidInt(field) || field.value.length > 2 || field.value > 12 || field.value=="00")
	{
		alert(Message[3]);
				field.focus();
				return false;
	}
	return true;
	}

////////////////////////
//��֤��
////////////////////////
function ValidDay(field)
{
 if (!ValidInt(field) || field.value.length > 2 || field.value > 31 || field.value=="00")
	{
		alert(Message[4]);
				field.focus();
				return false;
	}
	return true;
	}
////////////////////////////


function ValidAmt(field)
{
		var amt = field.value;

		var valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		var ok = "yes";
		var temp;
		for (var i=0; i<amt.length; i++) {
				temp = "" + amt.substring(i, i+1);
				if (valid.indexOf(temp) != "-1")
				{
				 ok = "no";
				 break;
				}
		}
		if (ok == "no") {
				alert(Message[32]);
				field.focus();
				return false;
		}


		if (amt != null && amt != "")
		{
			amt = parseFloat(amt);
			if(isNaN(amt))
			{
				alert(Message[32]);
				field.focus();
				return false;
			 }
		}

		return true;
}
function ValidRate(field)
{

		if(!ValidAmt(field))
	return false;
		var amt = field.value;
		if (amt != null && amt != "")
		{
			amt = parseFloat(amt);
			if(amt <0 || amt > 100)
			{
				alert(Message[33]);
				field.focus();
				return false;
			 }

		}
		return true;
}

////////////////////////////////////////////////////////
// ��ʾ������Ϣ����
////////////////////////////////////////////////////////
function Refocus(field){
		field.focus();
		if (field.type=="text")
		{
				field.select();
		}
}

function DspAlert(field,msg){
		Refocus(field);
		alert('\n'+Message[25]+'\n'+msg);
}

function DspAlertHidden(field,msg){
		alert('\n'+Message[25]+'\n'+msg);
}

function DAlert(field,msg){
//    var temp;
		Refocus(field);
//    temp=Schelmttl(field.name);
		alert('\n'+msg);
}

////////////////////////////////////////////////////////
// ��֤�Ƿ�Ϊ��
////////////////////////////////////////////////////////
function ValidNull(field,AllowNull)
{
	var str = field.value;

		if(str == null)    //for netscape optionselect
		{
			str = field.options[field.selectedIndex].value;
		}

		if(str == "")
		{
				DspAlert(field,Message[14]);
				return false;
		}

		return true;
}
////////////////////////////////////////
//For email address check
////////////////////////////////////////
function ValidEmail(field)
{
				if(field.value == "")
					 return true;
		if ((field.value.indexOf("@") < 1) || (field.value.indexOf(".") < 1))
		{
					DspAlert(field,Message[29]);
					return false;

		}
		return true;

}

////////////////////////////////////////////////////////
// ��֤�绰���棺���������ֻ�-()
////////////////////////////////////////////////////////
function ValidTel(field) {
		var valid = "0123456789-()";
		var ok = "yes";
		var temp;
		var len = field.value.length;
		if(len < 6)
		{
			ok = "no";
}
else
{
		for (var i=0; i<len; i++) {
				temp = "" + field.value.substring(i, i+1);
				if (valid.indexOf(temp) == "-1") ok = "no";
		}
}
		if (ok == "no") {
				DspAlert(field,Message[30]);
				return false;
		}
		return true;
}

////////////////////////////////////////////////////////
// ��֤��������ĸ������
////////////////////////////////////////////////////////
function ValidKey(field) {
		var valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		var ok = "yes";
		var temp;
		for (var i=0; i<field.value.length; i++) {
				temp = "" + field.value.substring(i, i+1);
				if (valid.indexOf(temp) == "-1") ok = "no";
		}
		if (ok == "no") {
				DspAlert(field,Message[0]);
				return false;
		}
		return true;
}

////////////////////////////////////////////////////////
// ��֤��һ��Ϊ��ĸ,����Ϊ��ĸ������
////////////////////////////////////////////////////////
function ValidId(field) {
		var firstvalid = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		var valid = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
		var ok = "yes";
		var temp;

		if (firstvalid.indexOf(field.value.substring(0, 1))=="-1")
			 {ok = "no"}
		else
			 {
					for (var i=0; i<field.value.length; i++) {
							temp = "" + field.value.substring(i, i+1);
							if (valid.indexOf(temp) == "-1") ok = "no";
					}
			 }
		if (ok == "no") {
				DspAlert(field,Message[19]);
				return false;
		}
		return true;
}


////////////////////////////////////////////////////////
// ��֤���������Ᵽ���ֵ��ַ���,������������
////////////////////////////////////////////////////////
function ValidInvaKey(field) {
		var invalid = ":-=,&;`.*&^%$#@!~|\?<>{}[]'\"()"
		var find = "no";
		var temp;
		for (var i=0; i<field.value.length; i++) {
				temp = "" + field.value.substring(i, i+1);
				if (invalid.indexOf(temp) != -1) find = "yes";
		}
		if (find == "yes") {
				DspAlert(field,Message[17]);
				return false;
		}
		return true;
}

////////////////////////////////////////////////////////
// ��֤��
////////////////////////////////////////////////////////
function ValidZero(field) {
		if (field.value == 0) {
				DspAlert(field,Message[18]);
				return false;
		}
		return true;
}


////////////////////////////////////////////////////////
// ��֤����������
////////////////////////////////////////////////////////
function ValidInt(field) {
		var valid = "0123456789";
		var ok = "yes";
		var temp;
		for (var i=0; i<field.value.length; i++) {
				temp = "" + field.value.substring(i, i+1);
				if (valid.indexOf(temp) == "-1") ok = "no";
		}
		if (ok == "no") {
			 DspAlert(field,Message[1]);
			 return false;
		}
		return true;
}

//////////////////////
//////////////////////
function  change(field1,field2,field3,field)
{


	var month = field2.value;
	//month = "abc";
	//day = "123";
	var day = field3.value;
	if(month.length < 2)
		 {month="0"+month;
		 }
	if(day.length < 2)
		{ day="0"+day;
		}

		field.value=field1.value+"-"+month+"-"+day;



//  field.value=field1.value+"-"+field2.value+"-"+field3.value;

	//return true;
}


////////////////////////////////////////////////////////
// ��֤����
////////////////////////////////////////////////////////
function ValidDate(field) {
// Checks for the following valid date formats:
// YY/MM/DD   YYYY/MM/DD   YY-MM-DD   YYYY-MM-DD
// Also separates date into month, day, and year variables

		var datePat = /^(\d{2}|\d{4})(\-)(\d{1,2})(\-)(\d{1,2})$/;
// To require a 4 digit year entry, use this line instead:
		var dateStr=field.value;
		var matchArray = dateStr.match(datePat); // is the format ok?
		if (matchArray == null) {
				DspAlertHidden(field,Message[2]);
				return false;
		}
		year = matchArray[1]; // parse date into variables
		month = matchArray[3];
		day = matchArray[5];

		if (year.length!=4 || month.length!=2 || day.length!=2) {
				DspAlertHidden(field,Message[2]);
				return false;
		}

		if (month < 1 || month > 12) { // check month range
				DspAlertHidden(field,Message[3]);
				return false;
		}
		if (day < 1 || day > 31) {
				DspAlertHidden(field,Message[4]);
				return false;
		}

		if ((month==4 || month==6 || month==9 || month==11) && day==31) {
				DspAlertHidden(field,Message[5]);
				return false;
		}
		if (month == 2) { // check for february 29th
				var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
				if (day>29 || (day==29 && !isleap)) {
						DspAlertHidden(field,Message[6]);
						return false;
				}
		}
		return true;  // date is valid
}


////////////////////////////////////////////////////////
// ��֤ʱ��(12)
////////////////////////////////////////////////////////
function ValidTimeFmt(field) {
// Checks if time is in HH:MM:SS AM/PM format.
// The seconds and AM/PM are optional.

		var timePat = /^(\d{1,2}):(\d{2})(:(\d{2}))?(\s?(AM|am|PM|pm))?$/;
		var timeStr=field.value;
		var matchArray = timeStr.match(timePat);
		if (matchArray == null) {
				DspAlert(field,Message[7]);
				return false;
		}
		hour = matchArray[1];
		minute = matchArray[2];
		second = matchArray[4];
		ampm = matchArray[6];

		if (second=="") { second = null; }
		if (ampm=="") { ampm = null }


		if (hour.length!=2 || minute.length!=2 || (second!=null && second.length!=2)) {
				DspAlert(field,Message[7]);
				return false;
		}

		if (hour < 0  || hour > 23) {
				DspAlert(field,Message[8]);
				return false;
		}
		if (hour <= 12 && ampm == null) {
				if (confirm(Message[9])) {
						DspAlert(field,Message[10]);
						return false;
				}
		}
		if (hour > 12 && ampm != null) {
				DspAlert(field,Message[11]);
				return false;
		}
		if (minute<0 || minute > 59) {
				DspAlert(field,Message[12]);
				return false;
		}
		if (second != null && (second < 0 || second > 59)) {
				DspAlert(field,Message[13]);
				return false;
		}
		return true;
}

////////////////////////////////////////////////////////
// ��֤�������ڸ�ʽ
////////////////////////////////////////////////////////
function ValidYearMonth(field) {
// Checks for the following valid date formats:
//   YYYYMM
// Also separates date into month, day, and year variables

// To require a 4 digit year entry, use this line instead:
		var dateStr=field.value;

		if (dateStr == null||dateStr==""){
			 DspAlert(field,Message[15]);
					 return false;
		}
				if(isNaN(dateStr)){
					DspAlert(field,Message[1]);
					return false;
				}
				if (dateStr.length!=6){
			 DspAlert(field,Message[16]);
					 return false;
		}
		 year=dateStr.substring(0,4);
				 month=dateStr.substring(4,6);

		if (month < 1 ||  month > 12){
				DspAlert(field,Message[3]);
						return false;
		}
		return true;  // date is valid
}

////////////////////////////////////////////////////////
// ��֤ʱ��(24)
////////////////////////////////////////////////////////
function ValidTime(field) {
// Checks if time is in HH:MM:SS format.

		var timePat = /^(\d{1,2}):(\d{2})(:(\d{2}))$/;
		var timeStr=field.value;
		var matchArray = timeStr.match(timePat);
		if (matchArray == null) {
				DspAlert(field,Message[7]);
				return false;
		}
		hour = matchArray[1];
		minute = matchArray[2];
		second = matchArray[4];


		if (second=="") { second = null; }


		if (hour.length!=2 || minute.length!=2 || (second!=null && second.length!=2)) {
				DspAlert(field,Message[7]);
				return false;
		}

		if (hour < 0  || hour > 23) {
				DspAlert(field,Message[28]);
				return false;
		}

		if (minute<0 || minute > 59) {
				DspAlert(field,Message[12]);
				return false;
		}
		if (second != null && (second < 0 || second > 59)) {
				DspAlert(field,Message[13]);
				return false;
		}
		return true;
}


////////////////////////////////////////////////////////
// ��֤��С�Ƚ�
////////////////////////////////////////////////////////
function ValidRange(field,Lower,Higher) {

		if (field.value>=Lower && field.value<=Higher){
				return true;
		}
		else {
				DspAlert(field,"����ֵ��С������� ["+Lower+"] �� ["+Higher+"] ֮�䡣");
				return false;
		}
}

////////////////////////////////////////////////////////
// ��֤��Χ
////////////////////////////////////////////////////////
function ValidLength(field,Lower,Higher) {

		var len=field.value.length;
		if (len>=Lower && len<=Higher){
				return true;
		}
		else {
				DspAlert(field,"����ֵ���ȱ������ ["+Lower+"] �� ["+Higher+"] �䡣");
				return false;
		}
}



////////////////////////////////////////////////////////
// ��֤���������ַ���
////////////////////////////////////////////////////////
function ValidNumLen(field,Lower,Higher,AllowNull) {
		if (!ValidNull(field,AllowNull)){
				return false;
		}

		if (!ValidInt(field)){
				return false;
		}

		if (!ValidLength(field,Lower,Higher)){
				return false;
		}
		return true;
}


////////////////////////////////////////////////////////
// ��֤����С��Χ�����ַ���
////////////////////////////////////////////////////////
function ValidNumRng(field,Lower,Higher,AllowNull) {
		if (!ValidNull(field,AllowNull)){
				return false;
		}

		if (!ValidInt(field)){
				return false;
		}

		if (!ValidRange(field,Lower,Higher)){
				return false;
		}
		return true;
}

////////////////////////////////////////////////////////
// ��֤�����ַ���
////////////////////////////////////////////////////////
function ValidKeyLen(field,Lower,Higher,AllowNull) {
		if (!ValidNull(field,AllowNull)){
				return false;
		}

		if (!ValidKey(field)){
				return false;
		}

		if (!ValidLength(field,Lower,Higher)){
				return false;
		}
		return true;
}


//The special:
////////////////////////////////////////////////////////
// ��֤����
////////////////////////////////////////////////////////
function ValidOprPsw(field,AllowNull) {
		if (field.value.length==0 && AllowNull){
				return true;
		}

		if (!ValidNull(field,AllowNull)){
								return false;
		}

		if (!ValidKey(field)){
				return false;
		}

		if (!ValidLength(field,1,8)){
				return false;
		}
		return true;
}




////////////////////////////////////////////////////////
// ��֤������ͬ
////////////////////////////////////////////////////////
function ValidSame(field1,field2) {
		if (field1.value!=field2.value){
				DspAlert(field2,Message[24]);
				return false;
		}
		return true;
}



function ValidNoOrReal(field1,field2)
{

	if(field1.value.length==0 && field2.value.length==0)
	{

		DAlert(field1,Message[27]);
		return false;
	}else{
		 return true;
	}
/*	if(field1.value.length!=0 && field2.value.length!=0)
	{
		DAlert(field1,Message[26]);
		return false;
	}
*/
}




////////////////////////////////////////////////////////
// ȷ���Ƿ�ɾ��
////////////////////////////////////////////////////////
function ConfirmDelGrp()
{

		if (!confirm(Message[22])) {
				return false;
		}

		return true;
}



//------------------------------------------------------------------
/******************************************************/
/******************************************************/
////////////////////////////////////////////////////////
// ��֤��������
////////////////////////////////////////////////////////
function BeNull(field)
{
	// field ��ֵʱ����
	if ((field.value != null)&&(field.value != ""))
	{
		DspAlert(field,"�˲�����������");
		return false;
	}
	// field ��ֵʱ��
	return true;
}

//special for operationselect
function check(Optype,fieldOp,field,field1,field2,field3,field4,field6,field7,field8)
{
	 var f = new Array(4);
	 var f1 = new Array(3);

	f[0]=field1;
	f[1]=field2;
	f[2]=field3;
	f[3]=field4;

	f1[0]=field6;
	f1[1]=field7;
	f1[2]=field8;

	 var flag = 0;
//   if(Optype == "3" && fieldOp[0].checked)//Opencover
//        return true;

	 if(field[0].checked)//home transt
	 {
		 for(var i =0;i<4;i++)
		 {
				 if(f[i].checked)
				 {
					flag = flag + 1;
				 }
		 }
	 }
	 else//portTransit
	 {
		 for(var i =0;i<3;i++)
		 {
				 if(f1[i].checked)
				 {
					flag = flag + 1;
				 }
		 }

	 }

	 if(flag != 1)
	 {
					alert(Message[31]);
					return false;

		}
		return true;
}
//for plyfind
function IsChecked(field)
{
	if (field[1].checked)
	{return false;}
	else
	{return true;}
}
//for check by checkbox
function IsChecked2(field)
{
	if (field.checked)
	{return false;}
	else
	{return true;}
}

function IsCheckedBox(field1,field2)
{
	if((field1.checked)||(field2.checked))
		return true;
	else
		 DspAlert(field1,Message[41]);
		 return false;

}
function IsCheckedBox4(field1,field2,field3,field4)
{
	if((field1.checked)||(field2.checked)||(field3.checked)||(field4.checked))
		return true;
	else
		 DspAlert(field1,Message[41]);
		 return false;

}
//for policylist
function setField(field,Str)
{
	field.value = Str;
	return;
}
//for agentList select & openCoverList select
function checkFieldNull(field,Strflag)
{
	 var str = field.value;

	 if(str == null)//for netscape
	 {
			 str = field.options[field.selectedIndex].value;
	 }

	 if(str == "")
	 {
			//alert("�޸�Ͷ������Ҫѡ��Ͷ������");
			//field.focus();
			if(Strflag == "0")
			{
				 DAlert(field,Message[35]);
			}
			else if(Strflag == "1")
			{
				 DAlert(field,Message[36]);
			}
			else if(Strflag == "2")
			{
				 DAlert(field,Message[39]);
			}
			else if(Strflag == "3")
			{
				 DAlert(field,Message[40]);
			}
			else if(Strflag == "4")
			{
				 DAlert(field,Message[44]);
			}else if(Strflag == "5"){

			 DAlert(field,Message[48]);
		}else if(Strflag == "6"){

			 DAlert(field,Message[49]);
		}else if(Strflag == "7"){

			 DAlert(field,Message[50]);
		}else if(Strflag == "8"){
				DAlert(field,Message[51]);
		}

			return false;
	 }
	 return true;
}

//for acceptOrgnCust.jsp
function ValidRgtMny(field)
{
	if(ValidAmt(field))
	{
		return true;
	}
//	DAlert(field,Message[42]);
	return false;
}

//for inputPolicy check invt_amt and prm_amt
function  checkAmt(field,field1,field2)
{
	var InvcAmt = field.value;
	var Amt =  field1.value;
	var Remark =  field2.value;
	if(InvcAmt == "" || Amt == "")
			return true;
	if(Amt > InvcAmt*1.3 && Remark == "")
	{
		DAlert(field,Message[43]);
		return false;
	}
}
/////////////////////////////////
//��֤hour
////////////////////////
function ValidHour(field)
{
 if (!ValidInt(field) || field.value.length > 2 || field.value >23 || field.value<0)
	{
		alert(Message[28]);
				field.focus();
				return false;
	}
	return true;
	}
////////////////////////
//��֤minute
////////////////////////
function ValidMinute(field)
{
 if (!ValidInt(field) || field.value.length > 2 || field.value >59 || field.value<0)
	{
		alert(Message[12]);
				field.focus();
				return false;
	}
	return true;
	}
////////////////////////
//��֤second
////////////////////////
function ValidSecond(field)
{
 if (!ValidInt(field) || field.value.length > 2 || field.value >59 || field.value<0)
	{
		alert(Message[13]);
				field.focus();
				return false;
	}
	return true;
}
function ValidZip(field){
		var zip = field.value;
	if(zip.length<6){
		 alert("�ʱ�Ӧ��Ϊ6λ!");
		 field.focus();
		 return false;
	}
	if(!ValidInt(field)){
		 field.focus();
		 return false;
	}
	return true;
}
function ChangeDate(birth_year,birth_month,birth_day,C_PRN_FRM){

	 var yy = birth_year.value;
	 var mm = birth_month.value;
	 var dd = birth_day.value;
	 //alert("xx:"+yy+","+mm+","+dd);
	 if(mm.length<2) mm = "0"+mm;
	 var mon = new  Array("01","02","03","04","05","06","07","08","09","10","11","12");
	 var Mon
	 var Months =new Array("JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC");
	 for(i=0 ;i< mon.length;i++)
		 if(mon[i]== mm){
		 break;
	 }
	 monstr = Months[i];
	 C_PRN_FRM.options[1].value= yy +"��"+mm+"��"+dd+"��";
	 C_PRN_FRM.options[1].text= yy +"��"+mm+"��"+dd+"��";

	 C_PRN_FRM.options[0].value= monstr +". "+ dd +","+ yy;
	 C_PRN_FRM.options[0].text= monstr +". "+ dd +","+ yy;


	 return true;
}
function ChangePay_Addr(C_TO_PRT,C_PAY_ADDR){
	 if(C_PAY_ADDR.value.length==0){C_PAY_ADDR.value= C_TO_PRT.value;}
}
function TrimForm(theForm) {

		len = theForm.elements.length;
		var i=0;
	var value ;
	var ctype;
		for( i=0 ; i<len ; i++) {
		 ctype =theForm.elements[i].type;
		 //alert(theForm.elements[i].name);
		 if((!theForm.elements[i].disabled)&&(ctype=="text" || ctype=="textarea" || ctype=="hidden") ){
				value = theForm.elements[i].value;
		value = TrimStr(value);
		theForm.elements[i].value = value ;
			 }
		}
}
function TrimStr(xx){
			str=''+xx;
		if(str.length==0)return str;
		while(''+str.charAt(str.length-1)==' '){
			str= str.substring(0,str.length-1);
		}
		while(''+str.charAt(0)==' '){
		 str= str.substring(1,str.length);
			}
		return str;
}
