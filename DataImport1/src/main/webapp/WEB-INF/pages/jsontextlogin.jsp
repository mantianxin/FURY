<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/9/14
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSON测试页面</title>
    <script src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>

    <script>
        //页面加载完成过后
        $(function(){
            //给username绑定blur事件
            $("#username").blur(function(){
                //获取username文本输入框的值
                var username = $(this).val();
                //发送ajax请求
                //期望服务器返回的数据的格式{“userExit”:true,"msg":"此用户名太守喜欢，请换一个"}
                //                     {“userExit”:true,"msg":"此用户名太守喜欢，请换一个"}
                $.post("${pageContext.request.contextPath}/Commoditylist/json",{username:username},function(data){
                    //判断userExit是否为true
                    var span = $("s_username");
                    if(data.userExsit){
                        //用户名存在
                        span.css("color","red");
                        span.html(data.msg);
                    }else {
                        //用户不存在
                        span.css("color","green");
                        span.html(data.msg);
                    }
                });
            });
        });
    </script>
</head>
<body>
<form>
   <input type="text" name="username" placeholder="输入用户名">
    <span id="s_username"></span>
    <br>
   <input type="text" name="password" placeholder="输入密码"><br>
   <input type="submit" value="注册">
</form>
</body>
</html>
