<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>历史图书</title>
</head>
<body>
<%
    Map<String, Integer> historyBooks = new HashMap<>();
    historyBooks.put("活着", 56);
    historyBooks.put("钢铁是怎样炼成的", 13);
    historyBooks.put("红楼梦", 44);
    historyBooks.put("三体", 98);
    historyBooks.put("水浒传", 67);
%>
<h2>历史图书列表</h2>
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
        Set<String> keySet = historyBooks.keySet();
        Iterator<String> it = keySet.iterator();
        String key;
        Integer value;
        while (it.hasNext()) {
            key = it.next();
            value = historyBooks.get(key);
    %>
    <tr>
        <td><%=key%></td>
        <td><%=value%></td>
        <td><a href="add_cart.jsp?name=<%=key%>&price=<%=value%>&type=history">购买</a></td>
    </tr>
    <%
        }
    %>
    </tbody>
</table>
<div><a href="show_cart.jsp">查看购物车</a></div>
<div><a href="computer_book.jsp">计算机图书列表</a></div>
</body>
</html>
