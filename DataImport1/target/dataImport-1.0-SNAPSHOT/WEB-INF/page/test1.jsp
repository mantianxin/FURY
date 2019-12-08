<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/9/24
  Time: 22:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <script>
        function showTips(id, info) {
            document.getElementById(id + "span").innerHTML = "<font color='gray'>" + info + "</font>";
        }

        function check(id, info) {
            //1.获取用户输入的用户名数据
            var uValue = document.getElementById(id).value;
            //2.进行校验
            if(uValue == "") {
                document.getElementById(id + "span").innerHTML = "<font color='red'>" + info + "</font>";
            } else {
                document.getElementById(id + "span").innerHTML = "";
            }
        }
    </script>
</head>

<body>
<form action="#" method="get" name="regForm" onsubmit="return checkForm()">
    <table border="1px" width="750px" height="400px" align="center" cellpadding="0px" cellspacing="0px" bgcolor="white">
        <tr height="40px">
            <td colspan="2">
                <font size="4">会员注册</font> &nbsp;&nbsp;&nbsp;USER REGISTER
            </td>
        </tr>
        <tr>
            <td>
                用户名
            </td>
            <td>
                <input type="text" name="user" size="34px" id="user" onfocus="showTips('user','用户名必填！')" onblur="check('user','用户名不能为空！')" /><span id="userspan"></span>
            </td>
        </tr>
        <tr>
            <td>
                密码
            </td>
            <td>
                <input type="password" name="password" size="34px" id="password" onfocus="showTips('password','密码必填')" onblur="check('password','密码不能为空!')" /><span id="passwordspan"></span>
            </td>
        </tr>
        <tr>
            <td>
                确认密码
            </td>
            <td>
                <input type="password" name="repassword" size="34px" id="repassword"></input>
            </td>
        </tr>
        <tr>
            <td>
                Emaile
            </td>
            <td>
                <input type="text" name="email" size="34px" id="eamil" />
            </td>
        </tr>
        <tr>
            <td>
                姓名
            </td>
            <td>
                <input type="text" name="username" size="34px" />
            </td>
        </tr>
        <tr>
            <td>
                性别
            </td>
            <td>
                <input type="radio" name="sex" value="男" />男
                <input type="radio" name="sex" value="女" />女
            </td>
        </tr>
        <tr>
            <td>
                出生日期
            </td>
            <td>
                <input type="text" name="birthday" size="34px" />
            </td>
        </tr>
        <tr>
            <td>
                验证码
            </td>
            <td>
                <input type="text" name="yzm" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="注册" />
            </td>
        </tr>
    </table>
</form>
</body>

</html>
