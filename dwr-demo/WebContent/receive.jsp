<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
  <head>
    <title>dwr接收</title>
        <script type='text/javascript' src='/dwr-demo/dwr/engine.js'></script>  
	    <script type='text/javascript' src='/dwr-demo/dwr/util.js'></script>  
	    <script type='text/javascript' src='/dwr-demo/dwr/interface/DwrTest.js'></script>
	    <script type='text/javascript' src='static/js/jquery.min.js'></script>    
  </head>
 
  <body>
        dwr接收的消息<hr />
        <div id="content"></div>
        <script type="text/javascript" >
           //这个方法用来启动该页面的ReverseAjax功能
           dwr.engine.setActiveReverseAjax(true);
           //设置在页面关闭时，通知服务端销毁会话
           dwr.engine.setNotifyServerOnPageUnload(true);
           //这个函数是提供给后台推送的时候 调用的
           function showMessage(content){ 
        	   $("#content").html(content);
           }
        </script>
  </body>
</html>