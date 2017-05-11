<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">  
<html>  
  
<head>  
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">  
    <title>dwr发送</title>  
    <!-- 注意以下两个javascript的顺序不能随便改，不必手动编写
    1.第一个是engine.js文件，由dwr.jar包提供  
    2.第二个是根据自己写的JAVA类生成的js文件，格式为/{appName}/dwr/interface/{在dwr中暴露的javascript类名.js}  
    -->  
    <script type='text/javascript' src='/dwr-demo/dwr/engine.js'></script>  
    <script type='text/javascript' src='/dwr-demo/dwr/util.js'></script>  
    <script type='text/javascript' src='/dwr-demo/dwr/interface/DwrTest.js'></script>  
    <script type='text/javascript' src='static/js/jquery.min.js'></script>  
      
    <script type="text/javascript">  
    
        function sendMessage() {  
            //var message = document.getElementById("message").value;  
            var message = $("#message").val();  
            //直接用dwr.xml中暴露出来的类来调用
            DwrTest.send(message);  
        	$("#msg").html("消息已发送，内容是："+ message);
        }  
        
        $(document).keyup(function (e) {//捕获文档对象的按键弹起事件  
            if (e.keyCode == 13) {
            	sendMessage();
            }  
        });
        
        </script>  
</head>  
<body>  
	dwr发送<br />
    <input type="text" id="message" name="message" />  
    <input type="button" value="send message" onclick = "sendMessage()" />  
    <br />
    <p id="msg"></p>
</body>  
</html>