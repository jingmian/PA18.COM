package ken;

import java.io.*;
import java.util.*;
import java.text.*;

public class LogOperator {
  private String fileName;
  private String logName1 = new String();//1���û�����־
  private String logName2 = new String();//2���û�����־
  private String logName3 = new String();//3���û�����־

  private boolean hasBeenCalled = false;

  public boolean isHasBeenCalled(){
    return(hasBeenCalled);
  }
  public void Called(boolean flag){
    this.hasBeenCalled = flag;
  }

  public LogOperator() {
  }

  /**
  * �ӹ��죺ֱ�������ļ�����
  * param _fileName String �ļ���
  */
  public LogOperator(String _fileName,
                     String _log1,
                     String _log2,
                     String _log3){
    this.fileName = new String();
    this.fileName = _fileName;
    this.logName1 = _log1;
    this.logName2 = _log2;
    this.logName3 = _log3;
  }

  /**
  * �����ļ���.
  * param _fileName String �ļ���
  */
  public void setFileName(String _fileName){
    this.fileName = new String();
    this.fileName = _fileName;
  }

  /**
  * ������־�ļ������ƣ�Ӧ���Ǿ���·����
  * param _log1 String
  * param _log2 String
  * param _log3 String
  */
  public void setLogName(String _log1,String _log2,String _log3){
    this.logName1 = _log1;
    this.logName2 = _log2;
    this.logName3 = _log3;
  }

  /**
  * �����µĸ�����Ϣ����ϣ���������������͵���Ϣ��key��1��2��3;
  * param h Hashtable
  * param _addFlag1 boolean �Ƿ�������1���û�����־
  * param _addFlag2 boolean �Ƿ�������2���û�����־
  * param _addFlag3 boolean �Ƿ�������3���û�����־
  * return boolean (���³ɹ�/ʧ��)
  */
  public boolean addNewLog(Hashtable h,
                           boolean _addFlag1,
                           boolean _addFlag2,
                           boolean _addFlag3){
    boolean tempF = true;
    Vector temV;
    String addedContent = new String();
    String logDate;
    SimpleDateFormat bartDateFormat =
      new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
    Date date = new Date();
    logDate = bartDateFormat.format(date).toString();
    if(_addFlag1&&tempF){
      addedContent = logDate+" "+(String)h.get("1");
      temV = new Vector();
      temV = getLogContent(this.logName1);
      temV.addElement(addedContent);
      tempF = setLogContent(this.logName1,temV);
    }
    if(_addFlag2&&tempF){
      addedContent = logDate+" "+(String)h.get("2");
      temV = new Vector();
      temV = getLogContent(this.logName2);
      temV.addElement(addedContent);
      tempF = setLogContent(this.logName2,temV);
    }
    if(_addFlag3&&tempF){
      addedContent = logDate+" "+(String)h.get("3");
      temV = new Vector();
      temV = getLogContent(this.logName3);
      temV.addElement(addedContent);
      tempF = setLogContent(this.logName3,temV);
    }
    return(tempF);
  }

  /**
  * ����ȡ���µ���־��¼
  * param _auth int ��ݱ�־
  */
  public Hashtable getNewLog(int _auth){
    Hashtable tempH = new Hashtable();
    Vector temV = new Vector();
    String date = "";
    String content = "";
    if(_auth == 1){//�����1���û�����ȥȡ1���û�����־�ļ�
      temV = getLogContent(this.logName1);
    }
    if(_auth == 2){//�����2���û�����ȥȡ2���û�����־�ļ�
      temV = getLogContent(this.logName2);
    }
    if(_auth == 3){//�����3���û�����ȥȡ3���û�����־�ļ�
      temV = getLogContent(this.logName3);
    }
    if(temV.size()!=0){
      String logContent = (String)temV.elementAt(temV.size()-1);
      date = logContent.substring(0,19);
      content = logContent.substring(20).trim();
      tempH.put("LogDate",date);
      tempH.put("LogContent",content);
    }
    return(tempH);
  }

  /**
  * ��ȡ��־�ļ�����
  * param _fileName String �ļ��ľ���·��������
  * return tempV �ļ�������
  */
  private Vector getLogContent(String _fileName){
    Vector tempV = new Vector();
    String record;
    try {
      FileReader fr = new FileReader(_fileName);
      BufferedReader br = new BufferedReader(fr);
      record = new String();
      while ((record = br.readLine()) != null) {
        System.out.println(record);
        tempV.addElement(record);
      }
      br.close();
      fr.close();
    } catch (IOException ex) {
      //���û������ļ���������һ����
      setLogContent(_fileName,tempV);
      System.out.println("Uh oh,the file doesnot exit,but I created one.");
      //ex.printStackTrace();
    }
    return(tempV);
  }

  /**
  * д��־�ļ�����
  * param _fileName String �ļ��ľ���·��������
  * param tempV Vector �ļ�������
  */
  private boolean setLogContent(String _fileName,Vector tempV){
    boolean operaFlag = false;
    String tempStr = new String();
    try
		{
			PrintWriter pw = new PrintWriter(new FileOutputStream(_fileName));
      for(int i=0;i<tempV.size();i++){
        tempStr = tempV.elementAt(i).toString();
        pw.println(tempStr);
      }
			pw.close();
			operaFlag = true ;
		} catch(IOException e) {
			operaFlag = false;

		}
    return(operaFlag);
  }
} 