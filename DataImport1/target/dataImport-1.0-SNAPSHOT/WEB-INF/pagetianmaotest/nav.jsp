<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/10/8
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>公共页面之导航栏</title>
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <style>
        body{
            font-size:12px;
            font-family: Arial;
        }
        a{
            color:#999;
        }
        .redColor{
            color: #C40000 !important;
        }
        nav.top {
            background-color: #f2f2f2;
            padding-top:5px;
            padding-bottom:5px;
            border-bottom:1px solid #e7e7e7;
        }
        nav.top span ,nav.top a{
            color:#999;
            margin:0px 10px 0px 10px;
        }
        nav.top a:hover{
            color:#c40000;
            text-decoration: none;
        }
        /* text-decoration: none; 去除超链接下划线*/
    </style>
</head>
<body>
    <nav class="top">
        <%--glyphicon glyphicon-home 天猫小房子特效--%>
        <span class="glyphicon glyphicon-home redColor">天猫首页</span>
        <span>喵，欢迎来到天猫</span>
        <a>请登录</a>
        <a>免费注册</a>
        <%--pull-right 属性可以让元素右移--%>
        <span class="pull-right">
            <a>我的订单</a>
            <a>
                <%--glyphicon glyphicon-shopping-cart 购物车图标特效--%>
                <span class=" glyphicon glyphicon-shopping-cart redColor"></span>
                购物车<strong>0</strong>件
            </a>
        </span>

    </nav>
</body>
</html>
