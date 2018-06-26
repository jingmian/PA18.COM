package ken;

import java.io.OutputStreamWriter; 
import java.io.PrintWriter; 
import java.io.UnsupportedEncodingException;
import java.util.*;

import org.w3c.dom.Attr; 
import org.w3c.dom.Document; 
import org.w3c.dom.NamedNodeMap; 
import org.w3c.dom.Node; 
import org.w3c.dom.NodeList; 
import com.ibm.xml.parsers.*; 

public class xmlDocOperator {

  private String fileName;
  private Hashtable hashData = new Hashtable();
  private String[] array = new String[0];
  public xmlDocOperator() {
  }

  /**
  * ����Ҫ�������ļ����ƣ�����·����
  */
  public void setFileName(String _fileName){
    this.fileName = new String();
    this.fileName = _fileName;
  }

  /*
  *
  */
  public void parseFile(){
    Document doc = null;        
    try{
      DOMParser parser = new DOMParser();
      parser.parse(this.fileName);
      doc = parser.getDocument();
    }catch (Exception e){
      System.err.println("Sorry, an error occurred: " + e);
    }

    if (doc != null){
      //printDOMTree(doc);
      processDoc(doc);
    }else{
      System.out.println("Some Exception occured:can't not parse the file.");
    }
  }

  /*����xml�ļ�*/
  private void processDoc(Node node){
    //��һ��Ĵ���
    Node firstNode =  ((Document)node).getDocumentElement();
    System.out.println(firstNode.getNodeName());

    //�ڶ���Ĵ���
    NodeList secondNodes = firstNode.getChildNodes();
    int len = secondNodes.getLength();
    for (int i = 0; i < len; i++){
      Node currNode = secondNodes.item(i);
      /*���������б���뵽������ȥ*/
      if (currNode.hasChildNodes() && currNode.getNodeName().equals("C_ADD_INSURANCES")){
				save2Array(currNode);
		        continue;
			}
      /*�������ı�������뵽ɢ�б���*/
			if (currNode.hasChildNodes()){				save2Hash(currNode);      }    }

  }

  private void save2Array(Node node){
		Node currElement = null;    int childCount = 0;		NodeList nodeList = node.getChildNodes();		if (nodeList != null){			for (int i=0;i<nodeList.getLength();i++){				currElement = nodeList.item(i);				if ( currElement.hasChildNodes()){          childCount ++;          System.out.println("Child's value is "+currElement.getFirstChild().getNodeValue());				}			}      array = new String[childCount];      childCount = 0;      for (int i=0;i<nodeList.getLength();i++){				currElement = nodeList.item(i);				if ( currElement.hasChildNodes()){					array[childCount] = currElement.getFirstChild().getNodeValue();          childCount ++;        }			}		}    //�����ǵ��Դ�ӡ    /*for(int i=0;i<array.length;i++){      System.out.println(array[i]);    }*/		return;  	}
	private void save2Hash(Node node){		String name = node.getNodeName();		String value = node.getFirstChild().getNodeValue();    hashData.put(name,value);    System.out.println("name is :"+name);    System.out.println("value is :"+value);		return;	}  /*  * ȡ�ø����յ�ֵ  */  public String[] getInsuranceAddCodeList(){		return this.array;	}
  /*  * ȡ��������Ϣ  */	public Hashtable getPolicyHash(){		return this.hashData;        	}
  /*
  * For debug.
  */

  public static void main(String argv[])
  {
    xmlDocOperator d1 = new xmlDocOperator();
    d1.setFileName("simple.xml");
    d1.parseFile();
  }
  
}