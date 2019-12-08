
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/7/30 0030
  Time: 上午 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>
<head>
    <title>导出excel文件</title>
</head>
<body>
<table>
    <tr>
        <td>文件名</td>
        <td>文件路径</td>
    </tr>
<c:forEach items="${FileList}" var="s" varStatus="vs">
   <tr>
       <td>${s.filename}</td>
       <td><a href="/dfs?filename=${s.filename}">下载(无用下载)</a></td>
   </tr>
</c:forEach>
</table>
</body>
</html>
