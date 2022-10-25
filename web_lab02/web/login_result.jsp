<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login_Result</title>
</head>
<body>
<%
  request.setCharacterEncoding("UTF-8");
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  String query = "select * from user where username = '" + username + "'and password = '" + password + "'";    //在数据库中查询对应数据是否存在
  String driver = "com.mysql.cj.jdbc.Driver";
  String url = "jdbc:mysql://localhost:3306/javaweb_lab02?characterEncoding=UTF-8&serverTimezone=Asia/Shanghai";
  Class.forName(driver);
  Connection conn = DriverManager.getConnection(url, "root", "root");

  Statement stmt = conn.prepareStatement(query);
  ResultSet rs = stmt.executeQuery(query);

  if(rs.next()) {
    out.println("<script> alert('登录成功！')</script>");
    out.println("登录成功！");
  } else {
    out.println("<script> alert('账号或密码错误！')</script>");
  }
  conn.close();
%>
</body>
</html>
