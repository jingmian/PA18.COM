package beans;
import java.util.*;
/**
 * Title:
 * Description:  beans for statistic purpose
 * Copyright:    Copyright (c) 2000
 * Company:      C&T
 * @author Lawrence Kang
 * @version 1.0
 */

public class StatisticBean {
	private static final String[][] CURR_INFO={
											    {"01","RMB","�����"},
												{"02","HKD","�۱�"},
												{"03","USD","��Ԫ"}
											  };
	private static final int CURRENCY_CODE = 0;
	private static final int CURRENCY_SYMBOL = 1;
	private static final int CURRENCY_CHNNAME = 2;
		/**���������ڽ������ݿ���ѡ�������ݽ���ɸѡ<br>
	 * ʹ���߸�����ɸѡ�����ݺ�ɸѡ�����ݣ���������ɸѡ�����ͳ��
	 */
	public static String[][] filter(String in_data[][],String key){
		Vector tempStore = new Vector();
		float summaryPrm = 0,summaryAmt = 0;
		String[][] result = null;
		if (in_data == null)
			return null;
		for (int i=0;i<in_data.length;i++){
			if (key.equals(in_data[i][Objects.getColNum("C_PRM_CUR",in_data)])){
			    tempStore.add(in_data[i]);
				summaryPrm += Float.parseFloat(in_data[i][Objects.getColNum("N_TGT_PRM",in_data)]);
				summaryAmt += Float.parseFloat(in_data[i][Objects.getColNum("N_TGT_AMT",in_data)]);
			}
		}
		//��ʼ����������
		//��һ�У��ֶ���
		//���һ�У�С�ƽ��
		if (tempStore.size()>0){
			result = new String[tempStore.size()+2][in_data[0].length];
			//��ʼ�������
			for (int i=0;i<result[result.length-1].length;i++)
				result[result.length-1][i] = "";
			//����С�ƽ��
			result[result.length-1][Objects.getColNum("C_PLY_NO",in_data)] = getCurrInfo(key,CURRENCY_CHNNAME) + "С��:";//С�Ʊ���
		    result[result.length-1][Objects.getColNum("N_TGT_PRM",in_data)] = new Float(summaryPrm).toString();//С�Ʊ���
			result[result.length-1][Objects.getColNum("C_PRM_CUR",in_data)] = key;//���ѱ���

			if (!key.equals(CURR_INFO[2][0])){
				result[result.length-1][Objects.getColNum("N_TGT_AMT",in_data)] = new Float(summaryAmt).toString();//С�Ʊ���
				result[result.length-1][Objects.getColNum("C_CUR_SBL",in_data)] = getCurrInfo(key,CURRENCY_SYMBOL);//�������
			}


		}
		else{
			result = new String[1][in_data[0].length];
		}
		//�����ֶ���
		result[0] = in_data[0];

		for (int i=0;i<tempStore.size();i++){
			result[i+1] = (String[])tempStore.elementAt(i);
		}
		return result;
	}

	/** This private method accept the input index and return the whole detail information of the currency<br>
	 *  NOTE:The indexString can be one of the following: currency code,currency symbol or currency name in Chinese<br>
	 *  Example, to get the information of HKD(Hong Kong doller):
	 *  String HKDSymbol = getCurrInfo("02",CURRENCY_SYMBOL);<br>
	 *  String HKDCHNName = getCurrInfo("HKD",CURRENCY_CHNNAME);<br>
	 *  String HKDCode = getCurrInfo("�۱�",CURRENCY_CODE);<br>
	 *  If no specifate information be found,a null will be returned
	 */
	private static String[] getCurrInfo(String indexString){
		if (indexString == null)
			return null;
		for (int i=0;i<CURR_INFO.length;i++){
			for (int j=0;j<CURR_INFO.length;j++)
				if (CURR_INFO[i][j].equals(indexString)){
					return CURR_INFO[i];
				}
		}
		return null;
	}

	/**
	 * This private mehtod accept the input index and specific information index then return the specific information of the currency<br>
	 * NOTE:The indexString can be one of the following string: currency code,currency symbol or currency name in Chinese<br>
	 * NOTE:The infoIndex can be one of the following int :CURRENCY_CODE,CURRENCY_SYMBOL,CURRENCY_CHNNAME
	 * Example, to get the detail information of HKD(Hong Kong doller):
	 *  String HKDInfo = getCurrInfo("02",);<br>
	 *  String HKDInfo = getCurrInfo("HKD");<br>
	 *  String HKDInfo = getCurrInfo("�۱�");<br>
	 *  any of the above statement will get the properiate information about HKD
	 *  If no specifate information be found,a null will be returned
	 */
	 private static String getCurrInfo(String indexString,int infoIndex){
		String[] tempArray = getCurrInfo(indexString);
		if (tempArray == null)
			return null;
		if (infoIndex<0 || infoIndex >2)
			return null;
		return tempArray[infoIndex];
	 }

}