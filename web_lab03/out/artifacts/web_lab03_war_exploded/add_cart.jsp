<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加购物车</title>
</head>
<body>
    <%
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        String type = request.getParameter("type");
        if(name != null && price != null) {
            Map<String,Integer> cart = (Map<String,Integer>)session.getAttribute("cart");
            if(cart == null) {
                cart = new HashMap<>();
                session.setAttribute("cart",cart);
            } else {
                cart.put(name,Integer.parseInt(price));
            }
        }
        if("history".equals(type)) {
            response.sendRedirect("history_book.jsp");
        } else {
            response.sendRedirect("computer_book.jsp");
        }
    %>
</body>
</html>
