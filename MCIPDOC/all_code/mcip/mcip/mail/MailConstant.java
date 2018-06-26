////////////////////////////////////////////////////////
// Author:     ZhanYB
// Function:   Mail Constant
// Update Date:2000/7/20
////////////////////////////////////////////////////////
package mail;

public class MailConstant
{
    public static final long MAILDAEMON_SLEEPTIME=1*3600000;   //Hours*1000*3600

    ////////////////////////////////////////////////////////
    // Mail Log Constant
    ////////////////////////////////////////////////////////
    public static final String LOGPATH="/log";       //Mail Log Path
    public static final String LOGFILENAME="MailException";  //Mail Log File Name
    public static final String LOGFILTER="log";     //Mail Log Filter

    public static final String LOGERROR ="Mail_Error  ";   //Mail Log Filter
    public static final String LOGWARN  ="Mail_Warning";   //Mail Log Filter
    public static final String LOGNORMAL="Mail_Normal ";   //Mail Log Filter

    ////////////////////////////////////////////////////////
    // Mail Daemon status code
    ////////////////////////////////////////////////////////

    public static final int MAILDAEMON_ERROR=-1;    //Can't continue for next mail
    public static final int MAILDAEMON_WARNING=-2;  //Ignore Current mail processing,Can continue for next mail
    public static final int MAILDAEMON_SUCCESS=0;   //Succeed in sending out the mail

    ////////////////////////////////////////////////////////
    // Mail status code
    ////////////////////////////////////////////////////////

    public static final String MAIL_INVALID="0";
    public static final String MAIL_SENDED="1";
    public static final String MAIL_UNSENDED="2";

    ////////////////////////////////////////////////////////
    // Mail use case 1
    ////////////////////////////////////////////////////////
/*
    public static final String APPLICATION_ACCEPT_MAILCDE = "0";
    public static final String APPLICATION_ACCEPT_SUBJECT = "Subject";
    public static final String APPLICATION_ACCEPT_CONTENT="Content";
*/

    public static final String APPLICATION_ACCEPT_MAILCDE = "0";
    public static final String APPLICATION_ACCEPT_SUBJECT = "�¿ͻ���Ա��������׼";
    public static final String APPLICATION_ACCEPT_CONTENT="��ϲ����ϲ�����ѳ�Ϊƽ�����˱�����վ�Ļ�Ա����\n���������ܵ�����Ϊ���ṩ�Ķ๦�ܿͻ����񣬿�����һ�԰ɡ�";

    ////////////////////////////////////////////////////////
    // Mail use case 2
    ////////////////////////////////////////////////////////
    public static final String PROPOSAL_SEND_MAILCDE = "1";
    public static final String PROPOSAL_SEND_SUBJECT = "���߿ͻ��������ѷ���";
    public static final String PROPOSAL_SEND_CONTENT="�����Ͷ���������Ѿ��յ���\n����Ϊ���ⶨ�˳б������������Դ򿪽������Ķ���\n��Ҳ���Խ������ǵ���վ:http://cargo.pa18.com���в�ѯ��";

    public static final String XML_SITECODE = "002";    
}
