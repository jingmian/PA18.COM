////////////////////////////////////////////////////////
// Author��ZhangJinQuan
// function��check valid of field value
// Create date��2000/08/07
// Update date��2000/08/07
////////////////////////////////////////////////////////


package utility;

import java.lang.*;
import java.lang.Integer;
import java.util.*;
import java.text.*;
import exceptions.*;

public class FieldCheck
{

     static final String NOTNULLERR = "��*�ŵ�����Ϊ��!";
     static final String NUMOUTRANGEERR = "�������ݳ�����Χ!";
     static final String NUMFORMATERR = "�������ݸ�ʽ����!";
     static final String STRLENERR = "�ַ������Ȳ��Ϲ涨!";
     static final String MUSTNUMSTRERR = "����������������ַ���!";
     static final String NUMSTRZEROERR = "��������0!";
     static final String PSWDNOTSAMEERR = "������������������ͬ";
     static final String EMAILERR = "E_mail��ַ�������";
            
    public FieldCheck()
    {
    	super();
    }
    
    //check is null
    public static void CheckNull(String SValue[]) throws NormalException
    {
//        if ((SValue == null) || (SValue.trim().length() == 0))
          if (SValue == null)
             throw new NormalException(NOTNULLERR);
             
          for(int i = 0; i < SValue.length; i++)   
          {
          	if ((SValue[i] == null) || (SValue[i].trim().length() == 0))
          	{
                     throw new NormalException(NOTNULLERR);          		
          	}    
          }
 
        return;
        
    }    
    
    public static void CheckPswdSame(String Pswd1,String Pswd2) throws NormalException
    {
    	if ((Pswd1 == null) || (Pswd2 == null))
    	    return;
    	    
    	if (!(Pswd1.equals(Pswd2)))
             throw new NormalException(PSWDNOTSAMEERR);    	       

        return;     
    }
    
    //check is number format string
    public static void CheckIsNumStr(String SValue) throws NormalException
    {
        if ((SValue == null) || (SValue.trim().length() == 0))
             return;
  
        NumberFormat nf = NumberFormat.getNumberInstance();

        try
        {
            nf.parse(SValue);
        }
        catch(ParseException e)
        {
             throw new NormalException(MUSTNUMSTRERR);    	       
        }

        return;
    }

    //check email address valid
    public static void CheckEmail(String SValue) throws NormalException
    {
        if ((SValue == null) || (SValue.trim().length() == 0))
             return;
        String Temp = SValue.trim();     
    	if ((Temp.indexOf("@") < 1) || (Temp.indexOf(".") < 1))
             throw new NormalException(EMAILERR);    	       

        return;    	   
    }
    
}

