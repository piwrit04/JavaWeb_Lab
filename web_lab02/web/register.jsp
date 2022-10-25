<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <script type="text/javascript">
        function check() {
            if(registerForm.username.value == "") {
                alert("用户名不能为空！");
                return false;
            }
            if(registerForm.password.value == "") {
                alert("密码不能为空！");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<h2>Register Page</h2>
    <form action="register_result.jsp" method="post" name="registerForm" onsubmit="return check()">
        <input type="text" name="username" placeholder="Enter the Username"> <br><br>
        <input type="password" name="password" placeholder="Enter the Password"> <br><br>
        <input type="submit" value="Register">
    </form>

    <form action="login.jsp">
        <input type="submit" value="Login">
    </form>
</body>
</html>
