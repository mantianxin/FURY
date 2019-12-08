<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/10/1
  Time: 21:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>天猫导航栏</title>
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <style>
        body{
            font-size: 12px;
            font-family: Arial;
        }
        a{
            color:#999;
        }
        .redColor{
            color: #C40000 !important;
        }
        nav.top{
            background-color: #f2f2f2;
            padding-top: 5px;
            padding-bottom: 5px;
            border-bottom:1px solid  #e7e7e7;
        }
        nav.top span, nav.top a{
            color: #999;
            margin: 0px 10px 0px 10px;
        }
        nav.top a:hover{
            color: #C40000;
            text-decoration: none;
        }
    </style>
</head>
<body>
<nav class="top ">
    <a href="#nowhere">
        <span class="glyphicon glyphicon-home redColor"></span>
        天猫首页
    </a>

    <span>喵，欢迎来天猫</span>
    <a href="#nowhere">请登录</a>
    <a href="#nowhere">免费注册</a>

    <span class="pull-right">
            <a href="#nowhere">我的订单</a>
            <a href="#nowhere">
            <span class="glyphicon glyphicon-shopping-cart redColor" ></span>
            购物车<strong>0</strong>件</a>
        </span>

</nav>
</body>
</html>
