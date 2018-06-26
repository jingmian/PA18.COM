#include <stdio.h>
#include <stdlib.h> 
#include <malloc.h>
#include <fcntl.h>
#include "string.h"
#include "assert.h"
#include "InterGateway.h"
#include "StructDef.h"

#define READLINE 255
#define serverhome "svlocation.properties"


char* CreateResultStr(char* lpInBuffer){
  char* ploc;
  PacketHead *phs;
  char *rets;
  char *tmps;
  phs=malloc(sizeof(PacketHead));
  assert(phs!=NULL);
  assert(lpInBuffer!=NULL);
  ploc=lpInBuffer;
  
  memcpy((char *)phs,ploc,sizeof(PacketHead));
  ploc=ploc+sizeof(PacketHead);
  
  rets=malloc(strlen(ploc)+1+1);
  assert(rets!=NULL);
  tmps=rets;
  
  if(phs->cRetCode==0){
    tmps[0]='1';			
  }
  if(phs->cRetCode==-1){
    tmps[0]='2';
  }
  
  tmps=tmps+1;
  memcpy(tmps,ploc,strlen(ploc));
  
  return rets;
}

char* ConstuctPerClntInfoStru(char* lpInBuffer,unsigned short pid){  
  char* ret;
  char* ploc;
  PacketHead *phs;
  cltPerClntInfoStru *rets;
  
  ret=malloc(sizeof(PacketHead)+sizeof(cltPerClntInfoStru));
  phs=malloc(sizeof(PacketHead));
  rets=malloc(sizeof(cltPerClntInfoStru));
  
  assert(ret!=NULL);
  assert(phs!=NULL);
  assert(rets!=NULL);
  assert(lpInBuffer!=NULL);
  
  /* construct packethead*/
  phs->iPacketID=pid;
  phs->lPacketSize=sizeof(PacketHead)+sizeof(cltPerClntInfoStru);
  phs->iRecordNum=1;
  phs->iRecordSize=sizeof(cltPerClntInfoStru);
  phs->iServiceNo=13;
  
  /*construct body*/
  ploc=lpInBuffer;
 	
  memcpy(rets->sClntCde,ploc,C_CLNT_CDE_LEN);/*12�ͻ�����*/
  ploc=ploc+C_CLNT_CDE_LEN;
  memcpy(rets->sDptCde,ploc,C_DPT_CDE_LEN);/*11 ��������*/
  ploc=ploc+C_DPT_CDE_LEN;
  memcpy(rets->sClntNme,ploc,C_CLNT_NME_LEN);/*60 �ͻ�����*/
  ploc=ploc+C_CLNT_NME_LEN;
  memcpy(rets->sChnAbr,ploc,C_CHN_ABR_LEN);/*12 ���*/
  ploc=ploc+C_CHN_ABR_LEN;
  memcpy(rets->sAuthMrk,ploc,C_AUTH_MRK_LEN);/*1 ��Ȩ��־*/
  ploc=ploc+C_AUTH_MRK_LEN;
  memcpy(rets->sBrdEnm,ploc,C_BRD_ENM_LEN);/*60 Ӣ������/�ͻ���λ*/
  ploc=ploc+C_BRD_ENM_LEN;
  memcpy(rets->sRgstNo,ploc,C_RGST_NO_LEN);/*20 ���̵ǼǺ�/���֤��*/
  ploc=ploc+C_RGST_NO_LEN;
  memcpy(rets->sSex,ploc,C_SEX_LEN);/*1 �Ա�*/
  ploc=ploc+C_SEX_LEN;
  memcpy(rets->sHmtwn,ploc,C_HMTWN_LEN);/*20 ����*/
  ploc=ploc+C_HMTWN_LEN;
  memcpy(rets->sNtnCde,ploc,C_NTN_CDE_LEN);/*2 ����*/
  ploc=ploc+C_NTN_CDE_LEN;
  memcpy(rets->sBirthday,ploc,DATE_LEN);/*date ��������*/
  ploc=ploc+DATE_LEN;
  memcpy(rets->sMrgCde,ploc,C_MRG_CDE_LEN);/*2 ����״��*/
  ploc=ploc+C_MRG_CDE_LEN;
  memcpy(rets->sGrdt,ploc,C_GRDT_LEN);/*30 ��ҵԺУ*/
  ploc=ploc+C_GRDT_LEN;
  memcpy(rets->sEduCde,ploc,C_EDU_CDE_LEN);/*2 ѧ��*/
  ploc=ploc+C_EDU_CDE_LEN;
  memcpy(rets->sMajorCde,ploc,C_MAJOR_CDE_LEN);/*2 רҵ*/
  ploc=ploc+C_MAJOR_CDE_LEN;
  memcpy(rets->sTitlCde,ploc,C_TITLE_CDE_LEN);/*2 ְ��*/
  ploc=ploc+C_TITLE_CDE_LEN;
  memcpy(rets->sDuty,ploc,C_DUTY_LEN);/*20	ְ��*/
  ploc=ploc+C_DUTY_LEN;
  memcpy(rets->sTel,ploc,C_TEL_LEN);/*20 �绰*/
  ploc=ploc+C_TEL_LEN;
  memcpy(rets->sFax,ploc,C_FAX_LEN);/*20	����*/
  ploc=ploc+C_FAX_LEN;
  memcpy(rets->sEmail,ploc,C_EMAIL_LEN);/*30 E-MAIL*/
  ploc=ploc+C_EMAIL_LEN;
  memcpy(rets->sClntAddr,ploc,C_CLNT_ADDR_LEN);/*60 ��ַ*/
  ploc=ploc+C_CLNT_ADDR_LEN;
  memcpy(rets->sZipCde,ploc,C_ZIP_CDE_LEN);/*6 �ʱ�*/
  ploc=ploc+C_ZIP_CDE_LEN;
  memcpy(rets->sRemark,ploc,C_REMARK_LEN);/*500 ��ע*/
  ploc=ploc+C_REMARK_LEN;
  memcpy(rets->sClntMrk,ploc,C_CLNT_MRK_LEN);/* 1 �ͻ���־*/
  ploc=ploc+C_CLNT_MRK_LEN;
  memcpy(rets->sEmpCde,ploc,C_EMP_CDE_LEN);/*10 Ա�����룬��Ϊ�����˻����޸���*/
  ploc=ploc+C_EMP_CDE_LEN;
  memcpy(rets->sUpdTm,ploc,TIME_LEN);/*TIME hh:mm:ss  �޸�ʱ��*/
  ploc=ploc+TIME_LEN;
  
  memcpy(rets->sProvince,ploc,C_PROVINCE_LEN);/*20 �͵�ʡ����*/
  ploc=ploc+C_PROVINCE_LEN;
  memcpy(rets->sCity,ploc,C_CITY_LEN);/*20 �͵���/��/��*/
  ploc=ploc+C_CITY_LEN;
  memcpy(rets->sPlace,ploc,C_PLACE_LEN);/*100 �͵���ϸλ��*/
  ploc=ploc+C_PLACE_LEN;
  
  /*construct packet*/
  memcpy(ret,phs,sizeof(PacketHead));
  phs=phs+sizeof(PacketHead);
  memcpy(ret,lpInBuffer,sizeof(cltPerClntInfoStru));
  
  return ret;
}
char* ConstuctOrgClntInfoStru(char* lpInBuffer,unsigned short pid){
  char* ret;
  char* ploc;
  PacketHead *phs;
  cltOrgClntInfoStru *rets;
  
  char doublestr[17];
  char *stoploc;
  
  ret=malloc(sizeof(PacketHead)+sizeof(cltOrgClntInfoStru));
  phs=malloc(sizeof(PacketHead));
  rets=malloc(sizeof(cltOrgClntInfoStru));
	
  assert(ret!=NULL);
  assert(phs!=NULL);
  assert(rets!=NULL);
  assert(lpInBuffer!=NULL);
  
  /* construct packethead*/
  phs->iPacketID=pid;
  phs->lPacketSize=sizeof(PacketHead)+sizeof(cltOrgClntInfoStru);
  phs->iRecordNum=1;
  phs->iRecordSize=sizeof(cltOrgClntInfoStru);
  phs->iServiceNo=13;
  
  /*construct body*/
  ploc=lpInBuffer;
  
  memcpy(rets->sClntCde,ploc,C_CLNT_CDE_LEN);/*12�ͻ�����*/
  ploc=ploc+C_CLNT_CDE_LEN;
  memcpy(rets->sDptCde,ploc,C_DPT_CDE_LEN);/*11 ��������*/
  ploc=ploc+C_DPT_CDE_LEN;
  memcpy(rets->sClntNme,ploc,C_CLNT_NME_LEN);/*60 �ͻ�����*/
  ploc=ploc+C_CLNT_NME_LEN;
  memcpy(rets->sChnAbr,ploc,C_CHN_ABR_LEN);/*12 ���*/
  ploc=ploc+C_CHN_ABR_LEN;
  memcpy(rets->sAuthMrk,ploc,C_AUTH_MRK_LEN);/*1 ��Ȩ��־*/
  ploc=ploc+C_AUTH_MRK_LEN;
  memcpy(rets->sBrdEnm,ploc,C_BRD_ENM_LEN);/*60 Ӣ������/�ͻ���λ*/
  ploc=ploc+C_BRD_ENM_LEN;
  memcpy(rets->sRgstNo,ploc,C_RGST_NO_LEN);/*20 ���̵ǼǺ�/���֤��*/
  ploc=ploc+C_RGST_NO_LEN;
  
  
  memcpy(rets->sTaxNo,ploc,C_TAX_NO_LEN); /*16 ˰���*/
  ploc=ploc+C_TAX_NO_LEN;
  
  
  memcpy(doublestr,ploc,sizeof(doublestr));/*ע���ʱ�*/
  ploc=ploc+sizeof(doublestr);
  rets->fRgstMny=strtol(doublestr,&stoploc,16);
  
  memcpy(rets->sChief,ploc,C_CHIEF_LEN);/*8 ��λ������*/
  ploc=ploc+C_CHIEF_LEN;
  
  memcpy(doublestr,ploc,sizeof(doublestr));/*8 Ա������*/
  ploc=ploc+sizeof(doublestr);
  rets->fEmlyNum=strtol(doublestr,&stoploc,16);
  
  memcpy(rets->sOwnershipCde,ploc,C_OWNERSHIP_CDE_LEN);/*1������*/
  ploc=ploc+C_OWNERSHIP_CDE_LEN;
  memcpy(rets->sOrgzTypCde,ploc,C_ORGZ_TYP_CDE_LEN);/*1 ��ҵ��֯��ʽ*/
  ploc=ploc+C_ORGZ_TYP_CDE_LEN;
  memcpy(rets->sTrdCde,ploc,C_TRD_CDE_LEN);/*1��ҵ*/
  ploc=ploc+C_TRD_CDE_LEN;
  memcpy(rets->sAraCde,ploc,C_ARA_CDE_LEN); /*10 ���ҵ���*/
  ploc=ploc+C_ARA_CDE_LEN;
  memcpy(rets->sClntScleCde,ploc,C_CLNT_SCLE_CDE_LEN);/*1 ���ѹ�ģ*/
  ploc=ploc+C_CLNT_SCLE_CDE_LEN;
  memcpy(rets->sScaleCde,ploc,C_SCALE_CDE_LEN); /*1 ��ҵ��ģ*/
  ploc=ploc+C_SCALE_CDE_LEN;
  memcpy(rets->sUprDptCde,ploc,C_UPR_DPT_CDE_LEN);/*12 �ϼ���λ����*/
  ploc=ploc+C_UPR_DPT_CDE_LEN;
  memcpy(rets->sImptClntCde,ploc,C_IMPT_CLNT_CDE_LEN);/*	12 ��ͻ���*/
  ploc=ploc+C_IMPT_CLNT_CDE_LEN;
  memcpy(rets->sCntctPrsnNme,ploc,C_CNTCT_PRSN_NME_LEN);/*20	��ϵ��*/
  ploc=ploc+C_CNTCT_PRSN_NME_LEN;
  
  
  memcpy(rets->sTel,ploc,C_TEL_LEN);/*20 �绰*/
  ploc=ploc+C_TEL_LEN;
  memcpy(rets->sFax,ploc,C_FAX_LEN);/*20	����*/
  ploc=ploc+C_FAX_LEN;
  memcpy(rets->sEmail,ploc,C_EMAIL_LEN);/*30 E-MAIL*/
  ploc=ploc+C_EMAIL_LEN;
  memcpy(rets->sClntAddr,ploc,C_CLNT_ADDR_LEN);/*60 ��ַ*/
  ploc=ploc+C_CLNT_ADDR_LEN;
  memcpy(rets->sZipCde,ploc,C_ZIP_CDE_LEN);/*6 �ʱ�*/
  ploc=ploc+C_ZIP_CDE_LEN;
  memcpy(rets->sRemark,ploc,C_REMARK_LEN);/*500 ��ע*/
  ploc=ploc+C_REMARK_LEN;
  memcpy(rets->sClntMrk,ploc,C_CLNT_MRK_LEN);/* 1 �ͻ���־*/
  ploc=ploc+C_CLNT_MRK_LEN;
  memcpy(rets->sEmpCde,ploc,C_EMP_CDE_LEN);/*10 Ա�����룬��Ϊ�����˻����޸���*/
  ploc=ploc+C_EMP_CDE_LEN;
  memcpy(rets->sUpdTm,ploc,TIME_LEN);/*TIME hh:mm:ss  �޸�ʱ��*/
  ploc=ploc+TIME_LEN;
  memcpy(rets->sBank,ploc,C_BANK_LEN);/*20 �������� */
  ploc=ploc+C_BANK_LEN;
  memcpy(rets->sAccntNo,ploc,C_ACCNT_NO_LEN);/*20 �����ʺ� */
  ploc=ploc+C_ACCNT_NO_LEN;
  memcpy(rets->sEngAbr,ploc,C_ENG_ABR_LEN);/*Ӣ�ļ��*/
  ploc=ploc+C_ENG_ABR_LEN;
  memcpy(rets->sProvince,ploc,C_PROVINCE_LEN);/*20 �͵�ʡ����*/
  ploc=ploc+C_PROVINCE_LEN;
  memcpy(rets->sCity,ploc,C_CITY_LEN);/*20 �͵���/��/��*/
  ploc=ploc+C_CITY_LEN;
  memcpy(rets->sPlace,ploc,C_PLACE_LEN);/*100 �͵���ϸλ��*/
  ploc=ploc+C_PLACE_LEN;
  
  /*construct packet*/
  memcpy(ret,phs,sizeof(PacketHead));
  phs=phs+sizeof(PacketHead);
  memcpy(ret,lpInBuffer,sizeof(cltOrgClntInfoStru));
  
  return ret;
}


char* CreateSendStruct(char* lpInBuffer,int serviceid){
  char *rets;
  unsigned short pid;/* ����ID iPacketID*/
  switch(serviceid){
  case 1:
    pid=13003;
    rets=ConstuctPerClntInfoStru(lpInBuffer,pid);
    break;
  case 2:
    pid=13004;
    rets=ConstuctPerClntInfoStru(lpInBuffer,pid);
    break;
  case 3:
    pid=13008;
    rets=ConstuctOrgClntInfoStru(lpInBuffer,pid);
    break;
  case 4:
    pid=13009;
    rets=ConstuctOrgClntInfoStru(lpInBuffer,pid);
    break;
  default:
    rets=NULL;
  }
  return rets;
}

JNIEXPORT jbyteArray JNICALL Java_InterGateway_packetchanege(JNIEnv * env, jobject jo,jint serviceid, jbyteArray jba,jint istrlen){

  char hostname[READLINE];
  char port[READLINE]; 
  FILE * fp;

  int sd,nRet,errflag;
  int fd,i_len;

  char* rets;	
  char* outPacket;
  char* inPacket;
  char* lpInBuffer=(char*)jba;
  
  fp = fopen(serverhome,"r");
  if(fp == NULL)
    {
      printf("couldn't open file ");
      fclose(fp);
      exit(0);
    }
  else
    {
      fgets(hostname,i_len,fp);
      fgets(port,i_len,fp);
      fclose(fp);
    }
  
  inPacket=CreateSendStruct(lpInBuffer,(int)serviceid);

  sd = AIEU_TCPEstablishConnection(hostname,port,10);
  if(sd <0) {
    printf("connect fail!\n");
    exit(-1);
  }

  nRet =  AISendPacket(sd,&inPacket);
  if(nRet <0) {
    printf("send fail!\n");
    exit(-2);
  }
  /*outPacket=NULL; TEST*/

  outPacket = (char *)AIRecvPacket(sd,10,&errflag);
  if(errflag == 1) {
    printf("disconnect!\n");
    AIEU_TCPClose(sd);
    return (jbyteArray)outPacket;
  }
  if(NULL == outPacket) {
    printf("receive fail!\n");
  };
  AIEU_TCPClose(sd); 

  /*insert something here*/
  rets=CreateResultStr(outPacket);
  return (jbyteArray)rets;/*TEST*/

}

