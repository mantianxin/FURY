<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/10/8
  Time: 21:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>公共页面之搜索栏</title>
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <style>
        div.searchDiv{
            background-color: #C40000;
            width: 400px;
            margin: 50px auto;
            padding: 1px;
            height: 40px;
            /*以块状元素显示 水平居中才有效果*/
            display: block;
        }
        div.searchDiv input{
            width: 275px;
            border: 1px solid transparent;
            height: 36px;
            margin: 1px;
            /*outline:none; 去掉输入框轮廓 否则鼠标选中时会出现颜色变化*/
            outline:none;
        }
        div.searchDiv button{
            width: 110px;
            border: 1px solid transparent;
            background-color: #C40000;
            color: white;
            font-size: 20px;
            font-weight: bold;
        }
        div.searchBelow{
            margin-top: 3px;
            margin-left: -20px;
        }
        div.searchBelow span{
            color: #999;
        }
        div.searchBelow a{
            padding: 0px 20px 0px 20px;
            font-size: 14px;
        }
        img.logo{
            position: absolute;
            left: 0px;
            top: 30px;
            /*代表图层 表示图片放在输入框图层下面 这样不会挡住输入框*/
            z-index:-1;
        }
        body{
            font-size:12px;
            font-family:Arial;
        }
        a{
            color:#999;
        }
        a:hover{
            /*超链接没有下划线*/
            text-decoration:none;
            color:#C40000;
        }
    </style>
</head>
<body>
    <div>
        <a href="#">
            <img id="logo" class="logo" src="http://how2j.cn/tmall/img/site/logo.gif" >
        </a>
        <div class="searchDiv pull-right">
            <input type="text" placeholder="满天星 zhzch" name="keyword">
            <button class="searchbutton" type="submit">搜索</button>
            <div class="searchBelow">
                   <span> <a href="#">平衡车</a><span>|</span></span>
                   <span> <a href="#">扫地机器人</a><span>|</span></span>
                   <span> <a href="#">榨汁机</a><sapn>|</sapn></span>

            </div>
        </div>
    </div>

  <div style="height: 50px"></div>
</body>
</html>
