<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询数据</title>
</head>
<body>
<h2>显示所有用户信息</h2>

<table border="1">
    <tr>
        <td>用户名</td>
        <td>密码</td>
    </tr>

    <%
        String driver = "com.mysql.cj.jdbc.Driver";
        String url = "jdbc:mysql://localhost:3306/javaweb_lab02?characterEncoding=UTF-8&serverTimezone=Asia/Shanghai";
        Class.forName(driver);
        //数据库的账号密码
        Connection conn = DriverManager.getConnection(url, "root", "root");
        Statement stmt = conn.createStatement();
        String sql = "select * from user";
        ResultSet rs = stmt.executeQuery(sql);
        while (rs.next()) {
    %>
    <tr>
        <td><%=rs.getString("username")%>
        </td>
        <td><%=rs.getString("password")%>
        </td>
    </tr>
    <%
        }
        stmt.close();
        conn.close();
    %>
</table>

<br>
<p>
<a href="login.jsp">
    <button>Login</button>
</a>

<a href="register.jsp">
    <button>Register</button>
</a>
</p>
</body>
</html>
