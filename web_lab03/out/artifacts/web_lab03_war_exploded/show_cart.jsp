<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查看购物车</title>
</head>
<body>
<%
    Map<String, Integer> cart = (Map<String, Integer>) session.getAttribute("cart");
    if (cart != null && cart.size() > 0) {
%>
<h2>查看购物车</h2>
<table border="1">
    <thead>
    <tr>
        <td>名称</td>
        <td>价格</td>
        <td>功能</td>
    </tr>
    </thead>

    <tbody>
    <%
        Set<String> keySet = cart.keySet();
        Iterator<String> it = keySet.iterator();
        String name;
        Integer price;
        while (it.hasNext()) {
            name = it.next();
            price = cart.get(name);
    %>
    <tr>
        <td><%=name%>
        </td>
        <td><%=price%>
        </td>
        <td><a href="delete_cart.jsp?name=<%=name%>">删除</a></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
<%
    } else {
        out.print("购物车空空如也");
    }
%>
<div><a href="history_book.jsp">历史图书列表</a></div>
<div><a href="computer_book.jsp">计算机图书列表</a></div>
</body>
</html>
