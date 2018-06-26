////////////////////////////////////////////////////////
// Author��zlx
// Function��For getobject in beans
// Create date��2000/8/12
// Update date��2000/8/12
////////////////////////////////////////////////////////

package beans;

import java.io.*;
import java.util.*;
import java.lang.*;
import java.beans.Beans;
import exceptions.*;
import com.mcip.bus.orb.*;
import com.mcip.nia.orb.*;
import com.mcip.orb.*;
import constant.*;
import utility.*;

public class ZObjects
{
	public static String news="ok";
	private final static String casePara[]={"c_ply_no","c_rpt_no","c_clm_no","c_insrnt_nme"
					,"c_insrnt_cde","c_insrnc_tgt","c_rpt_nme","c_srs_case_mrk","c_rpt_addr_tel"
					,"t_rtp_tm","t_accdnt_tm","c_accdnt_spot","c_accdnt_caus","c_los_dtl"
					,"c_cur_typ","n_rpt_amt","c_insrnc_cde","c_rcvr_cde","c_opinion"
					,"c_remark","c_tgt_los_dtl","c_hlp_exp","c_thd_los","c_clm_prcs_dtl"
					,"c_srs_case_opinion","c_dpt_cde","t_rpt_mdfy_tm","c_prcs_dpt_cde"
					,"c_rpt_rgst_cde","t_insrnc_bgn_tm","t_insrnc_end_tm","n_amt"
					,"c_amt_cur","c_car_no","c_lcn_no","c_brnd_cde","c_eng_no","c_accdnt_dtl"
					,"c_rpt_prcs_mrk","c_brnd_cnm","c_internet_typ","c_prt_dcn_no","c_srvy_mrk"
					,"c_agencysrvy_mrk","c_insrnc_cls","t_rpt_rgst_tm","c_clm_rgst_mrk"};
	private final static String funcPara[]={"c_func_cde","c_func_cnm","c_func_enm"};
	private final static String pagePara[]={"c_page_no","c_page_title","c_file_enm","c_func_cde","t_edit_tm"};
	private final static String faqPara[]={"c_faq_no","c_faq_psn","c_faq_email","c_faq_title","c_faq_content","t_faq_tm","c_reply_cont","c_reply_emp","t_reply_tm"};   	 

	public ZObjects()
    {
    	super();
    }
	//information about object case
   public static int getcase(String fieldname)
   {
   	int len;
		len = casePara.length;
		for (int i=0;i<len;i++)
		{
   	    if (fieldname.trim().equalsIgnoreCase(casePara[i].trim()))
   	    {
   			System.out.println("i="+i);
   	       return i;
   	    }
   	}
   	news=fieldname;
   	return -1;
	}
   public static int getfunc(String fieldname)
   {
   	int len;
		len = funcPara.length;
		for (int i=0;i<len;i++)
		{
   	    if (fieldname.trim().equalsIgnoreCase(funcPara[i].trim()))
   	    {
   	       return i;
   	    }
   	}
   	return -1;
	}
   public static int getpage(String fieldname)
   {
   	int len;
		len = pagePara.length;
		for (int i=0;i<len;i++)
		{
   	    if (fieldname.trim().equalsIgnoreCase(pagePara[i].trim()))
   	    {
   	       return i;
   	    }
   	}
   	return -1;
	}

    private static int  ToInt(String sValue) throws NormalException
    {
    	int retInt = 0;
    	
    	if(!(sValue == null || sValue.equals("")))
    	{
	        try
	        {
	        	retInt = Integer.parseInt(sValue);

	        }	
	    	catch(NumberFormatException e)
	    	{
	    		throw NormalExceptionHandler.Handle(e);
	    	}
	        
        }    	
        
    	return retInt;        
    }

//    private static double  ToDouble(String sValue) throws NormalException
    private static double  ToDouble(String sValue) throws NormalException
    {
    	double retDouble = 0;
    	sValue = sValue.trim();

    	if(!(sValue == null || sValue.equals("")))
    	{
    	System.out.println("enter double svalue is :"+sValue);
	        try
	        {
				retDouble = new Double(sValue).doubleValue();
//	        	retDouble = Double.parseDouble(sValue);

	        }	
	    	catch(NumberFormatException e)
	    	{
	    		throw NormalExceptionHandler.Handle(e);
	    	}
	    	
    	System.out.println("over double:svalue:"+sValue);	    	
       }    	
        
    	return retDouble;        
    }

    private static char  ToChar(String sValue) throws NormalException
    {
    	char retChar = 'a';
    	
/*    	if(sValue == null || sValue.equals(""))
    	else
    	{
	        try
	        {
	        	retChar = Integer.parseInt(sValue);

	        }	
	    	catch(NumberFormatException e)
	    	{
	    		throw new NormalException("new object (NumberFormat):"+e.getMessage());
	    	}
	        
        }    	*/
        
    	return retChar;        
    }
    
    public  static CaseRptInfo getCaserptinfo(String[] st) throws NormalException
    {
    	CaseRptInfo obj;
    	
    	try
    	{
             obj = new CaseRptInfo(st[getcase("C_PLY_NO")],
				    st[getcase("c_rpt_no")] ,
				    st[getcase("c_clm_no")] ,
				    st[getcase("c_insrnt_nme")] ,
				    st[getcase("c_insrnt_cde")] ,
				    st[getcase("c_insrnc_tgt")] ,
				    st[getcase("c_rpt_nme")] ,
				    st[getcase("c_srs_case_mrk")] ,
				    st[getcase("c_rpt_addr_tel")] ,
				    st[getcase("t_rtp_tm")] ,
				    st[getcase("t_accdnt_tm")] ,
				    st[getcase("c_accdnt_spot")] ,
				    st[getcase("c_accdnt_caus")] ,
				    st[getcase("c_los_dtl")] ,
				    st[getcase("c_cur_typ")] ,
				    ToDouble(st[getcase("n_rpt_amt")]) ,
//				    Double.parseDouble(st[getcase("n_rpt_amt")]) ,
//					 Double.parseDouble("5646") ,
				    st[getcase("c_insrnc_cde")] ,
				    st[getcase("c_rcvr_cde")] ,
				    st[getcase("c_opinion")] ,
				    st[getcase("c_remark")] ,
				    st[getcase("c_tgt_los_dtl")] ,
				    st[getcase("c_hlp_exp")] ,
				    st[getcase("c_thd_los")] ,
				    st[getcase("c_clm_prcs_dtl")] ,
				    st[getcase("c_srs_case_opinion")] ,
				    st[getcase("c_dpt_cde")] ,
				    st[getcase("t_rpt_mdfy_tm")] ,
				    st[getcase("c_prcs_dpt_cde")] ,
				    st[getcase("c_rpt_rgst_cde")] ,
				    st[getcase("t_insrnc_bgn_tm")] ,
				    st[getcase("t_insrnc_end_tm")] ,
				    ToDouble(st[getcase("n_amt")]) ,
				    st[getcase("c_amt_cur")] ,
				    st[getcase("c_car_no")] ,
				    st[getcase("c_lcn_no")] ,
				    st[getcase("c_brnd_cde")] ,
				    st[getcase("c_eng_no")] ,
				    st[getcase("c_accdnt_dtl")] ,
				    st[getcase("c_rpt_prcs_mrk")] ,
				    st[getcase("c_brnd_cnm")] ,
				    st[getcase("c_internet_typ")] ,
				    st[getcase("c_prt_dcn_no")] ,
				    st[getcase("c_srvy_mrk")] ,
				    st[getcase("c_agencysrvy_mrk")] ,
				    st[getcase("c_insrnc_cls")] ,
				    st[getcase("t_rpt_rgst_tm")] ,
				    st[getcase("c_clm_rgst_mrk")] );
   	}
    	catch(Exception e)
    	{
         e.printStackTrace();
      	System.out.println("in zobject"+e);
    		throw NormalExceptionHandler.Handle(e);
    	}
    	
    	return obj;
    }

    public  static SysFuncInfo getSysFuncInfo(String[] st)
    {
    	SysFuncInfo obj;

      obj = new SysFuncInfo(st[getfunc("c_func_cde")],
				    st[getfunc("c_func_cnm")] ,
				    st[getfunc("c_func_enm")] );
    	
    	return obj;
     }	

    public  static PagesInfo getPagesInfo(String[] st)
    {
    	PagesInfo obj;

      obj = new PagesInfo(st[getpage("c_page_no")],
				    st[getpage("c_page_title")] ,
				    st[getpage("c_file_enm")] ,
				    st[getpage("c_func_cde")] ,
				    st[getpage("t_edit_tm")] );
    	
    	return obj;
     }	
	//add by zlx on 10.24.2000
	 public  static CustFaqInfo getFaqInfo(String[] st)
    {
      CustFaqInfo obj = new CustFaqInfo(st[0],st[1],st[2],st[3],st[4],st[5],st[6],st[7],st[8]);
    	
    	return obj;
     }	


   public static String getValue (int row, String fieldname, String[][] Para)
   {
   	for (int j=0;j<(Para[0].length);j++)
   	{
   	    if (fieldname.trim().equalsIgnoreCase(Para[0][j].trim()))
   	       return Para[row][j];
   	}
   	return null;
   }

   public static int getColNum (String fieldname, String[][] Para)
   {
        if(Para == null)
           return 0;
   	for (int j=0;j<(Para[0].length);j++)
   	{
   	    if (fieldname.trim().equalsIgnoreCase(Para[0][j].trim()))
   	       return j;
   	}
   	return 0;
   }

  public static String getHt(Hashtable ht,String KeyStr)
  {
  	if(ht == null || KeyStr == null || KeyStr.equals(""))
  	   return "";
  	KeyStr = KeyStr.toUpperCase();   
  	if(!ht.containsKey(KeyStr))   
  	   return "";
  	   
  	if(ht.get(KeyStr) == null)   
  	   return "";
  	   
  	return ht.get(KeyStr).toString();
  	   
  }
}
/*
  CaseRptInfo
  {
  string c_ply_no;        // ������ 
 
       string c_rpt_no;        // ������ //
  string c_clm_no;        // �ⰸ��//
  wstring c_insrnt_nme;    // ������������//
  string c_insrnt_cde;    // �������˴���//
  wstring c_insrnc_tgt;    // ���ձ�� //
  wstring c_rpt_nme;       // ���������� //
  string c_srs_case_mrk;  // �ش��ⰸ��־//
  wstring c_rpt_addr_tel;  // �����˵�ַ�绰 //
  string t_rtp_tm;        // ����ʱ�� //
  string t_accdnt_tm;     // ����ʱ�� //
  wstring c_accdnt_spot;   // ���յص�//
  wstring c_accdnt_caus;   // ����ԭ�� //
  wstring c_los_dtl;       // ��ʧ���//
  string c_cur_typ;       // �������//
  double n_rpt_amt;       // ������//
  string c_insrnc_cde;    // ����//
  string c_rcvr_cde;      // ����������//
  wstring c_opinion;       // �������//
  wstring c_remark;        // ��ע//
  wstring c_tgt_los_dtl;   // �����ʧ��� //
  wstring c_hlp_exp;       // ʩ�����������//
  wstring c_thd_los;       // ��������ʧ���//
  wstring c_clm_prcs_dtl;  // �ⰸ�������//
  wstring c_srs_case_opinion;  // �ش��ⰸ������� //
  string c_dpt_cde;       // �б�����//
  string t_rpt_mdfy_tm;   // �����޸����� this field is more than Table t_clmrpt//
  string c_prcs_dpt_cde;      //�������//
  string c_rpt_rgst_cde;      //�����Ǽ���//
  string t_insrnc_bgn_tm;     //��������//
  string t_insrnc_end_tm;     //����ֹ��//
  double n_amt;               //Ͷ�����//
  string c_amt_cur;           //�������//
  string c_car_no;            //�������//
  string c_lcn_no;            //���պ�//
  string c_brnd_cde;          //���Ƴ���//
  string c_eng_no;            //��������//
  wstring c_accdnt_dtl;        //���վ���//
  string c_rpt_prcs_mrk;      //��0��-����,��1��-������,��2��-�ݻ�����//
  wstring c_brnd_cnm;          //���Ƴ�������//
  string c_internet_typ;      //����ҵ���־//
  string c_prt_dcn_no;
  string c_srvy_mrk;
  string c_agencysrvy_mrk;
  string c_insrnc_cls;
  string t_rpt_rgst_tm;
  string c_clm_rgst_mrk;
*/
/*
             obj = new case(st[getcase("C_PLY_NO")],
				    st[getcase("c_rpt_no")] ,
				    st[getcase("c_clm_no")] ,
				    st[getcase("c_insrnt_nme")] ,
				    st[getcase("c_insrnt_cde")] ,
				    st[getcase("c_insrnc_tgt")] ,
				    st[getcase("c_rpt_nme")] ,
				    st[getcase("c_srs_case_mrk")] ,
				    st[getcase("c_rpt_addr_tel")] ,
				    st[getcase("t_rtp_tm")] ,
				    st[getcase("t_accdnt_tm")] ,
				    st[getcase("c_accdnt_spot")] ,
				    st[getcase("c_accdnt_caus")] ,
				    st[getcase("c_los_dtl")] ,
				    st[getcase("c_cur_typ")] ,
				    ToDouble(st[getcase("n_rpt_amt")]) ,
				    st[getcase("c_insrnc_cde")] ,
				    st[getcase("c_rcvr_cde")] ,
				    st[getcase("c_opinion")] ,
				    st[getcase("c_remark")] ,
				    st[getcase("c_tgt_los_dtl")] ,
				    st[getcase("c_hlp_exp")] ,
				    st[getcase("c_thd_los")] ,
				    st[getcase("c_clm_prcs_dtl")] ,
				    st[getcase("c_srs_case_opinion")] ,
				    st[getcase("c_dpt_cde")] ,
				    st[getcase("t_rpt_mdfy_tm")] ,
				    st[getcase("c_prcs_dpt_cde")] ,
				    st[getcase("c_rpt_rgst_cde")] ,
				    st[getcase("t_insrnc_bgn_tm;")] ,
				    st[getcase("t_insrnc_end_tm")] ,
				    ToDouble(st[getcase("n_amt")]) ,
				    st[getcase("c_amt_cur")] ,
				    st[getcase("c_car_no")] ,
				    st[getcase("c_lcn_no")] ,
				    st[getcase("c_brnd_cde")] ,
				    st[getcase("c_eng_no")] ,
				    st[getcase("c_accdnt_dtl")] ,
				    st[getcase("c_rpt_prcs_mrk")] ,
				    st[getcase("c_brnd_cnm")] ,
				    st[getcase("c_internet_typ")] ,
				    st[getcase("c_prt_dcn_no")] ,
				    st[getcase("c_srvy_mrk")] ,
				    st[getcase("c_agencysrvy_mrk")] ,
				    st[getcase("c_insrnc_cls")] ,
				    st[getcase("t_rpt_rgst_tm")] ,
				    st[getcase("c_clm_rgst_mrk")] );
*/