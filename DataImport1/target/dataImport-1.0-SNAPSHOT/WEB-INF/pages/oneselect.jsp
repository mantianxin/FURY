<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/9/10
  Time: 20:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1">
    <tr>
        <td colspan="2">添加订单信息</td>
    </tr>
    <tr>
        <td>订单编号</td>
        <td>商品名称</td>
        <td>价格</td>
        <td>收货地址</td>
        <td>状态</td>
        <td>用户姓名</td>

    </tr>
<c:forEach items="${commodity}" var="s" varStatus="vs">
    <tr>
        <td>${s.id}</td>
        <td>${s.name}</td>
        <td>${s.price}</td>
        <td>${s.address}</td>
        <td>${s.station}</td>
        <td>${s.cname}</td>
    </tr>
</c:forEach>

</table>
</body>
</html>
