package jtoc;

public class cltPerClntInfoStru{
//Total 29 properties

    public java.lang.String c_clnt_cde;     /*12�ͻ�����*/
    public java.lang.String c_dpt_cde;      /*11 ��������*/
    public java.lang.String c_clnt_nme;     /*60 �ͻ�����*/
    public java.lang.String c_chn_abr;      /*12 ���*/
    public java.lang.String c_auth_mrk;     /*1 ��Ȩ��־*/
    public java.lang.String c_brd_enm;      /*60 Ӣ������/�ͻ���λ*/
    public java.lang.String c_rgst_no;      /*20 ���̵ǼǺ�/���֤��*/
    public java.lang.String c_sex;          /*1 �Ա�*/
    public java.lang.String c_hmtwn;        /*20 ����*/
    public java.lang.String c_ntn_cde;      /*2 ����*/
    public java.lang.String t_birthday;     /*date ��������*/
    public java.lang.String c_mrg_cde;      /*2 ����״��*/
    public java.lang.String c_grdt;         /*30 ��ҵԺУ*/
    public java.lang.String c_edu_cde;	     /*2 ѧ��*/
    public java.lang.String c_major_cde;    /*2 רҵ*/
    public java.lang.String c_title_cde;    /*2 ְ��*/
    public java.lang.String c_duty;         /*20	ְ��*/
    public java.lang.String c_tel;          /*20 �绰*/
    public java.lang.String c_fax;          /*20	����*/
    public java.lang.String c_email;        /*30 E-MAIL*/
    public java.lang.String c_clnt_addr;    /*60 ��ַ*/
    public java.lang.String c_zip_cde;      /*6 �ʱ�*/
    public java.lang.String c_remark;       /*500 ��ע*/
    public java.lang.String c_clnt_mrk;     /* 1 �ͻ���־ '0'-����,'1'-����*/
    public java.lang.String c_emp_cde;      /*10 Ա������ ��Ϊ�����˻����޸���*/
    public java.lang.String c_impt_clnt_cde;/*Update on 8-25*/
    public java.lang.String t_upd_tm;       /*TIME hh:mm:ss  �޸�ʱ�䣬���ڲ�������*/
    public java.lang.String c_province;	     /*20 �͵�ʡ����*/
    public java.lang.String c_city;	        /*20 �͵���/��/��*/
    public java.lang.String c_place;	       /*100 �͵���ϸλ��*/
    public cltPerClntInfoStru(){}
//Added for debug;
    public cltPerClntInfoStru(String[] temp) throws Exception{
           for (int i=0;i<temp.length;i++){
               temp[i]=""+i;
           }
           c_clnt_cde =temp[0];
           c_dpt_cde  =temp[1];      /*11 ��������*/
           c_clnt_nme =temp[2];     /*60 �ͻ�����*/
           c_chn_abr  =temp[3];      /*12 ���*/
           c_auth_mrk =temp[4];     /*1 ��Ȩ��־*/
           c_brd_enm  =temp[5];      /*60 Ӣ������/�ͻ���λ*/
           c_rgst_no  =temp[6];      /*20 ���̵ǼǺ�/���֤��*/
           c_sex      =temp[7];          /*1 �Ա�*/
           c_hmtwn    =temp[8];        /*20 ����*/
           c_ntn_cde  =temp[9];      /*2 ����*/
           t_birthday =temp[10];     /*date ��������*/
           c_mrg_cde  =temp[11];      /*2 ����״��*/
           c_grdt     =temp[12];         /*30 ��ҵԺУ*/
           c_edu_cde  =temp[13];	     /*2 ѧ��*/
           c_major_cde=temp[14];    /*2 רҵ*/
           c_title_cde=temp[15];    /*2 ְ��*/
           c_duty     =temp[16];         /*20	ְ��*/
           c_tel      =temp[17];          /*20 �绰*/
           c_fax      =temp[18];          /*20	����*/
           c_email    =temp[19];        /*30 E-MAIL*/
           c_clnt_addr=temp[20];    /*60 ��ַ*/
           c_zip_cde  =temp[21];      /*6 �ʱ�*/
           c_remark   =temp[22];       /*500 ��ע*/
           c_clnt_mrk =temp[23];     /* 1 �ͻ���־ '0'-����,'1'-����*/
           c_emp_cde  =temp[24];      /*10 Ա������ ��Ϊ�����˻����޸���*/
           t_upd_tm   =temp[25];       /*TIME hh:mm:ss  �޸�ʱ�䣬���ڲ�������*/
           c_province  =temp[26];	     /*20 �͵�ʡ����*/
           c_city     =temp[27];	        /*20 �͵���/��/��*/
           c_place    =temp[28];	       /*100 �͵���ϸλ��*/

    }

    public cltPerClntInfoStru(com.mcip.cus.orb.CustPrsn custprsnobj) throws Exception{
           c_clnt_cde =custprsnobj.c_clnt_cde;      /*12�ͻ�����*/
           c_dpt_cde  =custprsnobj.c_dpt_cde;      /*11 ��������*/
           c_clnt_nme =custprsnobj.c_clnt_nme;     /*60 �ͻ�����*/
           c_chn_abr  =custprsnobj.c_chn_abr;      /*12 ���*/
           c_auth_mrk =custprsnobj.c_auth_mrk;     /*1 ��Ȩ��־*/
           c_brd_enm  =custprsnobj.c_brd_enm;      /*60 Ӣ������/�ͻ���λ*/
           c_rgst_no  =custprsnobj.c_rgst_no;      /*20 ���̵ǼǺ�/���֤��*/
           c_sex      =custprsnobj.c_sex;          /*1 �Ա�*/
           c_hmtwn    =custprsnobj.c_hmtwn;        /*20 ����*/
           c_ntn_cde  =custprsnobj.c_ntn_cde;      /*2 ����*/
           t_birthday =custprsnobj.t_birthday;     /*date ��������*/
           c_mrg_cde  =custprsnobj.c_mrg_cde;      /*2 ����״��*/
           c_grdt     =custprsnobj.c_grdt;         /*30 ��ҵԺУ*/
           c_edu_cde  =custprsnobj.c_edu_cde;	     /*2 ѧ��*/
           c_major_cde=custprsnobj.c_major_cde;    /*2 רҵ*/
           c_title_cde=custprsnobj.c_title_cde;    /*2 ְ��*/
           c_duty     =custprsnobj.c_duty;         /*20	ְ��*/
           c_tel      =custprsnobj.c_tel;          /*20 �绰*/
           c_fax      =custprsnobj.c_fax;          /*20	����*/
           c_email    =custprsnobj.c_email;        /*30 E-MAIL*/
           c_clnt_addr=custprsnobj.c_clnt_addr;    /*60 ��ַ*/
           c_zip_cde  =custprsnobj.c_zip_cde;      /*6 �ʱ�*/
           c_remark   =custprsnobj.c_remark;       /*500 ��ע*/
           c_clnt_mrk =custprsnobj.c_clnt_mrk;     /* 1 �ͻ���־ '0'-����,'1'-����*/
           c_emp_cde  =custprsnobj.c_clnt_cde;      /*10 Ա������ ��Ϊ�����˻����޸���*/
           t_upd_tm   ="22:22:22";       /*TIME hh:mm:ss  �޸�ʱ�䣬���ڲ�������*/
           c_province  =custprsnobj.c_province;	     /*20 �͵�ʡ����*/
           c_city     =custprsnobj.c_city;	        /*20 �͵���/��/��*/
           c_place    =custprsnobj.c_place;	       /*100 �͵���ϸλ��*/

    }
}

