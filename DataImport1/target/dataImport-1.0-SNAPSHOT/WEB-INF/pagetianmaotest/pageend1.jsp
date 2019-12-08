<!DOCTYPE html>
<head>
    <title>公共页面之页脚一</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="https://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="https://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<style>
    div.footer{
        margin:0px 0px;//无外边距
        border-top-style:solid;//上边框实线
        border-top-width: 1px;
        border-top-color: #e7e7e7;//上边框颜色
    }

    div.footer_ensure{
        margin-top: 24px;
        margin-bottom: 24px;
        text-align: center;//图片居中
    }

    div.footer_desc{
        border-top-style: solid;
        border-top-width: 1px;
        border-top-color: #e7e7e7;
        padding-top: 30px;
        margin: 0px 20px;
    }

    div.footer_desc div.descColumn{
        width: 20%;//刚好有5列，所以每列占用20%
        float: left;//漂浮起来，使得这些列水平摆放
        padding-left: 15px;//左内边距15px
    }

    div.footer_desc div.descColumn span.descColumnTitle{
        color:#646464;
        font-weight:bold;
        font-size: 16px;
    }

    div.footer_desc a{
        display: block;//超链默认是inline 会水平摆放，改成block出现换行效果
        padding-top: 3px;
    }

    body{
        font-size: 12px;//把所有文字的大小调成12px,这是天猫默认的文字大小
        font_family: Arial;
    }

    a{
        color:#999;
    }

    a:hover{
        text-decoration: none;//超链鼠标悬停的时候,没有下划线
        color:#c40000;//超链鼠标悬停的时候,使用天猫红显示
    }
</style>
<div style="display: block;" class="footer" id="footer">
    <div class="footer_ensure" id="footer_ensure">
        <a href="#nowhere">
            <img src="https://how2j.cn/tmall/img/site/ensure.png">
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
            <span class="descColumnTitle">购物指南</span>
            <a href="#nowhere">免费注册</a>
            <a href="#nowhere">开通支付宝</a>
            <a href="#nowhere">支付宝充值</a>
        </div>
        <div class="descColumn">
            <span class="descColumnTitle">购物指南</span>
            <a href="#nowhere">免费注册</a>
            <a href="#nowhere">开通支付宝</a>
            <a href="#nowhere">支付宝充值</a>
        </div>
        <div class="descColumn">
            <span class="descColumnTitle">购物指南</span>
            <a href="#nowhere">免费注册</a>
            <a href="#nowhere">开通支付宝</a>
            <a href="#nowhere">支付宝充值</a>
            <a href="#nowhere">免费注册</a>
            <a href="#nowhere">开通支付宝</a>
            <a href="#nowhere">支付宝充值</a>
        </div>

        <div class="descColumn">
            <sapn class="descColumnTitle">手机天猫</sapn>
            <a href="#nowhere">
                <img src="https://how2j.cn/tmall/img/site/ma.png">
            </a>
        </div>

    </div>
    <div style="clear:both"></div>
</div>