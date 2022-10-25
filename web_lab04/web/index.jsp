<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
    <style>
        .title {
            text-align: center;
        }

        .error {
            text-align: center;
            color: red;
            font-weight: bold;
        }

        #loginForm {
            width: 300px;
            border: 1px solid #666;
            margin: 50px auto;
            padding: 50px;
        }

        .button {
            text-align: center;
            margin-top: 10px;
        }

        .input {
            text-align: center;
            padding: 10px;
        }
    </style>
</head>
<body>
<h2 class="title">Login Page</h2>
<%--EL表达式可以从request,session,application对象中自动寻找对应的属性值--%>
<div class="error">${msg}</div>
<form action="LoginServlet" method="post" id="loginForm">
    <div class="input">
        <span>学号：</span>
        <input name="stuno" type="text" placeholder="请输入学号">
    </div>
    <div class="input">
        <span>密码：</span>
        <input name="password" type="password" placeholder="请输入密码">
    </div>
    <div class="button">
        <input type="submit" value="Login">
    </div>
</form>
</body>
</html>
