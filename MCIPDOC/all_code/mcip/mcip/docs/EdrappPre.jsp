<%    

      String C_APP_NME = ""; //Ͷ����
      String C_INSRNT_NME = "";//����������
      String C_PLACE = "";//�ʹ���ϸ��ַ
      String C_CONTACT_NAME= "";//��ϵ��
      String C_CONTACT_PHONE = "";//��ϵ�绰
      String C_CONTACT_FAX = "";//��ϵ����
      String C_CONTACT_EMAIL= "";//
	  String C_ZIP_CDE ="";
	  String C_CREDIT_ID = "";//����֤��ʶ 
	  String C_CRGO_CLS = ""; //�������
	  String C_CRGO_CDE = "";//�������
      String C_CRGO_NAME = "";//��������
      String C_CRGO_DESC= "";//Ʒ������
      String C_PACK_CNM= "";//��װ����
      String C_AMOUNT= "";//��������λ
      String C_MARK= "";//��ͷ
      String N_INVC_AMT = "";//��Ʊ���
      String C_INVC_AMT_CUR  = "";//��Ʊ����
	  String C_AMT_CUR_CNM = "";//���������
	  String C_AMT_CUR = "";//�������
	  String C_PRM_CUR =  "";//���ѱ���
	  String N_RATE = "";//����
	  String N_AMT = "";//���ս��
	  String N_PRM = "";//����
      String C_INVC_NO ="";//��Ʊ����
      String C_RECEIPT_NO ="";//�ᵥ��
      String C_FRM_PRT_ARA ="";//���˹�
      String C_FROM_PRT=  "";  //���˸�
      String C_PASS_PRT = "";//;����
      String C_TO_PRT_ARA = "";//�����
      String C_TO_PRT = "";//�����
      String C_SAIL_NO = "";//����
      String C_CONTAINER = "";//��װ�䷽��
      String t_insrnc_bgn_tm = "";//��������
	  String C_NO_REPAY = "";//����
	  String C_REMARK ="";//��ע      
      String birth_year="";  //plyEdrAppCrgoInfo.c_prn_frm������
      String birth_month=""; //������
      String birth_day=""; //�������� 
	  String C_INSRNC_CDE = "";//����
      String C_UNDR_CNDTN = "";//�б�����
	  String C_LOST_DESC = "";//�⸶��¼
	  String C_OPEN_COVER_NO  = "";//Open Cover Э���
	  String C_ADD_RISK = "";//����������
	  String OLD_PRM_CUR =""; //�ɱ��ѱ���


	  String N_PRM1 ="";//ԭ����
	  String N_PRM_VAR ="";//���ѱ仯
	  String N_PRM_CHANGE= "";//���ѱ仯�ٷֱ�

	  String C_EDR_CTNT = "";//����ԭ��

	  String C_PROVINCE ="";
	  String C_CITY ="";
	  String Currency_NAME = "";

	  String C_CTNT ="";

	  String tempstr1 = "";
	  String tempstr2 = "";

      String paraNames[]= { "C_APP_NME" ,          "C_INSRNT_NME",      "C_PLACE",
                            "C_CONTACT_NAME",      "C_CONTACT_PHONE",   "C_CONTACT_FAX",
                            "C_CONTACT_EMAIL" ,    "C_CREDIT_ID",       "C_CRGO_CLS",
	                        "C_CRGO_CDE",          "C_CRGO_NAME",       "C_CRGO_DESC",
                            "C_PACK_CNM",          "C_AMOUNT",          "C_MARK",
                            "N_INVC_AMT",          "C_INVC_AMT_CUR",    "C_AMT_CUR_CNM",
	                        "C_AMT_CUR",           "C_PRM_CUR",         "N_RATE",
	                        "N_AMT",               "N_PRM",             "C_INVC_NO",
                            "C_RECEIPT_NO",        "C_FRM_PRT_ARA",     "C_FROM_PRT",
                            "C_PASS_PRT",          "C_TO_PRT_ARA",      "C_TO_PRT",
                            "C_SAIL_NO",           "C_CONTAINER",       "t_insrnc_bgn_tm",
	                        "C_NO_REPAY",          "C_REMARK",          "C_INSRNC_CDE",
                            "C_UNDR_CNDTN",        "C_LOST_DESC",       "C_ADD_RISK",
                            "C_OPEN_COVER_NO",     "C_MAIN_INSURANCE1", "C_MAIN_INSURANCE2",
                            "C_MAIN_INSURANCE3",   "C_MAIN_INSURANCE4", "C_ADD_INSURANCE0",
							"C_ADD_INSURANCE1" ,   "C_ADD_INSURANCE2" , "C_ADD_INSURANCE3",	
							"C_ADD_INSURANCE4",    "C_ADD_INSURANCE5",  "C_ADD_INSURANCE6",  
							"C_ADD_INSURANCE7",    "C_ADD_INSURANCE8",  "C_ADD_INSURANCE9",  
							"C_ADD_INSURANCE10",   "C_ADD_INSURANCE11", "C_ADD_INSURANCE12", 
                            /*"C_ADD_INSURANCE13", */
							"OLD_PRM_CUR",       "N_PRM1",             	"N_PRM_VAR" ,
							"N_PRM_CHANGE",      "C_EDR_CTNT"    ,    	"C_ZIP_CDE",           
							"C_PRN_FRM",         "C_PAY_ADDR",          "C_SRVY_ADDR" 
						   };
	                        
      
	  String result[][] = null;
	  String paras[][] = null ;


	  String CODES[] = {           "01",    "02",    "03",   
	                               "04",    "06",    "05",
								   "02",    "07",    "08",
								   "09",    "36",    "37",
								   "39",    "40",    "42",
								   "18",    "20",   /* "22",*/
								   "23",    "24",    "25",    
								   "27",    "28",    "29",    
								   "30",    "31",    "32",    
								   "33",    "34"
	                          };

      String NAMES[] = {          "������",             "�ۺ���",      "����������",  
	                              "��������һ����",     "ƽ����",      "ˮ����",
								  "һ����",             "I.C.C.(A)",   "I.C.C.(B)",
								  "I.C.C.(C)",          "½����",      "½��һ����",
								  "������",             "����һ����",   "�ʰ���",
								  "�չ���",             "ս����",      /* "��-������",*/
								  "͵�ԡ����������",   "����������", "��©��",       
								  "������",             "��װ������",   "��ˮ��������", 
								  "���ӡ�մ����",       "��ζ��",       "�ܳ�������",   
								  "������",             "������"             
                              };
      String MAINCODES = "01&02&03&04&06&05&07&08&09&36&37&39&40&42";

	 
	  
	    System.out.println("GET REQUEST NOT STEP =BEG Yes, I am there EdrapPre.jsp");
	     String temp="";
		 paras = new String[2][66];//[paraNames.length];
         for(i= 0 ;i< paraNames.length ;i++){
            paras[0][i] = paraNames[i];
			//System.out.println(i +" "+ paraNames[i]);
		    temp = request.getParameter(paraNames[i]);
		    if(temp==null)temp="";
		       paras[1][i] = temp.trim();
         }
		System.out.println("continue doing in EdrApppre.jsp ");
		birth_year = request.getParameter("birth_year");
		birth_month = request.getParameter("birth_month");
		birth_day = request.getParameter("birth_day");
		t_insrnc_bgn_tm = birth_year + "-" + birth_month + "-" + birth_day;
		paras[1][32] = t_insrnc_bgn_tm;
		double n_rate = Objects.ToDouble(paras[1][20]);
        n_rate = n_rate/100 ;
		paras[1][20] = n_rate +"";
		System.out.println("In edrapp get request n_rate:"+n_rate);
		
        

		paras[0][7]= "C_CREDIT_ID";
		paras[1][7]= pmb.plyEdrAppCrgoInfo.c_credit_id;

	 

    try{
      System.out.println("try to set pmb data in edrappPre.jsp");
      ob.setFormData(paras);
	  hashData = ob.getHashData();
    }catch(NormalException e){
	 	    if(NormalExceptionHandler.IsSevere(e))
	 	     throw NormalExceptionHandler.Handle(e);
	 	      else if(NormalExceptionHandler.IsWarning(e))
	 	      WarnMsg = e.getErrDesc();
	 }
	  
	  C_APP_NME = Objects.getHt(hashData,"C_APP_NME"); //Ͷ����
      C_INSRNT_NME = Objects.getHt(hashData,"C_INSRNT_NME");//����������
      C_PLACE = Objects.getHt(hashData,"C_PLACE");//�ʹ���ϸ��ַ
      C_CONTACT_NAME= Objects.getHt(hashData,"C_CONTACT_NAME");//��ϵ��
      C_CONTACT_PHONE = Objects.getHt(hashData,"C_CONTACT_PHONE").trim();//��ϵ�绰


      C_CONTACT_FAX = Objects.getHt(hashData,"C_CONTACT_FAX").trim();//��ϵ����
      C_CONTACT_EMAIL= Objects.getHt(hashData,"C_CONTACT_EMAIL").trim();//
	  C_CREDIT_ID = Objects.getHt(hashData,"C_CREDIT_ID");//����֤��ʶ 
	  C_CRGO_CLS = Objects.getHt(hashData,"C_CRGO_CLS"); //�������
	  C_CRGO_CDE = Objects.getHt(hashData,"C_CRGO_CDE");//�������
      C_CRGO_NAME = Objects.getHt(hashData,"C_CRGO_NAME");//��������
      C_CRGO_DESC= Objects.getHt(hashData,"C_CRGO_DESC");//Ʒ������
      C_PACK_CNM= Objects.getHt(hashData,"C_PACK_CNM");//��װ����
      C_AMOUNT= Objects.getHt(hashData,"C_AMOUNT");//��������λ
      C_MARK= Objects.getHt(hashData,"C_MARK");//��ͷ
      N_INVC_AMT = Objects.getHt(hashData,"N_INVC_AMT");//��Ʊ���
      C_INVC_AMT_CUR  = Objects.getHt(hashData,"C_INVC_AMT_CUR");//��Ʊ����

	  C_AMT_CUR_CNM = Objects.getHt(hashData,"C_AMT_CUR_CNM");//���������


	  C_AMT_CUR = Objects.getHt(hashData,"C_AMT_CUR");//�������
	  C_PRM_CUR =  Objects.getHt(hashData,"C_PRM_CUR");//���ѱ���
	  OLD_PRM_CUR = Objects.getHt(hashData,"OLD_PRM_CUR");//�ɱ��ѱ���

	  N_RATE = Objects.getHt(hashData,"N_RATE");//����


	  N_AMT = Objects.getHt(hashData,"N_AMT");//���ս��
	  N_PRM = Objects.getHt(hashData,"N_PRM");//����
      C_INVC_NO = Objects.getHt(hashData,"C_INVC_NO");//��Ʊ����
      C_RECEIPT_NO = Objects.getHt(hashData,"C_RECEIPT_NO");//�ᵥ��
      C_FRM_PRT_ARA = Objects.getHt(hashData,"C_FRM_PRT_ARA");//���˹�
      C_FROM_PRT=  Objects.getHt(hashData,"C_FROM_PRT");  //���˸�
      C_PASS_PRT = Objects.getHt(hashData,"C_PASS_PRT");//;����
      C_TO_PRT_ARA = Objects.getHt(hashData,"C_TO_PRT_ARA");//�����
      C_TO_PRT = Objects.getHt(hashData,"C_TO_PRT");//�����
      C_SAIL_NO = Objects.getHt(hashData,"C_SAIL_NO");//����
      C_CONTAINER = Objects.getHt(hashData,"C_CONTAINER");//��װ�䷽��
      t_insrnc_bgn_tm = Objects.getHt(hashData,"t_insrnc_bgn_tm");//��������
	  C_NO_REPAY = Objects.getHt(hashData,"C_NO_REPAY");//����
	  C_REMARK =Objects.getHt(hashData,"C_REMARK");//��ע      
	  C_INSRNC_CDE = Objects.getHt(hashData,"C_INSRNC_CDE");//����
      C_UNDR_CNDTN = Objects.getHt(hashData,"C_UNDR_CNDTN");//�б�����
	  C_LOST_DESC = Objects.getHt(hashData,"C_LOST_DESC");//�⸶��¼
	  C_OPEN_COVER_NO  = Objects.getHt(hashData,"C_OPEN_COVER_NO");//Open Cover Э���
	  C_ADD_RISK = Objects.getHt(hashData,"C_ADD_RISK");//����������
	  C_PROVINCE = pmb.plyPlyAppNetInfo.c_province;
	  C_CITY = pmb.plyPlyAppNetInfo.c_city;
	  N_PRM1 = Objects.getHt(hashData,"N_PRM1");
	  N_PRM_VAR = Objects.getHt(hashData,"N_PRM_VAR");
	  N_PRM_CHANGE = Objects.getHt(hashData, "N_PRM_CHANGE");
	  C_EDR_CTNT = Objects.getHt(hashData,"C_EDR_CTNT");

	  System.out.println("C_EDR_CTNT edrappPre.jsp :"+C_EDR_CTNT);
	  System.out.println("N_RATE.......EdrAppPre.jsp "+N_RATE);
  %>    
 