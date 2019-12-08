<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/10/16
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图片上传下载</title>
</head>
<body>
    <form action="${pageContext.request.contextPath}/Commoditylist/add/image" method="post" enctype="multipart/form-data">
           <input id = "id" type="text" name="id" /><br/>
           <input id="file" type="file" name="file" /><br/>
           <input type="submit" value="提交" />
    </form>
</body>
</html>
