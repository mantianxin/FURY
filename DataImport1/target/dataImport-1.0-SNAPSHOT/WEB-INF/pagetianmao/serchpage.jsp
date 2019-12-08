<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/10/1
  Time: 21:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>搜索框</title>
    <style>
        div.searchDiv{
            background-color: #C40000;
            width: 400px;
            margin: 50px auto;
            padding: 1px;
            height: 40px;
            display: block;
        }
        div.searchDiv input{
            width: 275px;
            border: 1px solid transparent;
            height: 36px;
            margin: 1px;
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
            text-decoration:none;
            color:#C40000;
        }
    </style>

</head>
<body>

<div>
    <a href="#nowhere"> <img class="logo" src="http://how2j.cn/tmall/img/site/logo.gif"
                             id="logo">
    </a>

    <div class="searchDiv">
        <input type="text" placeholder="时尚男鞋  太阳镜 " name="keyword">
        <button class="searchButton" type="submit">搜索</button>
        <div class="searchBelow">
                <span> <a href="#nowhere"> 平衡车 </a> <span>|</span>
                </span> <span> <a href="#nowhere"> 扫地机器人 </a> <span>|</span>
                </span> <span> <a href="#nowhere"> 原汁机 </a> <span>|</span>
                </span> <span> <a href="#nowhere"> 冰箱 </a></span>
        </div>
    </div>
</div>

<div style="height:50px"></div>
</body>
</html>
