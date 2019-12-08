<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/9/18
  Time: 9:44
  To change this template use File | Settings | File Templates.
--%>
<%--用户登录或注册表单校验初步完成--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<head>
    <title>登录天猫</title>
    <style>
        <%--注意访问背景图片的格式--%>
        body{
            /*border:3px solid red;*/
            background-image: url("${pageContext.request.contextPath}/image/loginBackground.png") ;
            background-size: 100%;
        }
        /*可以让元素靠的近一些*/
        *{
            margin:0px;
            padding: 0px;
            box-sizing: border-box;
        }
        .lo_main{
            height: 500px;
            width: 600px;
            border: 3px solid red;
            margin: auto;
            margin-top: 200px;
            background-color: white;
            margin-right: 200px;
            padding: 15px;
        }
        .lo_left{

            /*border: 3px solid red;*/
            float:left;
            margin: 0px;
        }
        .lo_left > p:first-child{
            color:#ffd026;
            font-size: 24px;
        }
        .lo_left > p:last-child{
            color:#A6A6A6;

        }
        .lo_right > p:first-child{
            color:;

        }
        .lo_center{
            width:370px;

            /*border: 3px solid red;*/
            float:left;
            margin-top: 50px;
            margin-left: 110px;
        }
        .lo_right{

            /*border: 3px solid red;*/
            float:right;
            margin-top: 15px;
        }
        .lo_right > p:first-child{
            color:#A6A6A6;
        }
        .lo_right p a {
            color:pink;
        }
        .td_left {
            width:50px;
            text-align: left;
            height: 60px;
            /*padding-left: 50px;*/
        }
        .td_right{
            padding-left: 5px;
        }
        #user,#password,#repassword{
            width: 170px;
            height:32px;
            border:1px solid #A6A6A6;
            /*设置边框*/
            border-radius: 6px;
            padding-left: 5px;
        }

    </style>
    <script>


        //        //校验用户名
        //        function checkUsername(){
        //            //1.获取用户值
        //            var username = document.getElementById("Uname").value;
        //            //2.定义正则表达式
        //            var reg_username = /^\w{6,12}$/;
        //            //3.判断值是否符合正则的规则
        //            var flags = reg_username.test(username);
        //            //4.提示信息
        //            var s_username = document.getElementById("s_name");
        //            if(flag){
        //                //提示文字
        //                s_username.innerHTML = "对";
        //            }else {
        //                //提示文字
        //                s_username.innerHTML = "错";
        //            }
        //            return flags;
        //        }
        //        $(function(){
        //            $('form').submit(function(){
        //                //如果没有返回值，或返回值为false,表单不提交。如果返回为true,则表单提交。
        //                return checkUsername();
        //            });
        //        });

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
<div class="lo_main">
    <div class="lo_left">
        <P>用户登录</P>
        <p>USER LOGIN</p>

    </div>
    <div class="lo_center">
        <form id="form" action="${pageContext.request.contextPath}/Commoditylist/select" method="post">
            <table>
                <tr>
                    <td class="td_left">姓名</td>
                    <td class="td_right">
                        <input type="text" name="user" size="34px" id="user" onfocus="showTips('user','用户名必填！')" onblur="check('user','用户名不能为空！')" /><span id="userspan"></span>
                    </td>
                </tr>
                <tr>
                    <td class="td_left">密码</td>
                    <td class="td_right">
                        <input type="password" name="password" size="34px" id="password" onfocus="showTips('password','密码必填')" onblur="check('password','密码不能为空!')" /><span id="passwordspan"></span>
                    </td>
                </tr>
                <tr>
                    <td class="td_left">确认密码</td>
                    <td class="td_right">
                        <input type="password" name="repassword" size="34px" id="repassword"></input>
                    </td>
                </tr>
                <%--<tr>--%>
                <%--<td class="td_left">验证码</td>--%>
                <%--<td class="td_right"><input type="text" id="Ucheck" name="Ucheck" placeholder="Ucheck">--%>
                <%--<img id="ckeck" src="skill4.png">--%>
                <%--</td>--%>
                <%--</tr>--%>
                <tr>
                    <td class="td_left"></td>
                    <td class="td_right"><input type="submit" id="bt_sub" value="注册">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <div class="lo_right">
        <P>已有帐号?<a href="#">立即登录</a></P>

    </div>


</div>
</body>
</html>
