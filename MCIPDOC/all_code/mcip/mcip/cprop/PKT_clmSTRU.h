#ifndef _PKT_CLMSTRU_H_
#define _PKT_CLMSTRU_H_


 
/*  ����¼�룬�����鿴�������޸Ľ�������ݽṹ���������ҵ�����Ϣ���ڴ˽ṹ��*/
typedef    struct  _clmInListChangeStru{
char    sPlcyNo[C_PLY_NO_LEN];                 /* ������ */
char    sRptNo[C_RPT_NO_LEN];                   /* ������ */
char    sClmNo[C_CLM_NO_LEN]; 
char    sInsrntName[C_INSRNT_NME_LEN];          /* ������������*/
char    sInsrntCde[C_INSRNT_CDE_LEN];          /* ������������*/
char    sInsrncTgt[C_INSRNC_TGT_LEN];           /* ���ձ�� */
char    sRptNme[C_RPT_NME_LEN];                 /* ���������� */
char    sBigClm[2];
char    sRptAddrTel[C_RPT_ADDR_TEL_LEN];        /* �����˵�ַ�绰 */
char    sRptTm[TIME_LEN];                       /* ����ʱ�� */
char    sAccdntTm[TIME_LEN];                    /* ����ʱ�� */
char    sAccdntSpot[C_ACCDNT_SPOT_LEN];         /* ���յص�*/
char    sAccdntCaus[C_ACCDNT_CAUS_LEN];         /* ����ԭ�� */
char    sLosDtl[C_LOS_DTL_LEN];                 /*��ʧ���*/       /*(����׷�ӣ�*/
char    sCurTyp[C_CUR_TYP_LEN];                 /* ����*/
double  dRptAmt;                                /* ������*/
char    sInsrncCde[C_INSRNC_CDE_LEN];           /* ����*/
char    sRcvrCde[C_RCVR_CDE_LEN];               /* ����������*/
char    sOpinion[C_OPINION_LEN];                /* �������*/
char    sRemark[C_REMARK_LEN];                  /* ��ע*/
char    sTgtLosDtl[C_TGT_LOS_DTL_LEN];          /* �����ʧ��� */
char    sHlpLos[C_HLP_EXP_LEN];                 /* ʩ�����������*/
char    sThdLos[C_THD_LOS_LEN];                 /* ��������ʧ���*/
char    sClmPrcsDtl[C_CLM_PRCS_DTL_LEN];        /* �ⰸ�������*/
char    sSrsCaseOpinion[C_SRS_CASE_OPINION_LEN];/* �ش��ⰸ������� */
char    sDptCde[C_DPT_CDE_LEN];                 /* �������ű���*/
char    sRptRgstMdfyTm[TIME_LEN];               /* �����޸�����*/
char    sPrcsDptCde[C_DPT_CDE_LEN];
char    sRptRgstCde[C_RPT_RGST_CDE_LEN];
/******add begin ����*****/
char 	sInsrncBgnTm[DATE_LEN];		/*��������*/
char 	sInsrncEndTm[DATE_LEN];		/*����ֹ��*/
double 	dTgtAmt;			/*Ͷ�����*/
char 	sInsCurTyp[C_CUR_TYP_LEN];	/*�������*/
char 	sCarNo[C_CAR_NO_LEN];		/*�������*/
char 	sLcnNo[C_LCN_NO_LEN];		/*���պ�*/
char 	sBrndCde[C_BRND_CDE_LEN];	/*���Ƴ���*/
char 	sEngNo[C_ENG_NO_LEN];		/*��������*/
char 	sAccdntDtl[C_ACCDNT_DTL_LEN];   /*���վ���*/
char 	sRptPrcsMrk[2];/*'0'-����,'1'-������,'2'-�ݻ�����*/
char 	sBrndCnm[C_BRND_CNM_LEN];/*���Ƴ�������99.11.19Wugb*/
/******add end ����*****/
char	sInternetTyp[2];	/*���ϱ�����־:'0' ��,'1' ��*/
}clmInListChangeStru;   /* ע����Ӧ�ڱ�����t_clmrpt��*/





/*  ���������źͱ���������������Ӧ�ı�����Ϣ�����󱨰��޸ģ�������ϸ����ɾ������*/
typedef  struct  _clmPlcyNoStru
{
	char    sRptNo[C_RPT_NO_LEN];                   /*������*/
	char    sPlcyNo[C_PLY_NO_LEN];                 /*������  */
	char    sDptCde[C_DPT_CDE_LEN];                 /* �������ű���*/
	/******add begin ����*****/
	char    sAccdntTime[TIME_LEN];	/*����ʱ��*/
	char sLcnNo[C_LCN_NO_LEN];	    /*���պ���*/
	char sEgnNo[C_ENG_NO_LEN];		    /*��������*/
	char sInsrntName[C_INSRNT_NME_LEN];	/*������������*/
	char sCarNo[C_CAR_NO_LEN]; /*���ձ��add 99.7.26*/
	char    sRptRgstMdfyTm[TIME_LEN];               /* �����޸�����*/
	char cDelorClr;/*��ע��'C'����ɾ��'D' 99/11/18*/
	/******add end ����*****/
}clmPlcyNoStru;      /*ע����Ӧ�ڱ�����t_clmrpt��*/





#endif
