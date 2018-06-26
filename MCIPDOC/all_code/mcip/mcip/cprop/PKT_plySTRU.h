/********************************************************************
 * NAME         : PKT_STRU.h
 * FUNCTION     : ���ݰ��ṹ����
 * PROGRAMMED   : aisoft/aisoft
 * DATE(ORG)    : 98/08/19
 * PROJECT      : aisoft
 * OS           : WINDOWS 95 AND UNIX
 * HISTORY      :
 * ID  -- DATE -------- NOTE-----------------------------------------
 * 00   97/07/03  Created By WTQ  
 ********************************************************************/
/*************���ļ���ά���ˣ�LZZ ********************************/
/********************************************************************
 *                     ���ݰ�ID�Ķ���								*
 ********************************************************************/
/******************************************************************
 *	  ���ڸ� ID ��ȡֵ��Χ��˵����Ϊ��ȷ��ϵͳ�Ŀ������ԣ����ÿ��
 *���͵�IDһ����ȡֵ��Χ��ʹ��Ⱦ������������ԣ��ֱ���ϵͳ��ά����
 *�����ֵķ�Χ�涨���£�
 *���漰�˵�ID�ı�ţ�	10000~20000
 *���湫���ؼ�ID�ı�ţ�20001~22000
 *����ͨ�Ű�ID�ı�ţ�	22001~23000
******************************************************************/
/********************************************************************
*	ƽ��������Ϣϵͳ���ݰ� ID �Ķ���,�����ֵı�ŷ�Χ�������£�
*	ϵͳ��22001~22100
*	�б���22101~22200										*
*	���ģ�22201~22300										*
*	���⣺22301~22400										*
*	�ͻ���22401~22500										*
*	��֤��22501~22600										*
*	����22601~22700										*
*	����22701~22800										*
*	�ٱ���22801~22900										*
*	���ã�22901~22950										*
*	Ȩ�ޣ�22951~23000										*
********************************************************************/
/*---------------		ϵͳ��22001~22100 ��ʼ		---------------*/
/****************		ϵͳ��22001~22100 ����		****************/
/*---------------		�б���22101~22200 ��ʼ		---------------*/
#ifndef PKT_plySTRU_H
#define PKT_plySTRU_H

#include "db_macro.h"


#define PP_GET_INSRNC_DFN			22101	/*��ȡ����*/
#define PP_GET_APPPOLY_GRID			22102	/*��ȡͶ����һ��*/
#define	PP_GET_APPPOLICY			22103	/*��ȡͶ��������*/
#define	PP_UPDATE_APPPOLICY			22104	/*�޸�Ͷ����*/
#define	PP_DELETE_APPPOLICY			22105	/*ɾ��Ͷ����*/
#define	PP_RETNUNDR_APPPOLICY		22106	/*����Ͷ����*/
#define PS_UPD_INSRNC_DFN			22107	/*�޸����ֶ���*/
#define PP_GET_WORK					22110	/*��ȡ����ҵ����ϱ�ҵ������������Ϣ*/
#define PP_GET_UDRPOLICY			22111	/*��˻��ѯͶ����*/
#define PP_UPDATE_CLRPOLICY			22112	/*���Ͷ����*/
#define PP_UPDATE_RCLPOLICY			22113	/*����Ͷ����*/
#define PP_UPDATE_UDRDEAL			22114	/*�˱�����*/
#define PP_UPDATE_UDRUPD			22115	/*�˱����´���*/
#define PP_GET_CHECK_APPPLY			22116	/*ȡͶ���� */
#define PP_GET_EDRPLY				22120	/*���ݱ���������*/
#define PP_INSERT_BACK_EDR			22121	/*�����˷�����*/
#define PP_GET_EDR_GRID				22122	/*��ȡ���뵥һ��*/
#define PP_GET_APPEDR				22123	/*��ȡ���뵥����*/
#define PP_UPDATE_CLREDR			22124	/*����Ѻ˱����뵥*/
#define PP_UPDATE_UDREDR			22125	/*���뵥����˱�*/
#define PP_DELETE_APPEDR			22126	/*ɾ�����뵥*/
#define PP_GET_EDR_INFO				22127	/*��ȡ���뵥��������Ϣ*/
#define PP_UPDATE_RCLEDRAPP			22128	/*����Ͷ����*/
#define PP_GET_POLY_EDR_GRID		22130	/*��ȡ��������һ��*/
#define PP_INSERT_EDR				22131	/*�������Ĵ���*/
#define PP_GET_POLY_AGT_GRID		22132	/*����� ֱ��ҵ��ļ���*/
#define PP_AGENCY_FEE_PROC			22133	/*����� ֱ��ҵ���ȷ��*/
#define PP_GET_CANCEL_RENEW_GRID	22134	/*��ȡ��ָ�ע�����˱��ı���һ��*/
#define PP_CANCEL_RENEW				22135	/*ע�����˱��ָ�����*/
/**********/
                                                                                                 
#define PP_GET_CPLY_GRID_INFO       22140   /*��ȡ����һ����Ϣ*/
#define PP_GET_VHL_BRND_INFO        22141   /*F9����ȡ���Ƴ�������Ϣ*/
#define PP_GET_HOME_RICH_GRID		22142	/*�ҲƳ�Ч���Ѽ����ѯ*/
#define PP_INSERT_HOME_RICH_GRID	22143	/*�ҲƳ�Ч���Ѽ��ᴦ��*/
/****************		�б���22101~22200 ����		****************/
/*---------------		���ģ�22201~22300 ��ʼ		---------------*/
/****************		���ģ�22201~22300 ����		****************/
/*---------------		���⣺22301~22400 ��ʼ		---------------*/
/****************		���⣺22301~22400 ����		****************/
/*---------------		�ͻ���22401~22500 ��ʼ		---------------*/
/****************		�ͻ���22401~22500 ����		****************/
#define  PA_GET_CONFER           13037
/*---------------		��֤��22501~22600 ��ʼ		---------------*/
/****************		��֤��22501~22600 ����		****************/
/*---------------		����22601~22700 ��ʼ		---------------*/
/****************		����22601~22700 ����		****************/
/*---------------		����22701~22800 ��ʼ		---------------*/
/****************		����22701~22800 ����		****************/
/*---------------		�ٱ���22801~22900 ��ʼ		---------------*/
/****************		�ٱ���22801~22900 ����		****************/
/*---------------		���ã�22901~22950 ��ʼ		---------------*/
/****************		���ã�22901~22950 ����		****************/
/*---------------		Ȩ�ޣ�22951~23000 ��ʼ		---------------*/
/****************		Ȩ�ޣ�22951~23000 ����		****************/
/********************************************************************
 *						�ṹ����									*
********************************************************************/
/*------------------------�б�����----------------------------------*/
#undef    L_TGT_FLD1_LEN                               
#define   L_TGT_FLD1_LEN           501     
#define      C_REC_NO_LEN          10
#define      C_APP_KINDS_LEN       20
/* *** ���ӵ�ͷ�ļ��ṹ *** */
typedef struct _PktBodyInfoStru 
{
	int nPktNum[C_APP_KINDS_LEN];
} PktBodyInfoStru;
/* *** ������Ϣ���ݽṹ *** */ 
typedef struct _plyInsrncDfnStru
{
	char sCrtCde[C_CRT_CDE_LEN];					/*������Ա*/
	char sCrtTm[TIME_LEN];    						/*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];					/*�޸���Ա*/
	char sUpdTm[TIME_LEN];							/*�޸�ʱ��*/
	int  nInsrncNo;									/*���*/
	char sAmtDef[C_AMT_DEF_LEN];					/*���ս����㶨��*/
	char sTgtMrk[C_TGT_MRK_LEN];					/*������־*/
	char sPrmDef[C_PRM_DEF_LEN];					/*���Ѽ��㶨��*/
	char sRdrPrmDef[C_RDR_PRM_DEF_LEN];				/*�����ձ��Ѽ��㶨��*/
	char sDvdPayMrk[C_DVD_PAY_MRK_LEN];				/*���ڸ����־*/
	char sAdbTm[DATE_LEN];							/*ʧЧ����*/
	char sInsrncCde[C_INSRNC_CDE_LEN];				/*����*/
	char sInsrncCls[C_INSRNC_CLS_LEN];				/*���ִ���*/
	char sInsrncTyp[C_INSRNC_TYP_LEN];				/*���ַ���*/
	char sInsrncCnm[C_INSRNC_CNM_LEN];				/*������������*/
	char sInsrncAbr[C_INSRNC_ABR_LEN];				/*���ּ��*/
	double fInsrncRte;								/*���ַ���*/
	double fNclmPropAuth;							/*������˷ѱ���Ȩ��*/
	double fAppntPropAuth;							/*Լ���˷ѱ���Ȩ��*/
	double fCmmRteAuth;								/*�����ѱ���Ȩ��*/
	double fBrkrRteAuth;							/*���ͷѱ���Ȩ��*/
	char sPrnMrk[C_PRN_MRK_LEN];					/*ӡˢ��֤��־*/
	double fEmProp;									/*�ϱ������*/
	char sInsrncEnm[C_INSRNC_ENM_LEN];				/*����Ӣ������*/
	char sUdrDsc[C_UDR_DSC_LEN];                    /*�˱�ָ��*/
	char sInsrncDfn[C_INSRNC_DFN_LEN];				/*���ֻ�������*/
	char sSumPrmDef[C_SUM_PRM_DEF_LEN];				/*���Ѻϼƹ�ʽ����*/
	char sInsrncDfnTyp[C_INSRNC_DFN_TYP_LEN];		/*���ֶ������*/
    char sTgtobjMrk[C_TGTOBJ_MRK_LEN];				/*��ı�־*/
    int  nTerm1;									/*Ӧ�ձ�������*/
    int  nTerm2;									/*Ӧ�ձ�����ֹ��ȱʡ����*/
    double fRmbAmt;									/*�ش��������*/
    double fHkdAmt;									/*�ش���۱�*/	
    double fUsdAmt;									/*�ش�������*/
	char sInsrncMrk[C_INSRNC_MRK_LEN];				/*���ñ�־*/
    int  nTerm3;									/*Ӧ�ձ����������ֵ*/
    int  nTerm4;									/*������������*/
} plyInsrncDfnStru;
    
/* *** �����������(������) *** */
typedef  struct  _plyTgtDescStru
{
	char sCrtCde[C_CRT_CDE_LEN];                /*������Ա*/
	char sCrtTm[TIME_LEN];    		            /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];                /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			            /*�޸�ʱ��*/
	char sInsrncCde[C_INSRNC_CDE_LEN];          /*���ֱ���*/
	char sTgtFld[C_TGT_FLD_LEN];                /*����ֶ�*/
	char sFldEnm[C_FLD_ENM_LEN];                /*�ֶ�Ӣ����*/
	char sDesNme[C_DES_NME_LEN];                /*��������*/
	char sType[C_TYPE_LEN];                     /*����*/
	int  nLength;					            /*����*/
	int  nPresion;                     			/*С����λ��*/
	char sSrchCde[C_SRCH_CDE_LEN];              /*��ѯ��*/
	char sCaluFmul[C_CALU_FMUL_LEN];            /*���㹫ʽ*/
	char sMaxVal[C_MAX_VAL_LEN];                /*���ֵ*/
	char sMinVal[C_MIN_VAL_LEN];                /*��Сֵ*/
	char sDefaultVal[C_DEFAULT_VAL_LEN];        /*ȱʡֵ*/
	char sMdfyAble[C_MDFY_ABLE_LEN];            /*���޸�*/
	char sNullAble[C_NULL_ABLE_LEN];            /*�ɿ�*/
	char sRelaData[C_RELA_DATA_LEN];            /*�������*/
	char sAdbTm[DATE_LEN];                      /*ʧЧʱ��*/
	int  nDispNo;                               /*��ʾ���*/
} plyTgtDescStru; 
/* *** �������������(������) *** */
typedef  struct _plyTgtobjdefStru 
{
	char sCrtCde[C_CRT_CDE_LEN];                /*������Ա*/
	char sCrtTm[TIME_LEN];    		            /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];                /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			            /*�޸�ʱ��*/
	char sInsrncCde[C_INSRNC_CDE_LEN];          /*���ֱ���*/
	char sTgtObjFld[C_TGT_OBJ_FLD_LEN];         /*������ֶ�*/
	char sFldEnm[C_FLD_ENM_LEN];                /*�ֶ�Ӣ����*/
	char sDesNme[C_DES_NME_LEN];                /*��������*/
	char sType[C_TYPE_LEN];                     /*����*/
	int  nLength;						        /*����*/
	int  nPresion;                     			/*С����λ��*/
	char sSrchCde[C_SRCH_CDE_LEN];              /*��ѯ��*/
	char sCaluFmul[C_CALU_FMUL_LEN];            /*���㹫ʽ*/
	char sMaxVal[C_MAX_VAL_LEN];                /*���ֵ*/
	char sMinVal[C_MIN_VAL_LEN];                /*��Сֵ*/
	char sDefaultVal[C_DEFAULT_VAL_LEN];        /*ȱʡֵ*/
	char sMdfyAble[C_MDFY_ABLE_LEN];            /*���޸�*/
	char sNullAble[C_NULL_ABLE_LEN];            /*�ɿ�*/
	char sRelaData[C_RELA_DATA_LEN];            /*�������*/
	char sAdbTm[DATE_LEN];			            /*ʧЧʱ��*/
	int  nDispNo;                               /*��ʾ���*/
} plyTgtobjdefStru;
    
/* *** ��ѯ������(������) *** */
typedef  struct _plyQryparatlbStru 
{
	char sCrtCde[C_CRT_CDE_LEN];               /*������Ա*/
	char sCrtTm[TIME_LEN];    		           /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];               /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			           /*�޸�ʱ��*/
	char sSrchCde[C_SRCH_CDE_LEN];             /*��ѯ��*/
	char sSrchNme[C_SRCH_NME_LEN];             /*����*/
	char sSrchVal[C_SRCH_VAL_LEN];             /*ȡֵ*/
 	char sSrchCdeNme[C_SRCH_CDE_NME_LEN];      /*��ѯ������*/
} plyQryparatlbStru;
/* *** Ͷ�����������������ݽṹ *** */
typedef  struct _plyAppPolicyStru                      
{
	char sCrtCde[C_CRT_CDE_LEN];                    /*������Ա*/
	char sCrtTm[TIME_LEN];    		                /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];                    /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			                /*�޸�ʱ��*/
	char sCplyAppNo[C_PLY_APP_NO_LEN];              /*Ͷ������*/
	char sCplyNo[C_PLY_NO_LEN];                     /*������*/
	char sOrigCplyNo[C_ORIG_PLY_NO_LEN];            /*����ԭ������*/
	char sDptCde[C_DPT_CDE_LEN];                    /*��������*/
	char sBsnsTyp[C_BSNS_TYP_LEN];                  /*ҵ����Դ*/
	char sCmpnyAgtCde[C_CMPNY_AGT_CDE_LEN];         /*�����˱���*/
	char sAgtAbr[C_AGT_ABR_LEN];					/*����������*/
	char sAgtAgrNo[C_AGT_AGR_NO_LEN];               /*����Э���*/
	int  nSubCoNo;                                  /*����Э���*/
	char sBrkrCde[C_BRKR_CDE_LEN];                  /*�����˱���*/
	char sBrkrCnm[C_BRKR_CNM_LEN];			        /*����������*/
	char sSlsCde[C_SLS_CDE_LEN];                    /*ҵ��Ա����*/
	char sSlsNme[C_EMP_CNM_LEN];					/*ҵ��Ա����*/
	char sInsrncCmpnyCde[C_INSRNC_CMPNY_CDE_LEN];   /*���չ�˾*/
	char sInsrncCmpnyCnm[C_BRKR_CNM_LEN];           /*���չ�˾����*/
	char sInsrntCde[C_INSRNT_CDE_LEN];              /*�������˱���*/
	char sInsrntNme[C_INSRNT_NME_LEN];              /*������������*/
	char sInsrntAddr[C_INSRNT_ADDR_LEN];            /*�������˵�ַ*/
	char sBnfcCde[C_BNFC_CDE_LEN];                  /*�����˱���*/
	char sBnfcNme[C_BNFC_NME_LEN];                  /*����������*/
	char sAppCde[C_APP_CDE_LEN];                    /*Ͷ���˱���*/
	char sAppNme[C_APP_NME_LEN];                    /*Ͷ��������*/
	char sAppAddr[C_APP_ADDR_LEN];                  /*Ͷ���˵�ַ*/
	char sAppTel[C_APP_TEL_LEN];                    /*Ͷ���˵绰*/
	char sInsrncCde[C_INSRNC_CDE_LEN];              /*���ִ���*/
	char sClausCde[C_CLAUS_CDE_LEN];                /*��������*/
	char sAppTm[DATE_LEN];                          /*Ͷ������*/
/*6.18�޸�*/
	char sInsrncBgnTm[TIME_LEN];                    /*��������*/
	char sInsrncEndTm[TIME_LEN];                    /*����ֹ��*/
	char sSignTm[TIME_LEN];                         /*ǩ������*/
	char sAmtCur[C_AMT_CUR_LEN];                    /*�������*/
	double fInsrncVlu; 			                    /*���ռ�ֵ*/
	double fAmt;                 			        /*���ս��*/
	double fRate;                         			/*����*/
	double fPrm;                          			/*����*/
	double fRdrPrm;              			        /*�����ձ���*/
	double fSumPrm;                          		/*���Ѻϼ�*/
	char sPrmCur[C_PRM_CUR_LEN];                    /*Ӧ�ձ��ѱ���*/
	double fNclmProp;                     		    /*�����˷ѱ���*/
	double fAppntProp;                    		    /*Լ���˷ѱ���*/
	double fCmmProp;                     		    /*�����ѱ���*/
	double fBrkProp;                     		    /*���ͷѱ���*/
	int  nPayTms;				                    /*�ɷ�����*/
	char sAppnt[C_APPNT_LEN];                       /*�ر�Լ��*/
	char sRemark[C_REMARK_LEN];                     /*��ע*/
	char sCrtPrsn[C_CRT_PRSN_LEN];                  /*¼����*/
	char sUndrPrsn[C_UNDR_PRSN_LEN];                /*�˱���*/
	char sUndrTm[TIME_LEN];                        	/*�˱�����*/
	char sRinsrncMrk[C_RINSRNC_MRK_LEN];            /*�ֱ�����*/
	char sCoinsrncMrk[C_COINSRNC_MRK_LEN];          /*������־*/
	char sInputTm[DATE_LEN];                        /*¼������*/
	char sUndrDpt[C_UNDR_DPT_LEN];                  /*�˱�����*/
	char sOprTyp[C_OPR_TYP_LEN];                    /*������ʽ*/
	int  nEdrPrjNo;                                 /*���*/
	char sNextEdrUndrTm[TIME_LEN];                  /*�´����ĺ˱�����*/
	char sUdrMrk[C_UDR_MRK_LEN];                    /*�˱���־*/
	char sRecNo[C_REC_NO_LEN];						/*�ݴ��¼��*/
	char sDptCnm [C_DPT_CNM_LEN];                   /*������������*/
	char sInsrncCnm[C_INSRNC_CNM_LEN];              /*������������*/
	char sUndrPrsnCnm[C_EMP_CNM_LEN];               /*�˱�������*/
	char sUndrDptCnm[C_DPT_CNM_LEN];                /*�˱���������*/
	char sCrtPrsnCnm[C_EMP_CNM_LEN];                /*¼��������*/
	char sAmtCurCnm[C_CUR_CNM_LEN];                 /*�����������*/
  char sAgeLongMrk[C_AGELONG_MRK_LEN];            /*�����ڱ�־*/
	char sCeprnMrk[C_CEPRN_MRK_LEN];                /*��Ӣ�Ĵ�ӡ��־*/
  char sSalegrpCde[C_SALEGRP_CDE_LEN];            /*�����ŶӴ���*/
/*��������*/
	double fSumNclm;		                        /*�����Ŵ����ϼ�*/
	char sZipCde[C_ZIP_CDE_LEN];                    /*��������*/
	char sSttl[C_STTL_LEN];							/*��������ʽ*/
	double fRatio;                                  /*���ڷ���ϵ��*/
  char sCntctPrsnNme[C_CNTCT_PRSN_NME_LEN];       /*��ϵ��*/
  char sAppTyp[C_APP_TYP_LEN];                    /*Ͷ������*/
/*1999.9.7 ZQM */
	char sQueryMrk[C_QUERY_MRK_LEN];									/* ��ѯ��־*/
/*1999.10.8 Zdh */
	char sFstUndrPrsn[ C_FST_UNDR_PRSN_LEN ];                           /*�����˱���*/
  char sFstOpn[ C_FST_OPN_LEN ];                           /*���������*/
  char sChkPrsn[ C_CHK_PRSN_LEN ];                           /*�鳵��*/
  char sChkRec[ C_CHK_REC_LEN ];                           /*�鳵��¼*/
	char sChkTm[ TIME_LEN ];                           /*�鳵ʱ��*/
	char sFstUndrTm[ TIME_LEN ];                           /*����ʱ��*/
/*2000.07.24 zdh*/
	char sOpenCoverNo[ C_OPEN_COVER_NO_LEN ];              /*Open coverЭ���*/
	char sInternetTyp[ C_INTERNET_TYP_LEN ];              /*����ҵ���־'0'-���£�'1'-�����޽�����,'2'-�����н�����*/
} plyAppPolicyStru; 
/* *** Ͷ���������������մ������ݽṹ *** */
typedef struct _plyRdrStru
{
	char sCrtCde[C_CRT_CDE_LEN];			/*������Ա*/
	char sCrtTm[TIME_LEN];    				/*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];			/*�޸���Ա*/
	char sUpdTm[TIME_LEN];					/*�޸�ʱ��*/
	char sCplyAppNo[C_PLY_APP_NO_LEN];		/*Ͷ������*/
	char sRdrCde[C_RDR_CDE_LEN];			/*�ձ����*/
	char sRdrNme[C_RDR_NME_LEN];			/*��������*/
	double fRdrAmt;							/*���ս��/�⳥�޶�*/
	double fRdrPerAmt;						/*ÿ���⳥�޶�*/
	double fRate;                  			/*����*/
	double fRdrPrm;							/*����*/
	char sDesc[C_DESC_LEN];					/*����/��ע*/
	char sNclmDesc[C_NCLM_DESC_LEN];		/*����˵��*/
	char sDelMrk[C_DEL_MRK_LEN];			/*ע�˱�־*/
	char sRecNo[C_REC_NO_LEN];				/*�ݴ��¼��*/
/*��������*/
	char sObjNo[C_OBJ_NO_LEN];				/*������*/
	double fSeatdayNum;						/*��(��)*/
	double fRdrPrmVar;						/*���ѱ仯*/
	double fRdrDis;							/*������Լ���˷�*/
	double fRdrNclm;						/*�����������˷�*/
	double fRdrDisAmt;						/*���¸�����Լ���˷�*/
	double fRdrNclmAmt;						/*���¸����������˷�*/
/*6.18����*/
	double fRdrdisPrm;						/*����ǰ����*/
	double fRdrnclmProp;					/*�������*/
}plyRdrStru;
/*Լ��˾��(��������)*/
typedef  struct _plyDrvStru 
{
	char sCrtCde[C_CRT_CDE_LEN];                   /*������Ա*/
	char sCrtTm[TIME_LEN];    		               /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];                   /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			               /*�޸�ʱ��*/
	char sEdrAppNo[C_EDR_APP_NO_LEN];              /*��    ��*/
	char sObjNo[C_OBJ_NO_LEN];                     /*������*/
	char sDsqnNo[C_DSQN_NO_LEN];                   /*Լ��˾�����*/
	char sDrvNme[C_DRV_NME_LEN];                   /*˾������*/
	char sIdCde[C_ID_CDE_LEN];                     /*���֤����*/
	char sBirthday[DATE_LEN];                      /*��������*/
	char sSex[C_SEX_LEN];                          /*�Ա�*/
	char sMrgCde[C_MRG_CDE_LEN];                   /*����״��*/
	char sLcnNo[C_LCN_NO_LEN];                     /*��ʻִ�պ���*/
	char sProfessionCde[C_PROFESSION_CDE_LEN];     /*ְҵ*/
	char sIssOrg[C_ISS_ORG_LEN];                   /*���ջ���*/
	char sIssDte[DATE_LEN];                        /*��������*/
	char sDrkMrk[C_DRK_MRK_LEN];                   /*�����Ⱥñ�־*/
	char sEduCde[C_EDU_CDE_LEN];                   /*ѧ��*/
	char sRemark[C_REMARK_LEN];                    /*��ע*/
	char sDelMrk[C_DEL_MRK_LEN];                   /*ע�˱�־*/
	char sRecNo[C_REC_NO_LEN];					   /*�ݴ��¼��*/
/*3.23--WQ--����*/
	char sDrvTyp[C_DRV_TYP_LEN];				   /*׼�ݳ���*/
}plyDrvStru;
/* *** Ͷ��������������ﴦ�����ݽṹ*** */ 
typedef struct _plyTgtObjStru
{
	char sCrtCde[C_CRT_CDE_LEN];				/*������Ա*/
	char sCrtTm[TIME_LEN];    					/*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];				/*�޸���Ա*/
	char sUpdTm[TIME_LEN];						/*�޸�ʱ��*/
	char sCplyAppNo[C_PLY_APP_NO_LEN];			/*Ͷ������*/
	int  nTgtObjNo;         					/*��������*/
	char sItmCls[C_ITM_CLS_LEN];				/*��Ŀ���*/
	double fTgtObjAmt;							/*����*/
	char sNclmDesc[C_NCLM_DESC_LEN];			/*����˵��*/
	char sRecNo[C_REC_NO_LEN];					/*�ݴ��¼��*/
	char sItmClsNme[C_ITM_CLS_NME_LEN];			/*��Ŀ�������*/
}plyTgtObjStru;
/* *** Ͷ����������������(������) *** */
typedef  struct _plyTgtobjtlbStru 
{
	char sCrtCde[C_CRT_CDE_LEN];				/*������Ա*/
	char sCrtTm[TIME_LEN];    					/*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];				/*�޸���Ա*/
	char sUpdTm[TIME_LEN];						/*�޸�ʱ��*/
	char sCplyAppNo[C_PLY_APP_NO_LEN];			/*Ͷ������*/
	int  nTgtObjNo;								/*��������*/
	char sTgtObjFld1[L_TGT_OBJ_FLD1_LEN];       /*������ֶ�1*/
	char sTgtObjFld2[L_TGT_OBJ_FLD1_LEN];       /*������ֶ�2*/
	char sTgtObjFld3[L_TGT_OBJ_FLD1_LEN];       /*������ֶ�3*/
	char sTgtObjFld4[L_TGT_OBJ_FLD1_LEN];       /*������ֶ�4*/
	char sTgtObjFld5[L_TGT_OBJ_FLD1_LEN];       /*������ֶ�5*/
	char sTgtObjFld6[L_TGT_OBJ_FLD1_LEN];       /*������ֶ�6*/
	char sTgtObjFld7[L_TGT_OBJ_FLD1_LEN];       /*������ֶ�7*/
	char sTgtObjFld8[L_TGT_OBJ_FLD1_LEN];       /*������ֶ�8*/
	char sTgtObjFld9[L_TGT_OBJ_FLD1_LEN];       /*������ֶ�9*/
	char sTgtObjFld10[L_TGT_OBJ_FLD1_LEN];      /*������ֶ�10*/
	char sRecNo[C_REC_NO_LEN];					/*�ݴ��¼��*/               
} plyTgtobjtlbStru ;
/* *** Ͷ������������ݽṹ *** */ 
typedef struct _plyPayStru
{
	char sCrtCde[C_CRT_CDE_LEN];              /*������Ա*/
	char sCrtTm[TIME_LEN];    		          /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];              /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			          /*�޸�ʱ��*/
	char sCplyAppNo[C_PLY_APP_NO_LEN];        /*Ͷ������*/
	int  nTms;				                  /*�ɷ��ڱ�*/
	char sRcptNo[C_RCPT_NO_LEN];              /*�վݺ�*/
	char sPayPrsnCde[C_PAY_PRSN_CDE_LEN];     /*�����˱���*/
	char sPayPrsnNme[C_PAY_PRSN_NME_LEN];     /*����������*/
	double fGetPrm;					          /*Ӧ�ձ���*/
	char sPayMdeCde[C_PAY_MDE_CDE_LEN];       /*���ʽ*/
	char sAccntNo[C_ACCNT_NO_LEN];            /*�����ʺ�*/
	char sPayLmtTm[DATE_LEN];                 /*�ɷѽ�ֹ����*/
	double fGotPrm;                           /*ʵ�ձ���*/
	char sPayStrtTm[DATE_LEN];                /*�ɷ���ʼ����*/
	char sPayTm[DATE_LEN];                    /*�շ�����*/
	char sInsrncCde[C_INSRNC_CDE_LEN];        /*����*/
	char sCurTyp[C_CUR_TYP_LEN];              /*����*/
	char sRecNo[C_REC_NO_LEN];				  /*�ݴ��¼��*/
/*����*/
	char sPrnTyp[C_PRN_TYP_LEN];              /*��֤����*/
}plyPayStru;
/*����--���(����)*/
typedef  struct _plyVhlStru 
{
	char sCrtCde[C_CRT_CDE_LEN];           /*������Ա*/
	char sCrtTm[TIME_LEN];    		       /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];           /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			       /*�޸�ʱ��*/
	char sCplyAppNo[C_PLY_APP_NO_LEN];     /*��    ��*/
	char sObjNo[C_OBJ_NO_LEN];             /*������*/
	char sBrndCde[C_BRND_CDE_LEN];         /*���Ƴ�����*/
	double fSetNum;						   /*��λ��*/
	double fTonNum;						   /*��λ��*/
	char sLcnNo[C_LCN_NO_LEN];             /*���պ���/�ƶ�֤��*/
	char sFrnlcn[C_FRNLCN_LEN];            /*��������*/
	char sEngNo[C_ENG_NO_LEN];             /*��������*/
	char sVhlFrm[C_VHL_FRM_LEN];           /*���ܺ�*/
	double fExtMsr;						   /*������*/
	char sFitCnt[C_FIT_CNT_LEN];           /*��Ҫ���*/
	char sColour[C_COLOUR_LEN];            /*������ɫ*/
	char sFlwMrk[C_FLW_MRK_LEN];           /*覴�ע��*/
	char sBuyDte[DATE_LEN];                /*��������*/
	char sBldYear[C_BLD_YEAR_LEN];         /*�������*/
	char sVhlTyp[C_VHL_TYP_LEN];           /*��������*/
	char sOwnAtr[C_OWN_ATR_LEN];           /*��������*/
	char sUseAtr[C_USE_ATR_LEN];           /*ʹ������*/
	char sRgnCde[C_RGN_CDE_LEN];           /*��ʻ����*/
	char sDrvApt[C_DRV_APT_LEN];           /*Լ��˾����־*/
	char sChkCde[C_CHK_CDE_LEN];           /*�鳵���*/
	char sDevCde[C_DEV_CDE_LEN];           /*����װ��*/
	double fTgtAmt;                        /*������Ͷ�����*/
	double fInsrncVlu;                     /*�����ձ��ռ�ֵ(���ü�ֵ)*/
	double fBbscPrm;                       /*�����ջ�������*/
	double fRate;                          /*�����շ���*/
	double fTgtPrm;                        /*�����ձ���*/
	char sNclmDesc[C_NCLM_DESC_LEN];       /*��������*/
	double fTplPrm;                        /*�����������ձ���*/
	double fTplclmLmt;                     /*�������������⳥�޶�*/
	char sTnclmDesc[C_TNCLM_DESC_LEN];     /*������������������*/
	char sAppMrk[C_APP_MRK_LEN];           /*���Ͷ�����*/
	char sRemark[C_REMARK_LEN];            /*��ע*/
    char sFstRegDte[DATE_LEN];             /*���εǼ�����*/
	double fNdrvPrm;                       /*��Լ��˾������*/
	double fBinsNclmAmt;                   /*�����������Ŵ����*/
	double fTplpNclmAmt;                   /*�����������������Ŵ����*/
	double fSumPrm;                        /*���Ѻϼ�*/
	char sBuyvhlNo[C_BUYVHL_NO_LEN];       /*������Ʊ��*/
	char sInsCrd[C_INS_CRD_LEN];           /*������*/
	double fObjDis;                        /*Լ���˷�*/
	double fObjNclm;                       /*�����˷�*/
	double fNbdisAmt;                      /*����������Լ���˷�*/
	double fTgtAmtVar;                     /*�����ձ���仯*/
	double fTgtPrmVar;                     /*�����ձ��ѱ仯*/
	double fTplPrmVar;                     /*�����������ձ��ѱ仯*/
	double fNtpldisAmt;                    /*����������������Լ���˷�*/
	double fNtplclmAmt;                    /*���������������������˷�*/
	double fNbclmAmt;                      /*���������������˷�*/
	char sRecNo[C_REC_NO_LEN];			   /*�ݴ��¼��*/
/*5.19����*/
	double fTgtdisPrm;                     /*����ǰ�����ձ���*/
	double fTpldisPrm;                     /*����ǰ�����������ձ���*/
	double fSumdisPrm;                     /*����ǰ���Ѻϼ�*/
	double fSumTgtNclm;                    /*�����Ŵ����ϼ�*/
/*6.18����*/
    double fTgtnclmProp;				   /*�������������*/
    double fTplnclmProp;				   /*�������������������*/
/*6.30����*/
	char sBrndCnm[C_BRND_CNM_LEN];         /*���Ƴ�����������*/
	char sDelMrk[C_DEL_MRK_LEN];		/*ע�˱�־*/
}plyVhlStru;
/* *** Ͷ���������������ձ�Ĵ������ݽṹ *** */
typedef struct _plyGoTgtStru
{
	char sCrtCde[C_CRT_CDE_LEN];                /*������Ա*/
	char sCrtTm[TIME_LEN];    		            /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];                /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			            /*�޸�ʱ��*/
	char sCplyAppNo[C_PLY_APP_NO_LEN];          /*Ͷ������*/
	char sCrgoCde[C_CRGO_CDE_LEN];              /*�������ͱ���*/
	char sCrgoCnm[C_CRGO_CNM_LEN];				/*��������*/
	char sCrgoDesc[C_CRGO_DESC_LEN];            /*��������*/
	char sInvcNo[C_INVC_NO_LEN];                /*��Ʊ�ᵥ��*/
	char sSailNo[C_SAIL_NO_LEN];                /*����*/
	char sPrnFrm[C_PRN_FRM_LEN];                /*�������ڴ�ӡ��ʽ*/
	char sCarriageCde[C_CARRIAGE_CDE_LEN];      /*���䷽ʽ*/                        
	char sVslLvlCde[C_VSL_LVL_CDE_LEN];         /*��������*/
	char sFromPrt[C_FROM_PRT_LEN];              /*���˸�*/
	char sToPrt[C_TO_PRT_LEN];                  /*Ŀ�ĸ�*/
	char sFrmPrtAra[C_FRM_PRT_ARA_LEN];         /*���˸����ڹ��ҵ�������*/
	char sToPrtAra[C_TO_PRT_ARA_LEN];           /*Ŀ�ĸ����ڹ��ҵ�������*/
	char sPassPrt[C_PASS_PRT_LEN];              /*;����*/
	char sSrvyCde[C_SRVY_CDE_LEN];              /*�鿱�����˱���*/
	char sSrvyCnm[C_SRVY_CNM_LEN];              /*�鿱����������*/
	char sUndrCndtn[C_UNDR_CNDTN_LEN];          /*�б�����*/
	double fTgtAmt;                        	    /*���ս��*/
	double fRate;                               /*����*/
	double fTgtPrm;                     		/*����*/
	char sPayAddr[C_PAY_ADDR_LEN];              /*�����ص�*/
	char sRecNo[C_REC_NO_LEN];					/*�ݴ��¼��*/
/*2000.07.24 zdh*/
	char sReceiptNo[ C_RECEIPT_NO_LEN ];                           /*�ᵥ��*/
	char sCrgoCls[ C_CRGO_CLS_LEN ];                           /*����������*/
	char sCrgoName[ C_CRGO_NAME_LEN ];                           /*Ʒ������ */
	char samount[ C_AMOUNT_LEN ];                           /*����+��λ*/
	char sPackCde[ C_PACK_CDE_LEN ];                           /*��װ��ʽ����*/
	char sMark[ C_MARK_LEN ];                           /*��ͷ*/
	double fInvcAmt                     ;                           /*��Ʊ���*/
	char sInvcAmtCur[ C_INVC_AMT_CUR_LEN ];                           /*��Ʊ������*/
	char sNoRepay[ C_NO_REPAY_LEN ];                           /*����*/
	char sCreditId[ C_CREDIT_ID_LEN ];                           /*����֤��ʶ*/
	char sLostDesc[ C_LOST_DESC_LEN ];                           /*�����⸶��¼*/
	char sContainer[ C_CONTAINER_LEN ];                           /*��װ��*/
	char sAddRisk[ C_ADD_RISK_LEN ];                           /*�������ӷ���*/
	char sPackCnm[C_PACK_CNM_LEN];
	char sSrvyAddr[ C_SRVY_ADDR_LEN ];                           /*�鿱��ַ*/
	char sEdrInfo[ C_EDR_INFO_LEN ];                           /*������Ϣ*/
}plyGoTgtStru;
/* *** Ͷ������������ҵ�Ʋ��ձ�Ĵ������ݽṹ *** */ 
typedef struct _plyEmpTgtStru
{
	char sCrtCde[C_CRT_CDE_LEN];				/*������Ա*/
	char sCrtTm[TIME_LEN];    					/*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];				/*�޸���Ա*/
	char sUpdTm[TIME_LEN];						/*�޸�ʱ��*/
	char sCplyAppNo[C_PLY_APP_NO_LEN];          /*Ͷ������*/
	char sTgtAddr[C_TGT_ADDR_LEN];              /*��ĵ�ַ*/
	char sTgtZipCde[C_TGT_ZIP_CDE_LEN];         /*��ĵ�ַ�ʱ�*/
	char sMaterial[C_MATERIAL_LEN];             /*��Ҫԭ���ϼ�����*/
	char sTech[C_TECH_LEN];                     /*��������*/
	char sTrdClsCde[C_TRD_CLS_CDE_LEN];         /*��ҵ���ͱ���*/
	char sSafeDev[C_SAFE_DEV_LEN];              /*��ȫ��ʩ���*/
	char sBldTypCde[C_BLD_TYP_CDE_LEN];         /*�������ͱ���*/
	char sEnvirAround[C_ENVIR_AROUND_LEN];      /*��Χ���*/
	double fFromFireh;                			/*�����Ӿ���*/
	int   nLostTms;                      		/*������ʧ���֮����*/
	double fLostAmt;       					    /*������ʧ���֮���*/
	char sLostCaus[C_LOST_CAUS_LEN];            /*������ʧ���֮ԭ��*/
	double fTgtAmt;                 			/*���ս��*/
	double fTgtPrm;            				    /*��    ��*/
	double fRate;                				/*��    ��*/
	char sNclmDesc[C_NCLM_DESC_LEN];            /*����˵��*/
	char sRecNo[C_REC_NO_LEN];					/*�ݴ��¼��*/
    char sRiskLvlCde[C_RISK_LVL_CDE_LEN];       /*���յȼ�����*/
    double fKeepAmt;                            /*������*/
	double fCoeff;                              /*ϵ  ��*/
} plyEmpTgtStru;
/* *** Ͷ������������ͥ�Ʋ���Ч�����ձ�Ĵ������ݽṹ *** */ 
typedef struct _plyFamTgtStru
{
	char sCrtCde[C_CRT_CDE_LEN];                 /*������Ա*/
	char sCrtTm[TIME_LEN];    		             /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];                 /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			             /*�޸�ʱ��*/
	char sCplyAppNo[C_PLY_APP_NO_LEN];           /*Ͷ������*/
	char sBsnsAtrb[C_BSNS_ATRB_LEN];             /*ҵ������*/
	char sHseStrc[C_HSE_STRC_LEN];               /*���ݽ����ṹ*/
	char sPrptyAddr[C_PRPTY_ADDR_LEN];           /*�Ʋ������ַ*/
	double fTgtAmt;                        		 /*���ս��*/
	double fSaveRate;                        	 /*���մ�����*/
	double fSaveAmt;                    		 /*���մ���*/
	double fCnvrtProp;                			 /*�������*/
	double fTgtPrm;                   			 /*��    ��*/
	char   sPerNclmDecl[C_PER_NCLM_DECL_LEN];    /*ÿ���¹�����˵��*/
	char sRecNo[C_REC_NO_LEN];					 /*�ݴ��¼��*/
}	plyFamTgtStru;
/* *** Ͷ������������ı�(������) *** */
typedef  struct _plyTgttlbStru 
{
	char sCrtCde[C_CRT_CDE_LEN];			  /*������Ա*/
	char sCrtTm[TIME_LEN];    				  /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];			  /*�޸���Ա*/
	char sUpdTm[TIME_LEN];					  /*�޸�ʱ��*/
	char sCplyAppNo[C_PLY_APP_NO_LEN];        /*Ͷ������*/
	char sTgtFld1[L_TGT_FLD1_LEN];            /*����ֶ�1*/
	char sTgtFld2[L_TGT_FLD1_LEN];            /*����ֶ�2*/
	char sTgtFld3[L_TGT_FLD1_LEN];            /*����ֶ�3*/
	char sTgtFld4[L_TGT_FLD1_LEN];            /*����ֶ�4*/
	char sTgtFld5[L_TGT_FLD1_LEN];            /*����ֶ�5*/
	char sTgtFld6[L_TGT_FLD1_LEN];            /*����ֶ�6*/
	char sTgtFld7[L_TGT_FLD1_LEN];            /*����ֶ�7*/
	char sTgtFld8[L_TGT_FLD1_LEN];            /*����ֶ�8*/
	char sTgtFld9[L_TGT_FLD1_LEN];            /*����ֶ�9*/
	char sTgtFld10[L_TGT_FLD1_LEN];           /*����ֶ�10*/
	char sTgtFld11[L_TGT_FLD1_LEN];           /*����ֶ�11*/
	char sTgtFld12[L_TGT_FLD1_LEN];           /*����ֶ�12*/
	char sTgtFld13[L_TGT_FLD1_LEN];           /*����ֶ�13*/
	char sTgtFld14[L_TGT_FLD1_LEN];           /*����ֶ�14*/
	char sTgtFld15[L_TGT_FLD1_LEN];           /*����ֶ�15*/
	char sTgtFld16[L_TGT_FLD1_LEN];           /*����ֶ�16*/
	char sTgtFld17[L_TGT_FLD1_LEN];           /*����ֶ�17*/
	char sTgtFld18[L_TGT_FLD1_LEN];           /*����ֶ�18*/
	char sTgtFld19[L_TGT_FLD1_LEN];           /*����ֶ�19*/
	char sTgtFld20[L_TGT_FLD1_LEN];           /*����ֶ�20*/
	char sTgtFld21[L_TGT_FLD1_LEN];           /*����ֶ�21*/
	char sTgtFld22[L_TGT_FLD1_LEN];           /*����ֶ�22*/
	char sTgtFld23[L_TGT_FLD1_LEN];           /*����ֶ�23*/
	char sTgtFld24[L_TGT_FLD1_LEN];           /*����ֶ�24*/
	char sTgtFld25[L_TGT_FLD1_LEN];           /*����ֶ�25*/
	char sTgtFld26[L_TGT_FLD1_LEN];           /*����ֶ�26*/
	char sTgtFld27[L_TGT_FLD1_LEN];           /*����ֶ�27*/
	char sTgtFld28[L_TGT_FLD1_LEN];           /*����ֶ�28*/
	char sTgtFld29[L_TGT_FLD1_LEN];           /*����ֶ�29*/
	char sTgtFld30[L_TGT_FLD1_LEN];           /*����ֶ�30*/
	char sTgtFld31[L_TGT_FLD1_LEN];           /*����ֶ�31*/
	char sTgtFld32[L_TGT_FLD1_LEN];           /*����ֶ�32*/
	char sTgtFld33[L_TGT_FLD1_LEN];           /*����ֶ�33*/
	char sTgtFld34[L_TGT_FLD1_LEN];           /*����ֶ�34*/
	char sTgtFld35[L_TGT_FLD1_LEN];           /*����ֶ�35*/
	char sTgtFld36[L_TGT_FLD1_LEN];           /*����ֶ�36*/
	char sTgtFld37[L_TGT_FLD1_LEN];           /*����ֶ�37*/
	char sTgtFld38[L_TGT_FLD1_LEN];           /*����ֶ�38*/
	char sTgtFld39[L_TGT_FLD1_LEN];           /*����ֶ�39*/
	char sTgtFld40[L_TGT_FLD1_LEN];           /*����ֶ�40*/
	char sRecNo[C_REC_NO_LEN];				  /*�ݴ��¼��*/
} plyTgttlbStru ;
/* *** �˱����һ��Grid���ݽṹ *** */ 
typedef struct _plyUndrStru
{
	char sCrtCde[C_CRT_CDE_LEN];            /*������Ա*/
	char sCrtTm[TIME_LEN];    		        /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];            /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			        /*�޸�ʱ��*/
	char sDocNo[C_DOC_NO_LEN];              /*���ݺ�*/
	char sPrnTyp[C_PRN_TYP_LEN];            /*��֤����*/
	char sUndrTm[TIME_LEN];                 /*�˱�����*/
	char sDptCde[C_DPT_CDE_LEN];            /*��������*/
	char sUndrPrsn[C_UNDR_PRSN_LEN];        /*�˱���*/
	char sUndrOpn[C_UNDR_OPN_LEN];          /*�˱����*/
	int  nSubCoNo;                          /*����Э���*/
	char sDptCnm[C_DPT_CNM_LEN];           /*������������*/
	char sUndrPrsnCnm[C_EMP_CNM_LEN];       /*�˱�������*/
} plyUndrStru;
        
/* *** ���뵥�����ĵ����� *** */
typedef  struct _plyEdrappStru 
{
	char sCrtCde[C_CRT_CDE_LEN];                       /*������Ա*/
	char sCrtTm[TIME_LEN];    		                   /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];                       /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			                   /*�޸�ʱ��*/
	char sEdrAppNo[C_EDR_APP_NO_LEN];                  /*���뵥��*/
	char sEdrNo[C_EDR_NO_LEN];                         /*������*/
	char sCplyNo[C_PLY_NO_LEN];                        /*������*/
	char sEdrTyp[C_EDR_TYP_LEN];                       /*��������*/
	char sAppPrsnCde[C_APP_PRSN_CDE_LEN];              /*�����˱���*/
	char sAppPrsnNme[C_APP_PRSN_NME_LEN];              /*����������*/
	char sAppPrsnAddr[C_APP_PRSN_ADDR_LEN];            /*��ַ*/
	char sAppPrsnTel[C_APP_PRSN_TEL_LEN];              /*�绰*/
	char sEdrAppTm[DATE_LEN];                          /*��������*/
	char sEdrRsn[C_EDR_RSN_LEN];                       /*����ԭ��*/
	char sEdrCtnt[C_EDR_CTNT_LEN];                     /*��������*/
	double fAmtVar;                                    /*����仯*/
	double fPrmVar;                           		   /*���ѱ仯*/ 
	double fNclmAmt;                                   /*�����˷�*/
	double fAppntAmt;                                  /*Լ���˷�*/
	double fNdisAmt;                      		       /*����Լ���˷�*/
	double fNnclmAmt;                           	   /*���������˷�*/
	char sOrigCplyNo[C_ORIG_PLY_NO_LEN];			   /*����ԭ������*/
	char sDptCde[C_DPT_CDE_LEN];                       /*��������*/
	char sBsnsTyp[C_BSNS_TYP_LEN];                     /*ҵ����Դ*/
	char sCmpnyAgtCde[C_CMPNY_AGT_CDE_LEN];            /*�����˱���*/
	int  nSubCoNo;                                     /*����Э���*/
	char sAgtAgrNo[C_AGT_AGR_NO_LEN];                  /*����Э���*/
	char sBrkrCde[C_BRKR_CDE_LEN];                     /*�����˱���*/
	char sSlsCde[C_SLS_CDE_LEN];                       /*ҵ��Ա����*/
	char sInsrncCmpnyCde[C_INSRNC_CMPNY_CDE_LEN];      /*���չ�˾*/
	char sInsrntCde[C_INSRNT_CDE_LEN];                 /*�������˱���*/
	char sInsrntNme[C_INSRNT_NME_LEN];                 /*������������*/
	char sInsrntAddr[C_INSRNT_ADDR_LEN];               /*�������˵�ַ*/
	char sBnfcCde[C_BNFC_CDE_LEN];                     /*�����˱���*/
	char sBnfcNme[C_BNFC_NME_LEN];                     /*����������*/
	char sAppCde[C_APP_CDE_LEN];                       /*Ͷ���˱���*/
	char sAppNme[C_APP_NME_LEN];                       /*Ͷ��������*/
	char sAppAddr[C_APP_ADDR_LEN];                     /*Ͷ���˵�ַ*/
	char sAppTel[C_APP_TEL_LEN];                       /*Ͷ���˵绰*/
	char sInsrncCde[C_INSRNC_CDE_LEN];                 /*���ִ���*/
	char sClausCde[C_CLAUS_CDE_LEN];                   /*��������*/
	char sAppTm[DATE_LEN];                             /*Ͷ������*/
/*6.18�޸�*/
	char sInsrncBgnTm[TIME_LEN];                       /*��������*/
	char sInsrncEndTm[TIME_LEN];                       /*����ֹ��*/
	char sSignTm[TIME_LEN];                            /*ǩ������*/
	char sAmtCur[C_AMT_CUR_LEN];                       /*�������*/
	double fInsrncVlu;                                 /*���ռ�ֵ*/
	double fAmt;                                       /*���ս��*/
	double fRate;                                      /*����*/
	double fPrm;                                       /*����*/
	double fRdrPrm;                                    /*�����ձ���*/
	double fSumPrm;                                    /*���Ѻϼ�*/
	char   sPrmCur[C_PRM_CUR_LEN];                     /*Ӧ�ձ��ѱ���*/
	double fNclmProp;                                  /*�����˷ѱ���*/
	double fAppntProp;                                 /*Լ���˷ѱ���*/
	double fCmmProp;                                   /*�����ѱ���*/
	double fBrkProp;                                   /*���ͷѱ���*/
	int  nPayTms;                                      /*�ɷ�����*/
	char sAppnt[C_APPNT_LEN];                          /*�ر�Լ��*/
	char sRemark[C_REMARK_LEN];                        /*��ע*/
	char sCrtPrsn[C_CRT_PRSN_LEN];                     /*¼����*/
	char sUndrPrsn[C_UNDR_PRSN_LEN];                   /*�˱���*/
	char sUndrTm [TIME_LEN];                           /*�˱�����*/
	char sRinsrncMrk[C_RINSRNC_MRK_LEN];               /*�ֱ�����*/
	char sCoinsrncMrk[C_COINSRNC_MRK_LEN];             /*������־*/
	char sInputTm [DATE_LEN];                          /*¼������*/
	char sUndrDpt[C_UNDR_DPT_LEN];                     /*�˱�����*/
	char sOprTyp[C_OPR_TYP_LEN];                       /*������ʽ*/
	int  nEdrPrjNo;                                    /*���*/
	char sNextEdrUndrTm[TIME_LEN];                     /*�´����ĺ˱�����*/
	char sDptCnm [C_DPT_CNM_LEN];                      /*������������*/
	char sInsrncCnm[C_INSRNC_CNM_LEN];                 /*������������*/
	char sUndrPrsnCnm[C_EMP_CNM_LEN];                  /*�˱�������*/
	char sUndrDptCnm[C_DPT_CNM_LEN];                   /*�˱���������*/
	char sCrtPrsnCnm[C_EMP_CNM_LEN];                   /*¼��������*/
	char sSlsCnm [C_EMP_CNM_LEN];                      /*ҵ��Ա����*/
	char sAgtNme [C_AGT_NME_LEN];                      /*����������*/
	char sAmtCurCnm[C_CUR_CNM_LEN];                    /*�����������*/
  	char sAgeLongMrk[C_AGELONG_MRK_LEN];				/*�����ڱ�־*/
	char sCeprnMrk[C_CEPRN_MRK_LEN];					/*��Ӣ�Ĵ�ӡ��־*/
   	char sUdrMrk[C_UDR_MRK_LEN];						/*�˱���־*/
   	char sSalegrpCde[C_SALEGRP_CDE_LEN];				/*�����ŶӴ���*/
	double fGotPrm;                                     /*ʵ�ձ���*/
/*��������*/
	double fSumNclm;		                            /*�����Ŵ����ϼ�*/
	char sZipCde[C_ZIP_CDE_LEN];                        /*��������*/
	char sSttl[C_STTL_LEN];								/*��������ʽ*/
	double fRatio;                                      /*���ڷ���ϵ��*/
  char sCntctPrsnNme[C_CNTCT_PRSN_NME_LEN];           /*��ϵ��*/
  char sAppTyp[C_APP_TYP_LEN];                        /*Ͷ������*/
/*1999.9.7 ZQM*/
	char sQueryMrk[C_QUERY_MRK_LEN];					/* ��ѯ��־*/
	/*1999.10.8 Zdh */
	char sFstUndrPrsn[ C_FST_UNDR_PRSN_LEN ];                           /*�����˱���*/
  char sFstOpn[ C_FST_OPN_LEN ];                           /*���������*/
  char sChkPrsn[ C_CHK_PRSN_LEN ];                           /*�鳵��*/
  char sChkRec[ C_CHK_REC_LEN ];                           /*�鳵��¼*/
	char sChkTm[ TIME_LEN ];                           /*�鳵ʱ��*/
	char sFstUndrTm[ TIME_LEN ];                           /*����ʱ��*/
  double fSaveAmtVar;										/* ����仯  zdh1222*/
  /*2000.07.24 zdh*/
	char sOpenCoverNo[ C_OPEN_COVER_NO_LEN ];              /*Open coverЭ���*/
	char sInternetTyp[ C_INTERNET_TYP_LEN ];              /*����ҵ���־'0'-���£�'1'-�����޽�����,'2'-�����н�����*/
} plyEdrappStru; 
/* *** �����ձ�(���뵥�����ĵ�����) *** */
typedef  struct _plyEdrapprdrStru 
{
	char sCrtCde[C_CRT_CDE_LEN];		/*������Ա*/
	char sCrtTm[TIME_LEN];    			/*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];		/*�޸���Ա*/
	char sUpdTm[TIME_LEN];				/*�޸�ʱ��*/
	char sEdrAppNo[C_EDR_APP_NO_LEN];	/*���뵥��*/
	char sRdrCde[C_RDR_CDE_LEN];		/*�ձ����*/
	char sRdrNme[C_RDR_NME_LEN];		/*��������*/
	double fRdrAmt;						/*���ս��/�⳥�޶�*/
	double fRdrPerAmt;				    /*ÿ���⳥�޶�*/
	double fRate;                  		/*����*/
	double fRdrPrm;						/*����*/
	char sDesc[C_DESC_LEN];             /*����*/
	char sNclmDesc[C_NCLM_DESC_LEN];    /*����˵��*/
	char sDelMrk[C_DEL_MRK_LEN];		/*ע�˱�־*/
	char sRecNo[C_REC_NO_LEN];			/*�ݴ��¼��*/
/*��������*/
	char sObjNo[C_OBJ_NO_LEN];          /*������*/
	double fSeatdayNum;                 /*��(��)*/
	double fRdrPrmVar;                  /*���ѱ仯*/
	double fRdrDis;                     /*������Լ���˷�*/
	double fRdrNclm;                    /*�����������˷�*/
	double fRdrDisAmt;                  /*���¸�����Լ���˷�*/
	double fRdrNclmAmt;                 /*���¸����������˷�*/
/*6.18����*/
	double fRdrdisPrm;					/*����ǰ����*/
	double fRdrnclmProp;				/*�������*/
} plyEdrapprdrStru;
/* *** ���ı����(���뵥�����ĵ�����) *** */ 
typedef  struct _plyCplytgtobjAppStru 
{
	char sCrtCde[C_CRT_CDE_LEN];				/*������Ա*/
	char sCrtTm[TIME_LEN];    					/*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];				/*�޸���Ա*/
	char sUpdTm[TIME_LEN];						/*�޸�ʱ��*/
	char sEdrAppNo[C_EDR_APP_NO_LEN];			/*���뵥��*/
	int  nTgtObjNo;         					/*��������*/
	char sItmCls[C_ITM_CLS_LEN];				/*��Ŀ���*/
	double fTgtObjAmt;							/*����*/
	char sNclmDesc[C_NCLM_DESC_LEN];			/*����˵��*/
	char sRecNo[C_REC_NO_LEN];					/*�ݴ��¼��*/
	char sItmClsNme[C_ITM_CLS_NME_LEN];			/*��Ŀ�������*/
} plyCplytgtobjAppStru;
/* *** ���뵥�����ĵ�������(������) *** */
typedef  struct _plyEdrapptgtobjStru 
{
	char sCrtCde[C_CRT_CDE_LEN];                 /*������Ա*/
	char sCrtTm[TIME_LEN];    		             /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];                 /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			             /*�޸�ʱ��*/
	char sEdrAppNo[C_EDR_APP_NO_LEN];			 /*���뵥��*/
	int  nTgtObjNo;						         /*��������*/
	char sTgtObjFld1[L_TGT_OBJ_FLD1_LEN];        /*������ֶ�1*/
	char sTgtObjFld2[L_TGT_OBJ_FLD1_LEN];        /*������ֶ�2*/
	char sTgtObjFld3[L_TGT_OBJ_FLD1_LEN];        /*������ֶ�3*/
	char sTgtObjFld4[L_TGT_OBJ_FLD1_LEN];        /*������ֶ�4*/
	char sTgtObjFld5[L_TGT_OBJ_FLD1_LEN];        /*������ֶ�5*/
	char sTgtObjFld6[L_TGT_OBJ_FLD1_LEN];        /*������ֶ�6*/
	char sTgtObjFld7[L_TGT_OBJ_FLD1_LEN];        /*������ֶ�7*/
	char sTgtObjFld8[L_TGT_OBJ_FLD1_LEN];        /*������ֶ�8*/
	char sTgtObjFld9[L_TGT_OBJ_FLD1_LEN];        /*������ֶ�9*/
	char sTgtObjFld10[L_TGT_OBJ_FLD1_LEN];       /*������ֶ�10*/
	char sRecNo[C_REC_NO_LEN];					 /*�ݴ��¼��*/
} plyEdrapptgtobjStru ;
/* *** �����(���뵥�����ĵ�����) *** */ 
typedef  struct _plyEdrapppayStru 
{
	char sCrtCde[C_CRT_CDE_LEN];               /*������Ա*/
	char sCrtTm[TIME_LEN];    	               /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];               /*�޸���Ա*/
	char sUpdTm[TIME_LEN];		               /*�޸�ʱ��*/
	char sEdrAppNo[C_EDR_APP_NO_LEN];          /*���뵥��*/
	int  nTms;				                   /*�ɷ��ڱ�*/
	char sRcptNo[C_RCPT_NO_LEN];               /*�վݺ�*/
	char sPayPrsnCde[C_PAY_PRSN_CDE_LEN];      /*�����˱���*/
	char sPayPrsnNme[C_PAY_PRSN_NME_LEN];      /*����������*/
	double fGetPrm;					           /*Ӧ�ձ���*/
	char sPayMdeCde[C_PAY_MDE_CDE_LEN];        /*���ʽ*/
	char sAccntNo[C_ACCNT_NO_LEN];             /*�����ʺ�*/
	char sPayLmtTm[DATE_LEN];                  /*�ɷѽ�ֹ����*/
	double fGotPrm;                            /*ʵ�ձ���*/
	char sPayStrtTm[DATE_LEN];                 /*�ɷ���ʼ����*/
	char sPayTm[DATE_LEN];					   /*�շ�����*/
	char sInsrncCde[C_INSRNC_CDE_LEN];         /*����*/
	char sCurTyp[C_CUR_TYP_LEN];               /*����*/
	char sRecNo[C_REC_NO_LEN];				   /*�ݴ��¼��*/
/*����*/
	char sPrnTyp[C_PRN_TYP_LEN];               /*��֤����*/
}plyEdrapppayStru;
/*���˱��(���뵥�����ĵ�����)*/
typedef  struct _plyEdrappcrgoStru 
{
	char sCrtCde[C_CRT_CDE_LEN];               /*������Ա*/
	char sCrtTm[TIME_LEN];    		           /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];               /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			           /*�޸�ʱ��*/
	char sEdrAppNo[C_EDR_APP_NO_LEN];          /*���뵥��*/
	char sCrgoCde[C_CRGO_CDE_LEN];             /*�������ͱ���*/
	char sCrgoCnm[C_CRGO_CNM_LEN];		 	   /*��������*/
	char sCrgoDesc[C_CRGO_DESC_LEN];           /*��������*/
	char sInvcNo[C_INVC_NO_LEN];               /*��Ʊ�ᵥ��*/
	char sSailNo[C_SAIL_NO_LEN];               /*����*/
	char sPrnFrm[C_PRN_FRM_LEN];               /*�������ڴ�ӡ��ʽ*/
	char sCarriageCde[C_CARRIAGE_CDE_LEN];     /*���䷽ʽ*/                      
	char sVslLvlCde[C_VSL_LVL_CDE_LEN];        /*��������*/
	char sFromPrt[C_FROM_PRT_LEN];             /*���˸�*/
	char sToPrt[C_TO_PRT_LEN];                 /*Ŀ�ĸ�*/
	char sFrmPrtAra[C_FRM_PRT_ARA_LEN];        /*���˸����ڹ��ҵ�������*/
	char sToPrtAra[C_TO_PRT_ARA_LEN];          /*Ŀ�ĸ����ڹ��ҵ�������*/
	char sPassPrt[C_PASS_PRT_LEN];             /*;����*/
	char sSrvyCde[C_SRVY_CDE_LEN];             /*�鿱�����˱���*/
	char sSrvyCnm[C_SRVY_CNM_LEN];             /*�鿱����������*/
	char sUndrCndtn[C_UNDR_CNDTN_LEN];         /*�б�����*/
	double fTgtAmt;                        	   /*���ս��*/
	double fRate;                              /*����*/
	double fTgtPrm;                     	   /*����*/
	char sPayAddr[C_PAY_ADDR_LEN];             /*�����ص�*/
	char sRecNo[C_REC_NO_LEN];				   /*�ݴ��¼��*/

	char sReceiptNo[ C_RECEIPT_NO_LEN ];                          /*�ᵥ��*/
	char sCrgoCls[ C_CRGO_CLS_LEN ];                       /*����������*/
	char sCrgoName[ C_CRGO_NAME_LEN ];                      /*Ʒ������ */
	char samount[ C_AMOUNT_LEN ];                           /*����+��λ*/
	char sPackCde[ C_PACK_CDE_LEN ];                       /*��װ��ʽ����*/
	char sMark[ C_MARK_LEN ];                           /*��ͷ*/
	double fInvcAmt;                       /*��Ʊ���*/
	char sInvcAmtCur[ C_INVC_AMT_CUR_LEN ];               /*��Ʊ������*/
	char sNoRepay[ C_NO_REPAY_LEN ];                           /*����*/
	char sCreditId[ C_CREDIT_ID_LEN ];                        /*����֤��ʶ*/
	char sLostDesc[ C_LOST_DESC_LEN ];                     /*�����⸶��¼*/
	char sContainer[ C_CONTAINER_LEN ];                           /*��װ��*/
	char sAddRisk[ C_ADD_RISK_LEN ];                       /*�������ӷ���*/
	char sPackCnm[ C_PACK_CNM_LEN ];                         /*��װ��ʽ*/
	char sSrvyAddr[ C_SRVY_ADDR_LEN ];                           /*�鿱��ַ*/
	char sEdrInfo[ C_EDR_INFO_LEN ];                           /*������Ϣ*/
} plyEdrappcrgoStru ;
/*�ҲƳ�Ч�����ձ��(���뵥�����ĵ�����)*/
typedef  struct _plyEdrappfmlprptStru 
{
	char sCrtCde[C_CRT_CDE_LEN];              /*������Ա*/
	char sCrtTm[TIME_LEN];    		          /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];              /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			          /*�޸�ʱ��*/
	char sEdrAppNo[C_EDR_APP_NO_LEN];         /*���뵥��*/
	char sBsnsAtrb[C_BSNS_ATRB_LEN];          /*ҵ������*/
	char sHseStrc[C_HSE_STRC_LEN];            /*���ݽ����ṹ*/
	char sPrptyAddr[C_PRPTY_ADDR_LEN];        /*�Ʋ������ַ*/
	double fTgtAmt;                        	  /*���ս��*/
	double fSaveRate;                         /*���մ�����*/
	double fSaveAmt;                    	  /*���մ���*/
	double fCnvrtProp;                		  /*�������*/
	double fTgtPrm;                   		  /*����*/
	char sPerNclmDecl[C_PER_NCLM_DECL_LEN];   /*ÿ���¹�����˵��*/
	char sRecNo[C_REC_NO_LEN];				  /*�ݴ��¼��*/
} plyEdrappfmlprptStru; 
/*��Ʊ�ģ����뵥�����ĵ�������*/
typedef  struct _plyEdrapporgprptStru 
{
	char sCrtCde[C_CRT_CDE_LEN];             /*������Ա*/
	char sCrtTm[TIME_LEN];    	             /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];             /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			         /*�޸�ʱ��*/
	char sEdrAppNo[C_EDR_APP_NO_LEN];        /*���뵥��*/
	char sTgtAddr[C_TGT_ADDR_LEN];           /*��ĵ�ַ*/
	char sTgtZipCde[C_TGT_ZIP_CDE_LEN];      /*��ĵ�ַ�ʱ�*/
	char sMaterial[C_MATERIAL_LEN];          /*��Ҫԭ���ϼ�����*/
	char sTech[C_TECH_LEN];                  /*��������*/
	char sTrdClsCde[C_TRD_CLS_CDE_LEN];      /*��ҵ���ͱ���*/
	char sSafeDev[C_SAFE_DEV_LEN];           /*��ȫ��ʩ���*/
	char sBldTypCde[C_BLD_TYP_CDE_LEN];      /*�������ͱ���*/
	char sEnvirAround[C_ENVIR_AROUND_LEN];   /*��Χ���*/
	double fFromFireh;                		 /*�����Ӿ���*/
	int   nLostTms;                    		 /*������ʧ���֮����*/
	double fLostAmt;       				     /*������ʧ���֮���*/
	char sLostCaus[C_LOST_CAUS_LEN];         /*������ʧ���֮ԭ��*/
	double fTgtAmt;                 		 /*���ս��*/
	double fTgtPrm;            				 /*����*/
	double fRate;                			 /*����*/
	char sNclmDesc[C_NCLM_DESC_LEN];         /*����˵��*/
	char sRecNo[C_REC_NO_LEN];				 /*�ݴ��¼��*/
	char sRiskLvlCde[C_RISK_LVL_CDE_LEN];    /*���յȼ�����*/
	double fKeepAmt;                         /*������*/
	double fCoeff;							 /*ϵ  ��*/
} plyEdrapporgprptStru ;
/*���뵥�����ĵ���ı�(������)*/
typedef  struct _plyEdrapptgtStru 
{
	char sCrtCde[C_CRT_CDE_LEN];             /*������Ա*/
	char sCrtTm[TIME_LEN];    		         /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];             /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			         /*�޸�ʱ��*/
	char sEdrAppNo[C_EDR_APP_NO_LEN];        /*���뵥��*/
	char sTgtFld1[L_TGT_FLD1_LEN];           /*����ֶ�1*/
	char sTgtFld2[L_TGT_FLD1_LEN];           /*����ֶ�2*/
	char sTgtFld3[L_TGT_FLD1_LEN];           /*����ֶ�3*/
	char sTgtFld4[L_TGT_FLD1_LEN];           /*����ֶ�4*/
	char sTgtFld5[L_TGT_FLD1_LEN];           /*����ֶ�5*/
	char sTgtFld6[L_TGT_FLD1_LEN];           /*����ֶ�6*/
	char sTgtFld7[L_TGT_FLD1_LEN];           /*����ֶ�7*/
	char sTgtFld8[L_TGT_FLD1_LEN];           /*����ֶ�8*/
	char sTgtFld9[L_TGT_FLD1_LEN];           /*����ֶ�9*/
	char sTgtFld10[L_TGT_FLD1_LEN];          /*����ֶ�10*/
	char sTgtFld11[L_TGT_FLD1_LEN];          /*����ֶ�11*/
	char sTgtFld12[L_TGT_FLD1_LEN];          /*����ֶ�12*/
	char sTgtFld13[L_TGT_FLD1_LEN];          /*����ֶ�13*/
	char sTgtFld14[L_TGT_FLD1_LEN];          /*����ֶ�14*/
	char sTgtFld15[L_TGT_FLD1_LEN];          /*����ֶ�15*/
	char sTgtFld16[L_TGT_FLD1_LEN];          /*����ֶ�16*/
	char sTgtFld17[L_TGT_FLD1_LEN];          /*����ֶ�17*/
	char sTgtFld18[L_TGT_FLD1_LEN];          /*����ֶ�18*/
	char sTgtFld19[L_TGT_FLD1_LEN];          /*����ֶ�19*/
	char sTgtFld20[L_TGT_FLD1_LEN];          /*����ֶ�20*/
	char sTgtFld21[L_TGT_FLD1_LEN];          /*����ֶ�21*/
	char sTgtFld22[L_TGT_FLD1_LEN];          /*����ֶ�22*/
	char sTgtFld23[L_TGT_FLD1_LEN];          /*����ֶ�23*/
	char sTgtFld24[L_TGT_FLD1_LEN];          /*����ֶ�24*/
	char sTgtFld25[L_TGT_FLD1_LEN];          /*����ֶ�25*/
	char sTgtFld26[L_TGT_FLD1_LEN];          /*����ֶ�26*/
	char sTgtFld27[L_TGT_FLD1_LEN];          /*����ֶ�27*/
	char sTgtFld28[L_TGT_FLD1_LEN];          /*����ֶ�28*/
	char sTgtFld29[L_TGT_FLD1_LEN];          /*����ֶ�29*/
	char sTgtFld30[L_TGT_FLD1_LEN];          /*����ֶ�30*/
	char sTgtFld31[L_TGT_FLD1_LEN];          /*����ֶ�31*/
	char sTgtFld32[L_TGT_FLD1_LEN];          /*����ֶ�32*/
	char sTgtFld33[L_TGT_FLD1_LEN];          /*����ֶ�33*/
	char sTgtFld34[L_TGT_FLD1_LEN];          /*����ֶ�34*/
	char sTgtFld35[L_TGT_FLD1_LEN];          /*����ֶ�35*/
	char sTgtFld36[L_TGT_FLD1_LEN];          /*����ֶ�36*/
	char sTgtFld37[L_TGT_FLD1_LEN];          /*����ֶ�37*/
	char sTgtFld38[L_TGT_FLD1_LEN];          /*����ֶ�38*/
	char sTgtFld39[L_TGT_FLD1_LEN];          /*����ֶ�39*/
	char sTgtFld40[L_TGT_FLD1_LEN];          /*����ֶ�40*/
	char sRecNo[C_REC_NO_LEN];				 /*�ݴ��¼��*/
} plyEdrapptgtStru ;
/*����ԭ���*/
typedef  struct _plyEdrrsnStru 
{
	char sCrtCde[C_CRT_CDE_LEN];            /*������Ա*/
	char sCrtTm[TIME_LEN];    		        /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];            /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			        /*�޸�ʱ��*/ 
	char sEdrRsn[C_EDR_RSN_LEN];            /*����ԭ��*/
	char sInsrncCde[C_INSRNC_CDE_LEN];  	/*������*/
	char sEdrRsnCnm[C_EDR_RSN_CNM_LEN]; 	/*����ԭ����������*/
	char sEdrRsnEnm[C_EDR_RSN_ENM_LEN]; 	/*����ԭ��Ӣ������*/
	char sEdrTyp[C_EDR_TYP_LEN]; 			/*��������*/
	char sEdrTxt[C_EDR_TXT_LEN];   			/*���ķ���*/
	char t_adb_tm[TIME_LEN];				/*ʧЧʱ��*/
} plyEdrrsnStru;
/*������Ŀ��*/
typedef  struct _plyEdrprjStru 
{
	char sCrtCde[C_CRT_CDE_LEN];           /*������Ա*/
	char sCrtTm[TIME_LEN];    		       /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];           /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			       /*�޸�ʱ��*/ 
	char sEdrRsn[C_EDR_RSN_LEN];           /*����ԭ��*/
	int  nEdrPrjNo;				           /*���*/
	char sEdrTlbNme[C_EDR_TLB_NME_LEN];    /*�������Ӧ����*/
	char sEdrFldCnm[C_EDR_FLD_CNM_LEN];    /*������������*/
	char sEdrFldNme[C_EDR_FLD_NME_LEN];    /*�������ֶ���*/
} plyEdrprjStru ;
/*Ͷ����Gridһ�����ݽṹ��*/
typedef struct _plyAppPolyGridStru
{
	char sCrtCde[C_CRT_CDE_LEN];               /*������Ա*/
	char sCrtTm[TIME_LEN];    		           /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];               /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			           /*�޸�ʱ��*/
	char sDocNo[C_DOC_NO_LEN];                 /*���ݺ�*/
	char sSendTm[TIME_LEN];                    /*����ʱ��*/
	char sBlgDptCde[C_BLG_DPT_CDE_LEN];        /*��������*/
	char sSource[C_SOURCE_LEN];                /*����Դ*/
	char sSendDptCde[C_SEND_DPT_CDE_LEN];      /*���ͻ���*/
	char sSendCde[C_SEND_CDE_LEN];             /*������*/
	char sDesDptCde[C_DES_DPT_CDE_LEN];        /*Ŀ�����*/
	char sEmergency[C_EMERGENCY_LEN];          /*�����̶�*/
	char sAuthPrnCde[C_AUTH_PRN_CDE_LEN];      /*��Ȩ��*/
	char sUdrMrk[C_UDR_MRK_LEN];               /*�˱���־*/
	char sSendMrk[C_SEND_MRK_LEN];             /*���ͱ�־*/
	char sUdrOpnMrk[C_UDR_OPN_MRK_LEN];        /*�˱������־*/
 	int  nVrfyMrk;                             /*��˱�־*/
    char sMdfyTm[TIME_LEN];   			       /*�޸�ʱ��*/
	char sInsrncCde[C_INSRNC_CDE_LEN];         /*����*/
	char sUndrPrsn[C_UNDR_PRSN_LEN];           /*�˱���*/
	char sUndrDpt[C_UNDR_DPT_LEN];             /*�˱�����*/
	char sPrnTyp[C_PRN_TYP_LEN];               /*��֤����*/
	char sRinsrncMrk[C_RINSRNC_MRK_LEN];       /*�ֱ�����*/
	char sCoinsrncMrk[C_COINSRNC_MRK_LEN];     /*������־*/
	char sCplyNo[C_PLY_NO_LEN];                /*������*/
	char sEdrNo[C_EDR_NO_LEN];                 /*������*/
	char sReadTime[TIME_LEN];      			   /*��ȡʱ�䣬 ���ڲ�������*/
	char sRecNo[C_REC_NO_LEN];				   /*�ݴ��¼��*/
	char cWorkMrk;						/*��������־	0-�ݴ�,1-���޸ģ�2-������˱�*/
	char cFlag;		/*�ύ�����־ 0-���ύ 1-���� 2-����˱� 3-����  4-��ѯ  5-ɾ��*/
	char sAppNme[C_APP_NME_LEN];               /*Ͷ��������*/
	char sApptTm[DATE_LEN];					   /*Ͷ������*/
	char sSignTm[TIME_LEN];					   /*ǩ������*/
	char sInsrntNme[C_INSRNT_NME_LEN];         /*������������*/
    char sRptDesc[C_RPT_DESC_LEN];             /*�ϱ�˵��*/
	char sEdrTyp[C_EDR_TYP_LEN];               /*��������*/
	char sRiskLvlCde[C_RISK_LVL_CDE_LEN];      /*���յȼ�����*/
/*��������*/
	char sLcnNo[C_LCN_NO_LEN];				   /*���պ���*/
	char sEngNo[C_ENG_NO_LEN];				   /*��������*/
	char sInsrncCls[C_INSRNC_CLS_LEN];		   /*���ִ���*/
/*7.13����*/
    char	sAppTyp[C_APP_TYP_LEN];             /*Ͷ������*/
/*8��11zdh��*/
	char sUseAtr[C_USE_ATR_LEN];             /*ʹ������*/
/*10��16zdh��*/
	char sUndrOpn[C_UNDR_OPN_LEN];          /*�˱����*/
	char sInternetTyp[ C_INTERNET_TYP_LEN ];              /*����ҵ���־'0'-���£�'1'-�����޽�����,'2'-�����н�����*/
}plyAppPolyGridStru;
/*�˱����������ݽṹ��*/
typedef struct _plyCheckGridStru
{
	char sCrtCde[C_CRT_CDE_LEN];              /*������Ա*/
	char sCrtTm[TIME_LEN];    		          /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];              /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			          /*�޸�ʱ��*/
	char sDocNo[C_DOC_NO_LEN];                /*�� �� ��*/
	char sSendTm[TIME_LEN];                   /*����ʱ��*/
	char sBlgDptCde[C_BLG_DPT_CDE_LEN];       /*��������*/
	char sSource[C_SOURCE_LEN];               /*�� �� Դ*/
	char sSendDptCde[C_SEND_DPT_CDE_LEN];     /*���ͻ���*/
	char sSendCde[C_SEND_CDE_LEN];            /*�� �� ��*/
	char sDesDptCde[C_DES_DPT_CDE_LEN];       /*Ŀ�����*/
	char sEmergency[C_EMERGENCY_LEN];         /*�����̶�*/
	char sAuthPrnCde[C_AUTH_PRN_CDE_LEN];     /*�� Ȩ ��*/
	char sUdrMrk[C_UDR_MRK_LEN];              /*�˱���־*/
	char sSendMrk[C_SEND_MRK_LEN];            /*���ͱ�־*/
	char sUdrOpnMrk[C_UDR_OPN_MRK_LEN];       /*�˱������־*/
	int  nVrfyMrk;                            /*��˱�־*/
    char sMdfyTm[TIME_LEN];   			      /*ʱ���*/
	char sInsrncCde[C_INSRNC_CDE_LEN];        /*��    ��*/
	char sUndrPrsn[C_UNDR_PRSN_LEN];          /*�� �� ��*/
	char sUndrDpt[C_UNDR_DPT_LEN];            /*�˱�����*/
	char sPrnTyp[C_PRN_TYP_LEN];              /*��֤����*/
	char sRinsrncMrk[C_RINSRNC_MRK_LEN];      /*�ֱ�����*/
	char sCoinsrncMrk[C_COINSRNC_MRK_LEN];    /*������־*/
	char sCplyNo[C_PLY_NO_LEN];               /*������*/
	char sEdrNo[C_EDR_NO_LEN];                /*������*/
	char cRead;                      /*��ȡ��־  0-Ͷ����δ���� 1-Ͷ�����Ѷ��� */ 
	char cFlag; /* �ύ�����־  0-���ύ  1 -��ѯ 2-��ѯ�����  3-����  4-�˱�����  5-���*/
	char sInsrntNme[C_INSRNT_NME_LEN];        /*������������*/
	char sInsrncCnm[C_INSRNC_CNM_LEN];		  /*��������*/
	char sBlgDptCnm[C_DPT_CNM_LEN];           /*������������*/
	char sSendDptCnm[C_DPT_CNM_LEN];          /*���ͻ�������*/
	char sDesDptCnm[C_DPT_CNM_LEN];           /*Ŀ���������*/
	char sUndrDptCnm[C_DPT_CNM_LEN];          /*�˱���������*/
	char sSignTm[TIME_LEN];					  /*ǩ������*/
    char sRptDesc[C_RPT_DESC_LEN];            /*�ϱ�˵��*/
	char sEdrTyp[C_EDR_TYP_LEN];              /*��������*/
	char sRiskLvlCde[C_RISK_LVL_CDE_LEN];     /*���յȼ�����*/
/*��������*/
	char sLcnNo[C_LCN_NO_LEN];				  /*���պ���*/
	char sEngNo[C_ENG_NO_LEN];				  /*��������*/
	char sInsrncCls[C_INSRNC_CLS_LEN];		  /*���ִ���*/
/*8��11zdh��*/
	char sUseAtr[C_USE_ATR_LEN];             /*ʹ������*/
	char sAppTyp[C_APP_TYP_LEN];                    /*Ͷ������*/
	char sAppTm[DATE_LEN];                             /*Ͷ������*/
	char sInputTm [DATE_LEN];                          /*¼������*/
	char sAppNme[C_APP_NME_LEN];               /*Ͷ��������*/
	char sUndrOpn[C_UNDR_OPN_LEN];          /*�˱����*/
	char	sEdrAppTm[DATE_LEN];				/*��������*/
	char sInternetTyp[ C_INTERNET_TYP_LEN ];     /*����ҵ���־'0'-���£�'1'-�����޽�����,'2'-�����н�����*/
}plyCheckGridStru;
/*���뵥Gridһ�����ݽṹ*/
typedef struct _plyEdrGridStru
{
	char sCrtCde[C_CRT_CDE_LEN];               /*������Ա*/
	char sCrtTm[TIME_LEN];    		           /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];               /*�޸���Ա*/
	char sUpdTm[TIME_LEN];			           /*�޸�ʱ��*/
	char sDocNo[C_DOC_NO_LEN];                 /*���ݺ�*/
	char sSendTm[TIME_LEN];                    /*����ʱ��*/
	char sBlgDptCde[C_BLG_DPT_CDE_LEN];        /*��������*/
	char sSource[C_SOURCE_LEN];                /*����Դ*/
	char sSendDptCde[C_SEND_DPT_CDE_LEN];      /*���ͻ���*/
	char sSendCde[C_SEND_CDE_LEN];             /*������*/
	char sDesDptCde[C_DES_DPT_CDE_LEN];        /*Ŀ�����*/
	char sEmergency[C_EMERGENCY_LEN];          /*�����̶�*/
	char sAuthPrnCde[C_AUTH_PRN_CDE_LEN];      /*��Ȩ��*/
	char sUdrMrk[C_UDR_MRK_LEN];               /*�˱���־*/
	char sSendMrk[C_SEND_MRK_LEN];             /*���ͱ�־*/
	char sUdrOpnMrk[C_UDR_OPN_MRK_LEN];        /*�˱������־*/
	int  nVrfyMrk;                             /*��˱�־*/
    char sMdfyTm[TIME_LEN];   			       /*ʱ���*/
	char sInsrncCde[C_INSRNC_CDE_LEN];         /*����*/
	char sUndrPrsn[C_UNDR_PRSN_LEN];           /*�˱���*/
	char sUndrDpt[C_UNDR_DPT_LEN];             /*�˱�����*/
	char sPrnTyp[C_PRN_TYP_LEN];               /*��֤����*/
	char sRinsrncMrk[C_RINSRNC_MRK_LEN];       /*�ֱ�����*/
	char sCoinsrncMrk[C_COINSRNC_MRK_LEN];     /*������־*/
	char sCplyNo[C_PLY_NO_LEN];                /*������*/
	char sEdrNo[C_EDR_NO_LEN];                 /*������*/
	char sReadTime[TIME_LEN];      			   /*��ȡʱ��,���ڲ�������*/
	char sRecNo[C_REC_NO_LEN];				   /*�ݴ��¼��*/
	char cFlag;  /*�ύ�����־ 0-���ύ 1-���� 2-����˱� 3-����  4-��ѯ  5-ɾ��*/
	char sInsrncDfnTyp[C_INSRNC_DFN_TYP_LEN];  /*(���ֱ�)���ֶ������*/
	char sInsrncCnm[C_INSRNC_CNM_LEN];         /*(���ֱ�)������������*/
	char sEdrTyp[C_EDR_TYP_LEN];               /*(���뵥����)��������*/  
	char sAppNme[C_APP_NME_LEN];               /*(���뵥����)Ͷ��������*/
	double fAmt;                 			   /*(���뵥����)���ս��*/
	char sSignTm[TIME_LEN];					   /*ǩ������*/
    char sRptDesc[C_RPT_DESC_LEN];             /*�ϱ�˵��*/
	char sRiskLvlCde[C_RISK_LVL_CDE_LEN];      /*���յȼ�����*/
/*��������*/
	char sLcnNo[C_LCN_NO_LEN];				   /*���պ���*/
	char sEngNo[C_ENG_NO_LEN];				   /*��������*/
	char sInsrncCls[C_INSRNC_CLS_LEN];		   /*���ִ���*/
/*8.11 zdh*/
	char sUseAtr[C_USE_ATR_LEN];             /*ʹ������*/
	char sUndrOpn[C_UNDR_OPN_LEN];          /*�˱����*/
	char sInternetTyp[C_INTERNET_TYP_LEN];

}plyEdrGridStru;
 /*	�������ı���Gridһ�����ݽṹ */
typedef struct _plyPolyGridStru
{
	char	sCrtCde[C_CRT_CDE_LEN];             /*������Ա*/
	char	sCrtTm[TIME_LEN];    		        /*����ʱ��*/
	char	sUpdCde[C_UPD_CDE_LEN];             /*�޸���Ա*/
	char	sUpdTm[TIME_LEN];			        /*�޸�ʱ��*/
	char	cWorkMrk;					/*��������־ 0-�������ģ�1-Լ���˷�����	
										2-�ҲƳ�Ч�������� 3-�����Զ�ע��*/
	char	cFlag;		/*�����־ 0-δѡ����1-ѡ����2-�Ѵ���*/
	char	sCplyNo[C_PLY_NO_LEN];				/*�� �� ��*/
	char	sEdrNo[C_EDR_NO_LEN];               /*�� �� ��*/
	char	sInsrntNme[C_INSRNT_NME_LEN];		/*������������*/
	char	sInsrncCde[C_INSRNC_CDE_LEN];		/*���ִ���*/
	double	fAmt;								/*���ս��*/
	double 	fRate;								/*��    ��*/
	double	fPrm;								/*��    ��*/
	double	fSumPrm;							/*���Ѻϼ�*/
	char	sPrmCur[C_PRM_CUR_LEN];				/*Ӧ�ձ��ѱ���*/
	double	fAppntProp;							/*Լ���˷ѱ���*/
	char	sAppPrsnCde[C_APP_PRSN_CDE_LEN];    /*�����˱���*/
	char	sAppPrsnNme[C_APP_PRSN_NME_LEN];    /*����������*/
	char	sEdrAppTm[DATE_LEN];				/*��������*/
	char	sEdrTyp[C_EDR_TYP_LEN];             /*��������*/
	double	fAmtVar;                            /*����仯*/
	double	fPrmVar;							/*���ѱ仯*/
	double	fAppntAmt;                          /*Լ���˷�*/
	char	sInsrncBgnTm[DATE_LEN];				/*��������*/
	char	sInsrncEndTm[DATE_LEN];				/*����ֹ��*/
	double	fSaveAmt;							/*���մ���*/
	double	fEndSumPrm;							/*�ĺ󱣷�*/
	char	sInsrncCnm[C_INSRNC_CNM_LEN];		/*��������*/
	char	sDptCde[C_DPT_CDE_LEN];             /*��������*/
/*1999.08.04����*/
	char	sOldEdrNo[C_EDR_NO_LEN];            /*ע��ǰ������*/
}plyPolyGridStru;
/* �������ı�����ѯ�������ݽṹ */
typedef struct _plyPolyFdCondStru
{
	char	cWorkMrk;			/*��������־ 0-�������ģ�1-Լ���˷�����
											2-�ҲƳ�Ч�������� 3-�����Զ�ע��*/
	char	sInsrncCde[C_INSRNC_CDE_LEN];	/*��    ��*/
	char	sAppCde[C_APP_CDE_LEN];			/*Ͷ���˱���*/
	char 	sDptCde[C_DPT_CDE_LEN];			/*��������*/
	char	sPrmCur[C_PRM_CUR_LEN];			/*Ӧ�ձ���*/
	char	sSignTm0[DATE_LEN];				/*��������*/
	char	sSignTm1[DATE_LEN];				/*����ֹ��*/
	char	cLowDpt;						/*�¼�����*/
/*8.02����*/
	char	sInsrncCls[C_INSRNC_CLS_LEN];	/*���ִ���*/
  char  sInsrntNme[C_INSRNT_NME_LEN];   /*������������*/
	char	sCplyNo[C_PLY_NO_LEN];				/*������*/
/*2000.7.03����*/
}plyPolyFdCondStru;
/* *** �����Ѵ�������ѯ�������ݽṹ *** */
typedef struct _plyPolyAgtFdCondStru
{
	char	cWorkMrk;			/*��������־ 0-ֱ��ҵ��1-������ 2-������ 3-�������չ�˾*/
	char	sCplyNo[C_PLY_NO_LEN];				/*��ʼ������*/
    char	sCplyNo2[C_PLY_NO_LEN];				/*��ֹ������*/
	char	sInsrncCde[C_INSRNC_CDE_LEN];		/*��    ��*/
	char	sAppCde[C_BRKR_CDE_LEN];			/*���չ�˾�������ˡ�������*/
	char 	sDptCde[C_DPT_CDE_LEN];				/*��������*/
	char	sPrmCur[C_PRM_CUR_LEN];				/*Ӧ�ձ���*/
	char	sSignTm0[DATE_LEN];					/*��������*/
	char	sSignTm1[DATE_LEN];					/*����ֹ��*/
	char	cLowDpt;							/*�¼�����*/
/*��������*/
	char	sLcnNo[C_LCN_NO_LEN];               /*���պ���*/
	char	sEngNo[C_ENG_NO_LEN];               /*��������*/
	char	cFlag;								/*��ѯ��־*/
/*6.18����*/
	char	sInsrncCls[C_INSRNC_CLS_LEN];		/*���ִ���*/
	char	sInsrntNme[C_INSRNT_NME_LEN];		/*������������*/
} plyPolyAgtFdCondStru;
/* *** �����Ѵ�����Gridһ�����ݽṹ *** */
typedef struct _plyPolyAgtGridStru
{
	char	cWorkMrk;			/*��������־ 0-ֱ��ҵ��1-������ 2-������ 3-�������չ�˾*/
	char	cFlag;				/*�����־ 0-δѡ����1-ѡ����2-�Ѵ���*/
	char	crctNo[CRCTNO_LEN];                     /*�վݺ�*/
	char	sCplyNo[C_PLY_NO_LEN];					/*�� �� ��*/
	char	sInsrncCde[C_INSRNC_CDE_LEN];			/*���ִ���*/
	char	sDptCde[C_DPT_CDE_LEN];					/*��������*/
	char	sPrmCur[C_PRM_CUR_LEN];					/*Ӧ�ձ��ѱ���*/
	double	fGotAmt;								/*ʵ�ձ���*/
	double	fGetAmt;								/*Ӧ�վ�����*/
	double	fCmmProp;								/*�����ѱ���*/
	double	fCmmLmt;								/*�������޶�*/
	double	fGotCmm;								/*�Ѹ�������*/
	double	fGetCmm;								/*����������*/
	double  fGotAmtLmt;                             /*ʵ�ձ����޶�*/
/*��������(5/26)*/    
	char    sBsnsTyp[C_BSNS_TYP_LEN];                /*ҵ����Դ*/
    char	sDoprDte[DATE_LEN];                     /*ƾ֤����*/
    char	sSlsCde[C_SLS_CDE_LEN];                 /*ҵ��Ա*/
    char	sCrtPrsn[C_CRT_PRSN_LEN];               /*¼����*/
    char	sUndrPrsn[C_UNDR_PRSN_LEN];             /*�����*/
    char	sUdrMrk[C_UDR_MRK_LEN];                 /*��˱�־*/
    char	sVrfyTm[TIME_LEN];                      /*�������*/
    char	sRemark[C_REMARK_LEN];                  /*��ע*/
    int		nEdrPrjNo;                              /*���*/
    char	sNextEdrUndrTm[TIME_LEN];               /*�´��������*/
    char	sCmpnyAgtCde[C_CMPNY_AGT_CDE_LEN];      /*�����˱���*/
    char	sEngNo[C_ENG_NO_LEN];                   /*��������*/
    char	sLcnNo[C_LCN_NO_LEN];                   /*���պ���*/
    char	sUndrTm[DATE_LEN];                      /*�˱�����*/
	char	sInsrntNme[C_INSRNT_NME_LEN];		    /*������������*/
/*8.11zdh��*/
	double	fSumProp;								/*�Ѹ�����*/
	double	fThisProp;								/*���α���*/
/*11.4lzz��*/
	char sAppNme[C_APP_NME_LEN];                    /*Ͷ�������ơ����������ơ�����������*/
}plyPolyAgtGridStru;
/* *** ��ѯ�����˱���Ϣ��¼�����ݽṹ *** */
typedef struct _plyCheckSchCondStru
{
    char	cWorkMrk;						/*��������־	DEAL_WORK   -����ҵ��,
															REPORT_WORK -���ϱ�ҵ��*/
	char	sOwnDptCde[C_DPT_CDE_LEN];		/*����������*/
	char	sCplyAppNo[C_PLY_APP_NO_LEN];	/*Ͷ������*/
	char	sInsrncCde[C_INSRNC_CDE_LEN];	/*���ִ���*/
	char 	sDptCde[C_DPT_CDE_LEN];			/*�������Ŵ���*/
	char	sBeginDate[DATE_LEN];			/*��ʼʱ��*/
	char	sEndDate[DATE_LEN];				/*��ֹʱ��*/
	char	cChecked;						/*�Ѻ˱�*/
	char	cNotChecked;					/*δ�˱�*/
	char	sPrnTyp[C_PRN_TYP_LEN];			/*��֤����*/
	char	cLowDpt;						/*�¼�����*/
    char    sInsrntNme[C_INSRNT_NME_LEN];   /*������������*/
/*��������*/
	char	sLcnNo[C_LCN_NO_LEN];           /*���պ���*/
	char	sEngNo[C_ENG_NO_LEN];           /*��������*/
/*6.18����*/
	char	sInsrncCls[C_INSRNC_CLS_LEN];	/*���ִ���*/
/*8��11zdh��*/
    char	sUid[C_UID_LEN];                /*�û�ID*/
/*lzzSep*/
	char    sAlarmMrk[C_ALARM_MRK_LEN];             /*������־*/
/*2000.07.24 zdh*/
	char sInternetTyp[ C_INTERNET_TYP_LEN ];      /*����ҵ���־'0'-���£�'1'-�����޽�����,'2'-�����н�����*/
} plyCheckSchCondStru;
/* *** Ͷ������ѯ�������ݽṹ *** */
typedef struct _plyAppPolyFdCondStru
{
	char	 cWorkMrk;							/*��������־	SAVE_WORK  -�ݴ�
																ALTER_WORK -���޸�
																APP_WORK   -������˱�*/
	char	 sInsrncCde[C_INSRNC_CDE_LEN];		/*���ִ���*/
	char	 sCplyAppNo[C_PLY_APP_NO_LEN];		/*Ͷ������*/
	char	 sCplyNo[C_PLY_NO_LEN];			    /*�� �� ��*/
	char	 sDptCde[C_DPT_CDE_LEN];			/*��������*/
	char	 sApptTm0[DATE_LEN];				/*Ͷ������0*/
	char	 sApptTm1[DATE_LEN];				/*Ͷ������1*/
	char	 cLowDpt;							/*�¼�����*/
	char     sInsrntNme[C_INSRNT_NME_LEN];      /*������������*/
	char	 sInputTm0[DATE_LEN];				/*¼������0*/
	char	 sInputTm1[DATE_LEN];				/*¼������1*/
/*��������*/
	char	sLcnNo[C_LCN_NO_LEN];				/*���պ���*/
	char	sEngNo[C_ENG_NO_LEN];				/*��������*/
/*6.18����*/
	char	sInsrncCls[C_INSRNC_CLS_LEN];		/*���ִ���*/
/*7.13����*/
	char	sAppTyp[C_APP_TYP_LEN];             /*Ͷ������*/
} plyAppPolyFdCondStru;
/* *** ��ȡ����(����)һ����Ϣ *** */
typedef struct _plyGetCplyGridStru
{
	char	sCplyNo[C_PLY_NO_LEN];					/*�� �� ��*/
    char	sAppNme[C_APP_NME_LEN];                 /*Ͷ��������*/
    char	sInsrncCnm[C_INSRNC_CNM_LEN];           /*��������*/
    double	fAmt;                 			        /*���ս��*/
    double	fSumPrm;                          		/*���Ѻϼ�*/
	char	sDptCde[C_DPT_CDE_LEN];                 /*��������*/
/*6/14����*/
	char    sInsrntNme[C_INSRNT_NME_LEN];           /*������������*/
/*1999.8.5����*/
	char	sInsrncCls[C_INSRNC_CLS_LEN];		/*���ִ���*/
	char	sInsrncCde[C_INSRNC_CDE_LEN];		/*���ִ���*/
/*1999.9.24����lzz*/
	char sPrnTyp[C_PRN_TYP_LEN];              /*��֤����*/
}plyGetCplyGridStru;
/* *** ���뵥��ѯ�������ݽṹ *** */
typedef struct _plyAppEdrFdCondStru
{
	char	sCplyNo[C_PLY_NO_LEN];				/*�� �� ��*/
    char	sEdrAppNo[C_EDR_APP_NO_LEN];        /*���뵥��*/
	char	sDptCde[C_DPT_CDE_LEN];				/*��������*/
    char	sSignTm1[DATE_LEN];                 /*ǩ������1*/
    char	sSignTm2[DATE_LEN];                 /*ǩ������2*/
	char	sInsrncCde[C_INSRNC_CDE_LEN];		/*���ִ���*/
	char	cLowDpt;							/*�¼�����*/
	char	sInsrntNme[C_INSRNT_NME_LEN];       /*������������*/
    char	sEdrTyp[C_EDR_TYP_LEN];             /*��������*/
/*��������*/
	char	sLcnNo[C_LCN_NO_LEN];				/*���պ���*/
	char	sEngNo[C_ENG_NO_LEN];				/*��������*/
	char	sUdrMrk[C_UDR_MRK_LEN];             /*�˱���־*/
/*6.18����*/
	char	sInsrncCls[C_INSRNC_CLS_LEN];		/*���ִ���*/
} plyAppEdrFdCondStru;
/* *** ��ѯһ��������Ϣ��¼�����ݽṹ *** */
typedef struct _plyGetDocStru
{
	char  sDocNo[C_DOC_NO_LEN];				        /*���ݺ�*/
  char  sInsrncCde[C_INSRNC_CDE_LEN];             /*��  ��*/
  char  sPrnTyp[C_PRN_TYP_LEN];                   /*��֤����*/
	char  sUndrTm[TIME_LEN];                        	/*�˱�����*/
} plyGetDocStru ;
/* *** ��������Ӧ�յ� *** */
typedef  struct _finColdueStru 
{
	char sdno[CDNO_LEN];                           /*���ʲ���*/
	char stno[CTNO_LEN];                           /*ҵ�����*/
	char splyno[CPLYNO_LEN];                       /*������*/
	char sedrno[CEDRNO_LEN];                       /*������*/
	double ftermno;                                /*�����ڱ�*/
	char srctno[CRCTNO_LEN];                       /*�վݺ�)*/
	char spaycde[CPAYCDE_LEN];                     /*�ɷ���*/
	char spaynme[CPAYNME_LEN];                     /*�ɷ�������*/
	char sinscde[CINSCDE_LEN];                     /*����*/
	char scurno[CCURNO_LEN];                       /*����*/
	char scolmde[CCOLMDE_LEN];                     /*�տʽ*/
	double fprmdue;                                /*Ӧ�ձ���*/
	double fcolamt;                                /*ʵ�ձ���*/
	char sbnkacct[CBNKACCT_LEN];                   /*���к��ʺ�*/
	char sempcde[CEMPCDE_LEN];                     /*ҵ��Ա*/
	char sagtcde[CAGTCDE_LEN];                     /*��������*/
	char sbrkcde[CBRKCDE_LEN];                     /*������*/
	char spaystr[DATE_LEN];                        /*��������*/
	char spayend [DATE_LEN];                       /*����ֹ��*/
	char sdptcde[CDPTCDE_LEN];                     /*��������*/
	char scoldte[DATE_LEN];                        /*�շ�����*/
	char scaldte[DATE_LEN];                        /*��������*/
	char saccno[CACCNO_LEN];                       /*���ʱ��*/
	char saccdte[DATE_LEN];                        /*��������*/
	char srcptno[CRCPTNO_LEN];                     /*�վ�ӡˢ��)*/
	char sfcu[CFCU_LEN];                           /*������Ա*/
	char sfcd [DATE_LEN];                          /*��������*/
	char slcu[CLCU_LEN];                           /*�޸���Ա*/
	char slcd [DATE_LEN];                          /*�޸�����*/
} finColdueStru ;
/* *** ��������Ӧ���� *** */ 
typedef  struct _finPaydueStru 
{
	char	sdno[CDNO_LEN];                             /*���ʲ���*/
	char	splyno[CPLYNO_LEN];                         /*������*/
	char	sedrno[CEDRNO_LEN];                         /*������*/
	double	ftermno;                                    /*�����ڱ�*/
	char	srctno[CRCTNO_LEN];                         /*�� �� ��*/
	char	spaycde[CPAYCDE_LEN];                       /*�� �� ��*/
	char	spaynme[CPAYNME_LEN];                       /*�ɷ�������*/
	char	sinscde[CINSCDE_LEN];                       /*��  ��*/
	char	scurno[CCURNO_LEN];                         /*��  ��*/
	char	spaymde[CPAYMDE_LEN];                       /*���ʽ��*/
	char	sbnkacct[CBNKACCT_LEN];                     /*���к��ʺ�*/
	double	fnclmamt;									/*Ӧ��������˷�*/
	double	fdisamt ;									/*Ӧ��Լ���˷�*/
	char	sempcde[CEMPCDE_LEN];                       /*ҵ��Ա*/
	char	sagtcde[CAGTCDE_LEN];                       /*��������*/
	double	fcmmdue;									/*Ӧ��������*/
	double	fcmsdue;									/*Ӧ��Ӷ��*/
	char	sbrkcde[CBRKCDE_LEN];                       /*������*/
	double	fbrkamt;									/*Ӧ�����ͷ�*/
	char	sduestr[DATE_LEN];							/*Ӧ������*/
	char	sdueend[DATE_LEN];							/*Ӧ��ֹ��*/
	char	sdptcde[CDPTCDE_LEN];                       /*��������*/
	char	scaldte[DATE_LEN];							/*��������*/
	char	spaydte[DATE_LEN];							/*��������*/
	char	srcptno[CRCPTNO_LEN];                       /*�վ�ӡˢ��)*/
	char	sfcu[CFCU_LEN];								/*������Ա*/
	char	sfcd[DATE_LEN];								/*��������*/
	char	slcu[CLCU_LEN];								/*�޸���Ա*/
	char	slcd[DATE_LEN];								/*�޸�����*/
} finPaydueStru ;
typedef struct  _plyEdrItemStru { 
	char sEdrTlbNme[C_EDR_TLB_NME_LEN];                /*�������Ӧ����*/
	char sEdrFldNme[C_EDR_FLD_NME_LEN];                 /*�������ֶ���*/
	int  nIdcNum;										/*�������Ӧ�Ļ���ID��*/
} plyEdrItemStru;
typedef struct _BuffChainStru
{
	int	  BuffSize;
	char * NextBuff;
}BuffChainStru;
typedef struct _plyEdrCnt
{
	char	sInsrntNme[C_INSRNT_NME_LEN];		/*������������*/
	double	fAmt;							    /*���ս��*/
	double 	fRate;								/*��    ��*/
	double	fPrm;								/*��    ��*/
	double	fSumPrm;							/*���Ѻϼ�*/
    char    sAmtCur[C_AMT_CUR_LEN];             /*�������*/
	char	sPrmCur[C_PRM_CUR_LEN];				/*Ӧ�ձ��ѱ���*/
	double	fAppntProp;							/*Լ���˷ѱ���*/
	double  fNclmProp;                          /*�����˷ѱ���*/
	char	sAppPrsnNme[C_APP_PRSN_NME_LEN];    /*����������*/
	char	sEdrAppTm[DATE_LEN];				/*��������*/
	double	fAmtVar;                            /*����仯*/
	double	fPrmVar;							/*���ѱ仯*/
	double	fAppntAmt;                          /*Լ���˷�*/
	double	fNclmAmt;                           /*�����˷�*/
	char	sInsrncBgnTm[DATE_LEN];				/*��������*/
	char	sInsrncEndTm[DATE_LEN];				/*����ֹ��*/
	double	fSaveAmt;							/*���մ���*/
    char    sToday[DATE_LEN];                   /*��������*/
	char    sTgtAddr[C_TGT_ADDR_LEN];           /*��ĵ�ַ*/
}plyEdrCnt;
/*   ZQM 1999.06.11 begin */
typedef struct _plyCmpItemStru  
{
	char sFldName[81];/*�ֶ�������*/
	char sOldValue[101];
	char sChgValue[101];	/*ֻ����ֵ�ͱ�������д*/
	char sNewValue[101];
	char sDataType[2];/* ����������ʾ���뷽ʽ��С����λ��; 'C'�ַ���;'N':��ֵ��L�����ַ��ͣ����ַ����ڴ�ֻ��д��ţ������ַ��͵�ֵ����plyLngFldStru�ṹ�����*/
	int nID;	/*���ַ��͵����*/
} plyCmpItemStru;
typedef struct _plyLngFldStru
{
	int nID;
	char sOldValue[2001];
    char sNewValue[2001];
} plyLngFldStru;
/*   ZQM 1999.06.11 end */
/*6.29���� F9��ȡ���Ƴ�����ṹ*/
typedef struct _plyBrndStru
{
	char sBrndCde[C_BRND_CDE_LEN];          /*���Ƴ�����*/
	char sBrndCnm[C_BRND_CNM_LEN];			/*��������*/
	char sBrndEnm[C_BRND_ENM_LEN];			/*Ӣ������*/
} plyBrndStru;
/*1999-07-8���� ������ID*/
typedef  struct _SetEdrIdStru 
{
	char sCrtCde[C_CRT_CDE_LEN];            /*������Ա*/
	char sCrtTm[DATE_LEN];                  /*����ʱ��*/
	char sUpdCde[C_UPD_CDE_LEN];            /*�޸���Ա*/
	char sUpdTm[DATE_LEN];                  /*�޸�ʱ��*/
	char sInsrncCde[C_INSRNC_CDE_LEN];		/*������*/
	char sEdrFldNme[C_EDR_FLD_NME_LEN];		/*�������ֶ���*/
	char sIdTyp[C_ID_TYP_LEN];				/*����ID����*/
	int  nIddNo;							/*����ID��*/
	int  nIdcNo;							/*�ؼ�ID��*/
	int  nGridCol;							/*�����к�*/
} SetEdrIdStru; 
/*	�ҲƳ�Ч���Ѽ����������ݽṹ */
typedef struct _plyHomeRichGridStru
{
	char	sCrtCde[C_CRT_CDE_LEN];             /*������Ա*/
	char	sCrtTm[TIME_LEN];    		        /*����ʱ��*/
	char	sUpdCde[C_UPD_CDE_LEN];             /*�޸���Ա*/
	char	sUpdTm[TIME_LEN];			        /*�޸�ʱ��*/
	char	cFlag;		/*�����־ 0-δѡ����1-ѡ����2-�Ѵ���*/
	char	sDptCde[C_DPT_CDE_LEN];             /*��������*/
	int		nYear;	/*���ᱣ�����*/	
	char	sCplyNo[C_PLY_NO_LEN];				/*�� �� ��*/
	char	sEdrNo[C_EDR_NO_LEN];               /*�� �� ��*/
	char	sInsrncBgnTm[DATE_LEN];				/*��������*/
	char	sInsrncEndTm[DATE_LEN];				/*����ֹ��*/
	int		nValidDays;							/*������Ч����*/
	char	cYearFlag;							/*�����־*/
	char	sInsrntNme[C_INSRNT_NME_LEN];		/*������������*/
	double 	fSaveAmt;                    		 /*���մ���*/  
	double 	fValidSaveAmt;                    		 /*������Ч����*/  
	double 	fLastSaveAmt;                    		 /*�������*/  
	double	fSumPrm;							/*���Ѻϼ�*/
	double	fSumPrmVar;							/*���걣��*/
	double	fPrmVar;							/*���ѱ仯*/
	int  	nEdrPrjNo;                            /*���*/
	double  fCnvrtProp;                			 /*�������*/
	char    sEdrTyp[C_EDR_TYP_LEN];       /*��������*/
}plyHomeRichGridStru;
/*���������ݽṹ*/
typedef  struct _plyProposalStru {
  char sCrtCde[ C_CRT_CDE_LEN ];                           /*������Ա*/
	char sCrtTm [TIME_LEN];                           /*��������*/
	char sUpdCde[ C_UPD_CDE_LEN ];                           /*�޸���Ա*/
	char sUpdTm [TIME_LEN];                           /*�޸�����*/
	char sDocNo[ C_DOC_NO_LEN ];                           /*���ݺ�*/
	double fRate             ;                           /*����*/
	char sNclmDesc[ C_NCLM_DESC_LEN ];                           /*��������*/
	char sUndrCndtn[ C_UNDR_CNDTN_LEN ];                           /*�б�����*/
	char sSendTm  [TIME_LEN];                           /*�͵�ʱ��*/
	char sSendDesc[ C_SEND_DESC_LEN ];                           /*�͵�ʱ������*/
	char sUndrPrsn[ C_UNDR_PRSN_LEN ];                           /*�˱���*/
	char sSignTm [TIME_LEN];                           /*ǩ������*/
	char sUserId[ C_USER_ID_LEN ];                           /*�û�ID*/
	char sUserRemark[ C_USER_REMARK_LEN ];                           /*�û����*/
	char sRemark[ C_REMARK_LEN ] ;                          /*��ע*/
	double fSumPrm;                          		/*���Ѻϼ�*/
	char sPrmCur[C_PRM_CUR_LEN];                    /*Ӧ�ձ��ѱ���*/
	
/* modi fy by zs 2001/04/16  */
        double fAmt;                                  /*���ս��*/
        double fAmtVar;                               /*����仯*/
        double fAmtOld;                               /*����OLD*/
        char sAmtCur[C_AMT_CUR_LEN];                /*�������*/
        double fPrm;                                  /*����*/
        double fPrmVar;                               /*���ѱ仯*/ 
        double fPrmOld;                               /*����OLD*/ 
        double fRateOld;                      /*����OLD*/
        char sReadFlag[C_READ_FLAG_LEN];            /*�Ķ���־*/
        char sPropType[C_PROPOSAL_TYPE_LEN];        /*����������*/
        char sPropFlag[C_PROPOSAL_FLAG_LEN];        /*�������־*/
	
} plyProposalStru;


/*Ͷ����--�����͵�*/
typedef  struct _plyPlyappNetStru {
  char sCrtCde[ C_CRT_CDE_LEN ];                           /*������Ա*/
	char sCrtTm                       [TIME_LEN];                           /*����ʱ��*/
	char sUpdCde[ C_UPD_CDE_LEN ];                           /*�޸���Ա*/
	char sUpdTm                       [TIME_LEN];                           /*�޸�ʱ��*/
	char sPlyAppNo[ C_PLY_APP_NO_LEN ];                           /*Ͷ������*/
	double fUserSeqNo                  ;                           /*�ͻ��Ǽ���ˮ��*/
	char sFeedbackTm                  [DATE_LEN];                           /*��������*/
	char sPrintTm                     [DATE_LEN];                           /*��ӡ����*/
	char sProvince[ C_PROVINCE_LEN ];                           /*�͵�ʡ����*/
	char sCity[ C_CITY_LEN ];                           /*�͵���/��/��*/
	char sPlace[ C_PLACE_LEN ];                           /*�͵���ϸλ��*/
	char sContactName[ C_CONTACT_NAME_LEN ];                           /*��ϵ��*/
	char sContactPhone[ C_CONTACT_PHONE_LEN ];                           /*��ϵ�绰*/
	char sContactFax[ C_CONTACT_FAX_LEN ];                           /*��ϵ����*/
	char sContactEmail[ C_CONTACT_EMAIL_LEN ];                           /*���ʵ�ַ*/
	char sSiteCde[ C_SITE_CDE_LEN ];                           /*��վ����*/
	char sRecNo[C_REC_NO_LEN];				/*�ݴ��¼��*/
	char sSendFlag[C_SEND_FLAG_LEN];                                /*�͵���ʽ*/

	char sSendEmpCde[C_SEND_EMP_CDE_LEN];			/*�͵���		*/			  
	char sPrtEmpCde[C_PRT_EMP_CDE_LEN];			/*��֤��ӡ��*/			  
	char sSendTm[TIME_LEN];							/*�͵�ʱ��	*/	  
	char sSendedTm[TIME_LEN];						/*�͵�ʱ��	*/		  
	char sZipCde[C_ZIP_CDE_LEN];				/*�ʱ�	*/	  
	char cPayFlag[C_PAY_FLAG_LEN];	/*���ѱ�־ '0' �����շ� '1' ���ϸ���*/	  
	char sSessionId[C_SESSION_ID_LEN];			/*������ˮ�� */
	char sBankCde[C_BANK_CDE_LEN];				/*���д���	*/		  
	char sBankCnm[C_BANK_CNM_LEN];			/*��������	*/		  
	char sBankAccnt[C_BANK_ACCNT_LEN];			/*�����ʺ�	*/			  
	double fGotPrm;								/*ʵ�ձ���	*/		  
	char sCurTyp[C_CUR_TYP_LEN];				/*����	*/			  
	char sPayTm[TIME_LEN];						/*�ɷ�����	*/		  
	char sPayTyp[C_PAY_TYP_LEN];				/*�ɷ�����	*/			  
	char sPayCde[C_PAY_CDE_LEN];				/*���Ѵ���	*/			  
	
	
	
} plyPlyappNetStru ;
#endif
