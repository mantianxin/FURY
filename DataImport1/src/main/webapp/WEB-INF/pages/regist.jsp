<%--
  Created by IntelliJ nameEA.
  User: lizwl
  Date: 2019/9/15
  Time: 15:15
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
    <title>注册界面</title>
</head>
<body>
<from  name="registform"  method="post" action="/Commoditylist/regist" >
    <table border="1">
        <tr>
            <td> <input id="Uname" type="text" name="Uname" placeholder="姓名"></td>
        </tr>
        <tr>
            <td><input id="Usex" type="text" name="Usex" placeholder="性别"></td>
        </tr>
        <tr>
            <td> <input id="Upassword" type="text" name="Upassword" placeholder="密码"></td>
        </tr>
        <tr>
            <td>  <input id="Uemail" type="text" name="Uemail" placeholder="邮箱"></td>
        </tr>
        <tr>
            <td><input id="Uphonenumber" type="text" name="Uphonenumber" placeholder="电话"></td>
        </tr>
        <tr>
            <td><input id="Uaddress"  type="text" name="Uaddress" placeholder="居住地址"></td>
        </tr>
        <tr>
            <td> <input id="Love" type="text" name="Love" placeholder="爱好"></td>
        </tr>
        <tr>
            <td><input id="Umajor" type="text" name="Umajor" placeholder="职业"></td>
        </tr>
        <%--<tr>--%>
            <%--<td><input id="Ustarttime" type="Date" name="Ustarttime" placeholder="开始注册时间"></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td> <input id="Uendtime" type="Date" name="Uendtime" placeholder="注销账户时间"></td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td>   <input id="Ubirthday"  type="Date" name="Ubirthday" placeholder="生日"></td>--%>
        <%--</tr>--%>
        <tr>
            <td> <button type="submit" class="button">提交</button></td>
        </tr>

    </table>

</from>
</body>
</html>
