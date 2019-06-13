<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/login.css">
    <meta http-equiv="Content-Type";charset="UTF-8">
<title>登录</title>
</head>
<body>
<body id="i88" background="1.jpg" style="margin-left:650px;margin:auto;width:550px;;background-repeat:no-repeat;background-size:1100px 1100px;background-position:center top;background-attachment: fixed;" >
    <div class = "pg_header">
        <a class="pg_dl" id="i77">登录</a>
    </div>
    <form name="tijiao" method="post" onsubmit="return check()" action="loginsqlServlet">
        <div class="left"></div>
        <div class="pg_body1">
                <div class="menu1">用户名:</div>
                    <div class="kong">
                        <input id="text1" type="text" name="user_id" placeholder="用户名" onblur="check()">
                    </div>
                <div class="menu1">密码:</div>
                    <div class="kong">
                        <input id="text2" type="password" name="passwd" placeholder="密码" onblur="check()">
                    </div>
        </div>
        <br><br>
        <div class="can" style="margin-left:auto;margin-right:auto;width:550px;">
            <input id="i111" type="submit" name="002" value="登陆">
            <p style="width: 200px;display: inline-block;"></p>
            <input id="i222" type="button" name="002" value="注册">
        </div>
   </form>
   <script type="text/javascript">
            //跳转注册或刷新
            document.getElementById('i222').onclick = function(){
                window.location.href='register.html';
            }
            document.getElementById('i77').onclick = function(){
                location.reload();
            }
            function check(){
                	return true;
        	}
	</script>
</body>
</html>
