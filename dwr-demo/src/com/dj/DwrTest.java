package com.dj;

import java.util.Collection;

import org.directwebremoting.Browser;
import org.directwebremoting.ScriptBuffer;
import org.directwebremoting.ScriptSession;

public class DwrTest {

	 public void send(final String content){
		 System.out.println("��Ϣ�ѷ��ͣ�"+ content);
         Runnable run = new Runnable(){
             private ScriptBuffer script = new ScriptBuffer();
             public void run() {
                  //����Ҫ���õ� js������
                  script.appendCall("showMessage" , content);
                  //�õ�����ScriptSession
                  Collection<ScriptSession> sessions = Browser.getTargetSessions();
                  //����ÿһ��ScriptSession
                  for (ScriptSession scriptSession : sessions){
                      scriptSession.addScript( script);
                  }
            }
         };
          //ִ������
         Browser. withAllSessions(run);
  }
}
