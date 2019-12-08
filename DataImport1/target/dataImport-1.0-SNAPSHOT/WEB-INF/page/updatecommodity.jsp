<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/9/9
  Time: 22:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>修改订单信息</title>
    <script type="text/javascript">
        function addUser(){
            var form = document.forms[0];
            form.action = "<%=basePath%>Commoditylist/update";
            form.method="post";
            form.submit();
        }
    </script>
</head>
<body>
<form method="post">

    <table border="1">
        <tr>
            <td colspan="2">修改订单信息</td>
        </tr>
        <tr>
            <td>订单编号</td>
            <td>
                <input type="text" name="id" value="${commodity.id}" />
            </td>
        </tr>
        <tr>
            <td>商品名称</td>
            <td>
                <input type="text" name="name" value="${commodity.name}"/>
            </td>
        </tr>
        <tr>
            <td>价格</td>
            <td>
                <input type="text" name="price" vlaue="${commodity.price}" />
            </td>
        </tr>
        <tr>
            <td>收货地址</td>
            <td>
                <input type="text" name="address" value="${commodity.address}"/>
            </td>
        </tr>
        <tr>
            <td>状态</td>
            <td>
                <input type="text" name="station" value="${commodity.station}"/>
            </td>
        </tr>
        <tr>
            <td>用户姓名</td>
            <td>
                <input type="text" name="Cname" value="${commodity.Cname}"/>
            </td>
        </tr>
        <tr>
            <td>
                <a href="#">返回</a>
            </td>
            <td>
                <input type="btn" value="提交" onclick="addUser()" />
            </td>
        </tr>
    </table>

</form>
</body>
</html>
