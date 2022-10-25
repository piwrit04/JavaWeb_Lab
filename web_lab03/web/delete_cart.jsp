<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除购物车</title>
</head>
<body>
<%
    Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
    String name = request.getParameter("name");
    if (name != null) {
        cart.remove(name);
    }
    response.sendRedirect("show_cart.jsp");
%>
</body>
</html>
