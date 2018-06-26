/**
*This class is the client for the Static Information Manager Service<br>
*You can use this class to test if the Static Information Manage Service is alive.<br>
*Most of the methods and members are static ,so that the class can be used in multi-thread way
*/
package mon;
import org.omg.CORBA.*;
import com.mcip.cdt.orb.*;
import com.mcip.orb.*;
import java.lang.*;
import utility.*;

public class StaticInfoClient {
  public static staticInfoManager pManager;//server side object

  private static void initClient() throws Exception//initialization of the class
	{
		try{
			org.omg.CORBA.ORB orb = ORBManager.getORBForClient();
			pManager = staticInfoManagerHelper.bind(orb, "smanager");
		}catch(Exception e){
			throw new Exception("��CORBA�������:"+e.toString());
		}
	}

  private StaticInfoClient() throws Exception
  {
  }

  /** this static function to test if static information corba service is alive*/
  public static String  isAlive(){
	  String returnStr = "";
	 try{
		initClient();
	 }catch(Exception e){
		return returnStr = e.toString();
	 }
	 finally
	{
		 return returnStr;
	 }
  }
  public static void main(String[] args) {

	  if  (EmailClient.isAlive().length()==0)
	  {
		  System.out.println("Static Infomation Manager Service is alive!");
	  }else{
		  System.out.println("Static Information Manager Service is down!");
	  }
	 
  }
}
