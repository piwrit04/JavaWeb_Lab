<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>计算机图书</title>
</head>
<body>
<%
    Map<String, Integer> computerBooks = new HashMap<>();
    computerBooks.put("Java程序设计", 56);
    computerBooks.put("计算机网络", 13);
    computerBooks.put("Java高级编程", 44);
    computerBooks.put("数据库系统原理", 98);
    computerBooks.put("操作系统原理", 67);
%>
<h2>计算机图书列表</h2>
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
        Set<String> keySet = computerBooks.keySet();
        Iterator<String> it = keySet.iterator();
        String key;
        Integer value;
        while (it.hasNext()) {
            key = it.next();
            value = computerBooks.get(key);
    %>
    <tr>
        <td><%=key%></td>
        <td><%=value%></td>
        <td><a href="add_cart.jsp?name=<%=key%>&price=<%=value%>&type=computer">购买</a></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
<div><a href="show_cart.jsp">查看购物车</a></div>
<div><a href="history_book.jsp">历史图书列表</a></div>
</body>
</html>
