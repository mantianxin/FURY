<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/10/1
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>页脚1</title>
    <style>
        div.footer{
            margin: 0px 0px;
            border-top-style: solid;
            border-top-width: 1px;
            border-top-color: #e7e7e7;
        }
        div.footer_ensure{
            margin-top: 24px;
            margin-bottom: 24px;
            text-align: center;
        }
        div.footer_desc{
            border-top-style: solid;
            border-top-width: 1px;
            border-top-color: #e7e7e7;
            padding-top: 30px;
            margin: 0px 20px;
        }
        div.footer_desc div.descColumn{
            width: 20%;
            float: left;
            padding-left: 15px;
        }
        div.footer_desc div.descColumn span.descColumnTitle{
            color: #646464;
            font-weight: bold;
            font-size: 16px;
        }
        div.footer_desc a{
            display: block;
            padding-top: 3px;
        }
        body{
            font-size: 12px;
            font-family: Arial;
        }
        a{
            color:#999;
        }
        a:hover{
            text-decoration:none;
            color: #C40000;
        }
    </style>
</head>
<body>
<div style="display: block;" class="footer" id="footer">
    <div class="footer_ensure" id="footer_ensure">
        <a href="#nowhere">
            <img src="http://how2j.cn/tmall/img/site/ensure.png">
        </a>
    </div>
    <div class="footer_desc" id="footer_desc">
        <div class="descColumn">
            <span class="descColumnTitle">购物指南</span>
            <a href="#nowhere">免费注册</a>
            <a href="#nowhere">开通支付宝</a>
            <a href="#nowhere">支付宝充值</a>
        </div>
        <div class="descColumn">
            <span class="descColumnTitle">天猫保障</span>
            <a href="#nowhere">发票保障</a>
            <a href="#nowhere">售后规则</a>
            <a href="#nowhere">缺货赔付</a>
        </div>
        <div class="descColumn">
            <span class="descColumnTitle">支付方式</span>
            <a href="#nowhere">快捷支付</a>
            <a href="#nowhere">信用卡</a>
            <a href="#nowhere">蚂蚁花呗</a>
            <a href="#nowhere">货到付款</a>
        </div>
        <div class="descColumn">
            <span class="descColumnTitle">商家服务</span>
            <a href="#nowhere">商家入驻</a>
            <a href="#nowhere">商家中心</a>
            <a href="#nowhere">天猫智库</a>
            <a href="#nowhere">天猫规则</a>
            <a href="#nowhere">物流服务</a>
            <a href="#nowhere">喵言喵语</a>
            <a href="#nowhere">运营服务</a>
        </div>
        <div class="descColumn">
            <span class="descColumnTitle">手机天猫</span>
            <a href="#nowhere"><img src="http://how2j.cn/tmall/img/site/ma.png"></a>
        </div>
    </div>
    <div style="clear:both"></div>
</div>
</body>
</html>
