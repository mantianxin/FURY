<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/11/25
  Time: 10:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>前端页面发送json数据到后端  后端接受数据并返回前端 登录界面</title>
</head>
<body>

<%--<form id="form">--%>
    <%--<table>--%>
        <%--<tr>--%>
            <%--<td class="td_left">姓名</td>--%>
            <%--<td class="td_right">--%>
                <%--<input type="text" name="user" size="34px" id="user" onfocus="showTips('user','用户名必填！')" onblur="check('user','用户名不能为空！')" /><span id="userspan"></span>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td class="td_left">密码</td>--%>
            <%--<td class="td_right">--%>
                <%--<input type="password" name="password" size="34px" id="password" onfocus="showTips('password','密码必填')" onblur="check('password','密码不能为空!')" /><span id="passwordspan"></span>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--<tr>--%>
            <%--<td class="td_left">确认密码</td>--%>
            <%--<td class="td_right">--%>
                <%--<input type="password" name="repassword" size="34px" id="repassword"></input>--%>
            <%--</td>--%>
        <%--</tr>--%>
        <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td class="td_left">验证码</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td class="td_right"><input type="text" id="Ucheck" name="Ucheck" placeholder="Ucheck">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<img id="ckeck" src="skill4.png">&ndash;%&gt;--%>
        <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
        <%--<tr>--%>
            <%--<td class="td_left"></td>--%>
            <%--<td class="td_right"><input type="submit" id="bt_sub" value="注册">--%>
            <%--</td>--%>
        <%--</tr>--%>
    <%--</table>--%>
<%--</form>--%>
<script>

    //前端页面发送json数据到后端  后端接受数据并返回前端
    <%--function getFormInfo(){--%>
        <%--var params=$('#form').serialize(); //把id为login的form表单里的参数自动封装为参数传递--%>
        <%--console.log(params);--%>
    <%--$.ajax({--%>
        <%--url: "${pageContext.request.contextPath}/forehome",--%>
        <%--type: "POST",--%>
        <%--data: params,//data是数据源 是页面中的参数--%>
        <%--dataType:"json",--%>
        <%--async: false,--%>
        <%--success: function(result){--%>
            <%--var newData = JSON.stringify(result);    //将json对象转换为字符串--%>
            <%--newData = eval("("+newData+")");   //解析json--%>
            <%--alert(newData);--%>
            <%--// var annualDays = newData.annualDays;--%>
            <%--// var entryDate = newData.entryDate;--%>

            <%--// $("input[name='extendDataFormInfo.value(fd_shengyu_nianjia)']").val(annualDays);--%>
            <%--// $("input[name='extendDataFormInfo.value(fd_ruzhi_date)']").val(entryDate);--%>

        <%--}});--%>
    <%--};--%>
</script>
</body>
</html>
