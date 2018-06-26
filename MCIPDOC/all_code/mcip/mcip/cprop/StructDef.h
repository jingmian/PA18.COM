#ifndef _STRUCTDEF_H_
#define _STRUCTDEF_H_

#include "db_macro.h"

typedef struct _PacketHead {
    unsigned short iPacketID;     /* ����ID	     */
    unsigned short iRetPktID;     /* ����ķ���ID   */
    int      lPacketSize;        /* �������ݰ���С */
    short    iRecordNum;       /* ���м�¼�ĸ��� */
    short    iRecordSize;       /* ÿ����¼�ĳ��� */
    short    iPriority;	        /* ��������ȼ�   */
    short    iServiceNo;        /* �������͵ı�� */
    char     cRetCode;         /* ����ķ���ֵ	*/
    int      iReserved;	        /* ����δ��      */
} PacketHead;


typedef  struct _cltPerClntInfoStru  {
    char sClntCde[C_CLNT_CDE_LEN];    /*12�ͻ�����*/
    char sDptCde[C_DPT_CDE_LEN];      /*11 ��������*/
    char sClntNme[C_CLNT_NME_LEN];    /*60 �ͻ�����*/
    char sChnAbr[C_CHN_ABR_LEN];      /*12 ���*/
    char sAuthMrk[C_AUTH_MRK_LEN];    /*1 ��Ȩ��־*/
    char sBrdEnm[C_BRD_ENM_LEN];    /*60 Ӣ������/�ͻ���λ*/
    char sRgstNo[C_RGST_NO_LEN];    /*20 ���̵ǼǺ�/���֤��*/
    char sSex[C_SEX_LEN];         /*1 �Ա�*/
    char sHmtwn[C_HMTWN_LEN];    /*20 ����*/
    char sNtnCde[C_NTN_CDE_LEN];    /*2 ����*/
    char sBirthday[DATE_LEN];    /*date ��������*/
    char sMrgCde[C_MRG_CDE_LEN];    /*2 ����״��*/
    char sGrdt[C_GRDT_LEN];    /*30 ��ҵԺУ*/
    char sEduCde[C_EDU_CDE_LEN];	/*2 ѧ��*/
    char sMajorCde[C_MAJOR_CDE_LEN];    /*2 רҵ*/
    char sTitlCde[C_TITLE_CDE_LEN];    /*2 ְ��*/
    char sDuty[C_DUTY_LEN];    /*20	ְ��*/
    char sTel[C_TEL_LEN];    /*20 �绰*/
    char sFax[C_FAX_LEN];    /*20	����*/
    char sEmail[C_EMAIL_LEN];    /*30 E-MAIL*/
	char sClntAddr[C_CLNT_ADDR_LEN];    /*60 ��ַ*/
    char sZipCde[C_ZIP_CDE_LEN];    /*6 �ʱ�*/
    char sRemark[C_REMARK_LEN];    /*500 ��ע*/
    char sClntMrk[C_CLNT_MRK_LEN];    /* 1 �ͻ���־ '0'-����,'1'-����*/
    char sEmpCde[C_EMP_CDE_LEN];     /*10 Ա������ ��Ϊ�����˻����޸���*/
	/*update 2000-08-25*/
    char sImptClntCde[C_IMPT_CLNT_CDE_LEN];    /*	12 ��ͻ���19*/

	char sUpdTm[TIME_LEN];	/*TIME hh:mm:ss  �޸�ʱ�䣬���ڲ�������*/
	char sProvince[C_PROVINCE_LEN];	/*20 �͵�ʡ����*/
	char sCity[C_CITY_LEN];	/*20 �͵���/��/��*/
	char sPlace[C_PLACE_LEN];	/*100 �͵���ϸλ��*/
} cltPerClntInfoStru;

typedef  struct _cltOrgClntInfoStru  {
    char sClntCde[C_CLNT_CDE_LEN];    /*12�ͻ�����1*/
    char sDptCde[C_DPT_CDE_LEN];      /*11 ��������2*/
    char sClntNme[C_CLNT_NME_LEN];    /*60 �ͻ�����3*/
    char sChnAbr[C_CHN_ABR_LEN];      /*12 ���4*/
    char sAuthMrk[C_AUTH_MRK_LEN];    /*1 ��Ȩ��־5*/
    char sBrdEnm[C_BRD_ENM_LEN];    /*60 Ӣ������/�ͻ���λ6*/
    char sRgstNo[C_RGST_NO_LEN];    /*20 ���̵ǼǺ�/���֤7*/
    char sTaxNo[C_TAX_NO_LEN];    /*16 ˰���8*/
    double  fRgstMny;    /*16	ע���ʱ�9*/
    char sChief[C_CHIEF_LEN];    /*8 ��λ������10*/
    double  fEmlyNum;    /*8 Ա������11*/
    char sOwnershipCde[C_OWNERSHIP_CDE_LEN];    /*1������12*/
    char	sOrgzTypCde[C_ORGZ_TYP_CDE_LEN]; /*1 ��ҵ��֯��ʽ13*/
    char sTrdCde[C_TRD_CDE_LEN];    /*1��ҵ14*/
    char sAraCde[C_ARA_CDE_LEN];    /*10 ���ҵ���15*/
    char 	sClntScleCde[C_CLNT_SCLE_CDE_LEN];    /*1 ���ѹ�ģ16*/
    char sScaleCde[C_SCALE_CDE_LEN];    /*1 ��ҵ��ģ17*/
    char sUprDptCde[C_UPR_DPT_CDE_LEN];    /*12 �ϼ���λ����18*/
    char sImptClntCde[C_IMPT_CLNT_CDE_LEN];    /*	12 ��ͻ���19*/
    char sCntctPrsnNme[C_CNTCT_PRSN_NME_LEN];   /*20	��ϵ��20*/
    char sTel[C_TEL_LEN];    /*20 �绰21*/
    char sFax[C_FAX_LEN];    /*20	����22*/
    char sEmail[C_EMAIL_LEN];    /*30 E-MAIL23*/
    char sClntAddr[C_CLNT_ADDR_LEN];    /*60 ��ַ24*/
    char sZipCde[C_ZIP_CDE_LEN];    /*6 �ʱ�25*/
    char sRemark[C_REMARK_LEN];    /*500 ��ע26*/
    char sClntMrk[C_CLNT_MRK_LEN];    /* 1 �ͻ���־27*/
    char sEmpCde[C_EMP_CDE_LEN];     /*10 Ա�����룬��Ϊ�����˻����޸���28*/
    char sUpdTm[TIME_LEN];	/*TIME hh:mm:ss  �޸�ʱ��29*/
    char sBank[C_BANK_LEN];   /*20 �������� 30*/
    char sAccntNo[C_ACCNT_NO_LEN];    /*20 �����ʺ� 31*/
char sEngAbr[C_ENG_ABR_LEN];      /*Ӣ�ļ��32*/
char sProvince[C_PROVINCE_LEN];	/*20 �͵�ʡ����33*/
char sCity[C_CITY_LEN];	/*20 �͵���/��/��34*/
char sPlace[C_PLACE_LEN];	/*100 �͵���ϸλ��35*/
} cltOrgClntInfoStru;




#endif

