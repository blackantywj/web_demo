ﻄ1�7<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<script language='JavaScript'>
	alert('注册失败，用户已存在！（第一次注册可忽略);
	</script>
<head>
	<link rel="stylesheet" type="text/css" href="css/login.css">
    <meta http-equiv="Content-Type";charset="UTF-8">
    <title>注册</title>
</head>
<body id="i88" background="1.jpg" style="margin-left:650px;margin:auto;width:550px;;background-repeat:no-repeat;background-size:1100px 1100px;background-position:center top;background-attachment: fixed;" >
    <div class = "pg_header">
        <a class="pg_dl" id="i77">注册</a>
    </div>
    <form name="tijiao" method="post" onsubmit="return check()" action="regissqlServlet">
        <div class="left"></div>
        <div class="pg_body">
                <div class="menu">用户ID:</div>
                    <div class="kong">
                        <input id="text1" type="text" name="user_id" placeholder="请输入用户名，长度为4-16位字笄1�7">
                        <span id="div1" class="tian" style="margin-top: 4px">*必填<span>
                    </div>
                <div class="menu">真实姓名:</div>
                    <div class="kong">
                        <input id="i2" type="text" name="real_name">
                    </div>
								<div class="menu">学号:</div>
                    <div class="kong">
                        <input id="text4" type="text" name="number">
                        <span id="div5" class="tian" style="margin-top: 4px">*必填<span>
                    </div>
                <div class="menu">性别:</div>
                    <div class="kong" style="width:200px;">
                         男<input type="radio" name="gender" value="男">
                         女 <input type="radio" name="gender" value="女">
                    </div>
                <div class="menu">密码:</div>
                    <div class="kong">
                        <input id="text2" type="password" name="passwd" placeholder="密码长度为4-16位" >
                        <span id="div2" class="tian" style="margin-top: -25px">*必填<span>
                    </div>
                <div class="menu">确认密码:</div>
                    <div class="kong">
                        <input id="text3" type="password" name="passwd">
     					<span id="div3" class="tian">*必填<span>
                    </div>
                 <div class="menu">邮箱地址:</div>
                    <div class="kong">
                        <input id="text5" type="text" name="email">
                        <span id="div4" class="tian">*必填<span>
                    </div>
                <div class="menu">电话号码:</div>
                    <div class="kong">
                        <input id="i5" type="text" name="phone">
                    </div>
                <div class="menu">头像上传:    </div>
                    <div class="kong">
                        <input type="file" name="image" value="选择头像" accept="image/*">
                </div>
                <div class="menu">爱好:</div>
                    <div class="kong" style="width: 300px;">
                        	<input type="checkbox" name="favor" value = "蔡徐坤">蔡徐坤
                        	<input type="checkbox" name="favor" value = "写代码">写代码
                        	<input type="checkbox" name="favor" value = "吃饭">吃饭
                    </div>
        </div>
        <br><br>
        <div class="can" style="margin-left:auto;margin-right:auto;width:550px;">
            <input id="i111" type="submit" name="002" value="注册">
            <p style="width: 200px;display: inline-block;"></p>
            <input id="i222" type="button" name="004" value="取  消">
        </div>
    </form>
    <script type="text/javascript">
            //刷新or取消
            document.getElementById('i77').onclick = function(){
                location.reload();
            }
            document.getElementById('i222').onclick = function(){
                location.reload();
            }

            //用户名验证
            function checkname(){
                var div = document.getElementById("div1");
                div.innerHTML = "";
                var name1 = document.tijiao.text1.value;
                if (name1 == "") {
                div.innerHTML = "用户名不能为空！";
                alert("用户名不能为空");
                return false;
            }
                if (name1.length < 4 || name1.length > 16) {
                div.innerHTML = "长度须为4-16个字符！";
				alert("用户名长度须为4-16个字符");
                return false;
            }
                var charname1 = name1.toLowerCase();
                for (var i = 0; i < name1.length; i++) {
                var charname = charname1.charAt(i);
                if (!(charname >= 0 && charname <= 9) && (!(charname >= 'a' && charname <= 'z')) && (charname != '_')) {
                    div.innerHTML = "用户名包含非法字符";
                    alert("用户名包含非法字符(只能包含数字、字母和下划线)");
                    return false;
                }
            }
                return true;
        }

            //密码验证
            function checkpassword(){
                var div = document.getElementById("div2");
                div.innerHTML = "";
                var password = document.tijiao.text2.value;
                if (password == "") {
                div.innerHTML = "密码不能为空";
                alert("密码不能为空");
                return false;
            }
                if (password.length < 4 || password.length > 16) {
                div.innerHTML = "密码长度须为4-16位";
               	alert("密码长度须为4-16位");
                document.tijiao.text2.select();
                return false;
                }
                return true;
        }

            function checkrepassword(){
                var div = document.getElementById("div3");
                div.innerHTML = "";
                var password = document.tijiao.text2.value;
                var repass = document.tijiao.text3.value;
                if (repass == "") {
                div.innerHTML = "密码不能为空";
                alert("密码不能为空");
                return false;
            }
                if (password != repass) {
                div.innerHTML = "密码不一致";
                alert("密码不一致");
                document.tijiao.text3.select();
                return false;
            }
                return true;
        }
        //邮箱验证
        function checkEmail(){
            var div = document.getElementById("div4");
            div.innerHTML = "";
            var email = document.tijiao.text5.value;
            var sw = email.indexOf("@", 0);
            var sw1 = email.indexOf(".", 0);
            var tt = sw1 - sw;
            if (email.length == 0) {
            div.innerHTML = "邮箱不能为空";
            alert("邮箱不能为空");
            return false;
        	}

            if (email.indexOf("@", 0) == -1) {
            div.innerHTML = "必须包含@符号";
            alert("必须包含@符号");
            return false;
        	}

            if (email.indexOf(".", 0) == -1) {
            div.innerHTML = "必须包含.符号";
            alert("必须包含.符号");
            return false;
        	}

            if (tt == 1) {
            div.innerHTML = "@和.不能一起";
            alert("@和.不能一起");
            return false;
        	}

            if (sw > sw1) {
            div.innerHTML  = "@符号必须在.之前";
            alert("@符号必须在.之前");
            return false;
        	}
            return true;
        }
        //学号验证
        function checknumber(){
            var div = document.getElementById("div5");
            div.innerHTML = "";
            var number = document.tijiao.text4.value;
            if (number == "") {
            	div.innerHTML = "学号不能为空";
            	alert("学号不能为空");
            	return false;
             }
             return true;
        }
        function check(){
            if (!checkname()){
            	return false;
            }
            if(!checkpassword()){
            	return false;
        	}
            if(!checkrepassword()){
            	return false;

            }
            if(!checkEmail()){
            	return false;
            }
            if(!checknumber()){
            	return false;
            }
            return true;
         }
    </script>
</body>
</html>
