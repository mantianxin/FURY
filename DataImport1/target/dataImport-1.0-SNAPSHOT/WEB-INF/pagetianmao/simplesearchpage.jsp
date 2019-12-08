<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/10/1
  Time: 21:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>简单搜索页面</title>
    <style>
        div.simpleSearchDiv{
            background-color: #C40000;
            width: 300px;
            margin: 10px 20px 40px;
            padding: 1px;
            height: 40px;
            display: block;
        }
        div.simpleSearchDiv input{
            width: 225px;
            border: 1px solid transparent;
            height: 34px;
            margin: 2px;
            outline:none;
        }
        div.simpleSearchDiv button{
            width: 60px;
            border: 1px solid transparent;
            background-color: #C40000;
            color: white;
            font-size: 14px;
            /*  font-weight:bold */;
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
        img.simpleLogo{
            position: absolute;
            left: 10px;
            top: 50px;
            width: 140px;
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
<div>
    <a href="#nowhere">
        <img src="http://how2j.cn/tmall/img/site/simpleLogo.png" class="simpleLogo" id="simpleLogo">
    </a>
    <div class="simpleSearchDiv pull-right">
        <input type="text" name="keyword" placeholder="平衡车 原汁机">
        <button type="button" class="searchButton">搜天猫</button>
        <div class="searchBelow">
                    <span>
                        <a href="#nowhere">
                            冰箱
                        </a>
                            <span>|</span>
                    </span>
            <span>
                        <a href="#nowhere">
                            空调
                        </a>
                            <span>|</span>
                    </span>
            <span>
                        <a href="#nowhere">
                            女表
                        </a>
                            <span>|</span>
                    </span>
            <span>
                        <a href="#nowhere">
                            男表
                        </a>
                    </span>
        </div>
    </div>
    <div style="clear:both"></div>
</div>
</body>
</html>
