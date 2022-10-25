<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register_Result</title>
</head>
<body>
<%--
    JSP内置对象：
    out:负责输出
    request:负责客户端发送的请求
    response:负责设置响应信息
--%>
<%
    request.setCharacterEncoding("UTF-8");
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String query = "select * from user where username = '" + username + "'";    //在数据库中查询对应数据是否存在
    String driver = "com.mysql.cj.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/javaweb_lab02?characterEncoding=UTF-8&serverTimezone=Asia/Shanghai";
    Class.forName(driver);
    Connection conn = DriverManager.getConnection(url, "root", "root");

    String sqlStr = "insert into user values (?,?)";
    PreparedStatement psmt = conn.prepareStatement(query);
    ResultSet rs = psmt.executeQuery(query);

    //如果存在就弹窗报错
    if(rs.next()) {
        out.println("<script> alert('用户名已存在！')</script>");
    } else {
        psmt = conn.prepareStatement(sqlStr);
        psmt.setString(1,username);
        psmt.setString(2,password);
        int n = psmt.executeUpdate(); //增删改调用executeUpdate()
        out.println("注册成功！添加了" + n + "行数据至数据库。");
    }
    psmt.close();
    conn.close();
%>
</body>
</html>
