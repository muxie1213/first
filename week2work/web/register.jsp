<%--
  Created by IntelliJ IDEA.
  User: LCH
  Date: 2024/3/14
  Time: 20:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户注册</title>
    <script>
        function validateForm() {
            let username = document.forms["registerForm"]["username"].value;
            let password = document.forms["registerForm"]["password"].value;
            let email = document.forms["registerForm"]["email"].value;
            let birthdate = document.forms["registerForm"]["birthdate"].value;

            if (username.trim() === "") {
                alert("用户名为必填项");
                return false;
            }

            if (password.length < 8 || !password.match(/[a-zA-Z]/)) {
                alert("密码必须至少为8个字符，包含至少一个字母");
                return false;
            }

            let emailPattern = /^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$/;
            if (email.trim() === "" || !email.match(emailPattern)) {
                alert("请输入有效的电子邮件地址");
                return false;
            }

            let datePattern = /^\d{4}-\d{2}-\d{2}$/;
            if (birthdate.trim() === "" || !birthdate.match(datePattern)) {
                alert("请输入有效的出生日期(yyyy-mm-dd)格式");
                return false;
            }
        }
    </script>
</head>
<body>
<h2>用户注册</h2>
<form name="registerForm" action="registerServlet" onsubmit="return validateForm()" method="post">
    <div>
        <label>用户名：</label>
        <input type="text" name="username">
    </div>
    <div>
        <label>密码：</label>
        <input type="password" name="password">
    </div>
    <div>
        <label>电子邮件：</label>
        <input type="text" name="email">
    </div>
    <div>
        <label>出生日期：</label>
        <input type="text" name="birthdate">
    </div>
    <div>
        <input type="submit" value="注册">
    </div>
</form>
</body>
</html>