<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
    <title>Login</title>
    <script type="text/javascript">
        function check() {
            if (loginForm.username.value == "") {
                alert("用户名不能为空！");
                return false;
            }
            if (loginForm.password.value == "") {
                alert("密码不能为空！");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<h2>Login Page</h2>
<form action="login_result.jsp" method="post" name="loginForm" onsubmit="return check()">
    <input type="text" name="username" placeholder="Enter the Username"> <br><br>
    <input type="password" name="password" placeholder="Enter the Password"> <br><br>
    <input type="submit" value="Login">
</form>

<form action="register.jsp">
    <input type="submit" value="Register">
</form>
</body>
</html>
