<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/10/1
  Time: 21:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>排序和价格页面</title>
    <style>
        div.categoryPageDiv{
            max-width: 1013px;
            margin: 10px auto;
        }
        div.categorySortBar{
            background-color: #FAF9F9;
            margin: 40px 20px 20px 20px;
            padding: 4px;
        }
        table.categorySortBarTable{
            border-collapse: collapse;
            display:inline-block;
        }
        table.categorySortBarTable span.glyphicon{
            font-size: 10px;
        }
        table.categorySortBarTable td{
            height:17px;
            font-size:12px;
            border:1px solid #CCCCCC;
            padding:3px;
        }
        table.categorySortBarTable td.grayColumn{
            background-color: #F1EDEC;
        }
        table.categorySortBarTable td a{
            color: #806F66;
        }
        table.categorySortBarTable td a:hover{
            color: #C40000;
        }
        table.categorySortBarTable input{
            border-width: 0px;
            height: 15px;
            width: 50px;
        }
        table.categorySortBarTable td.priceMiddleColumn{
            width: 5px;
            vertical-align: middle;
            color: #CCCCCC;
        }
        table.categorySortTable td:hover{
            background-color: #F1EDEC;
        }
        body{
            font-size: 12px ;
            font-family: Arial;
        }
    </style>
</head>
<body>
<div class="categoryPageDiv">
    <img src="http://how2j.cn/tmall/img/category/72.jpg">
    <div class="categorySortBar">
        <table class="categorySortBarTable categorySortTable">
            <tbody><tr>
                <td class="grayColumn"><a href="#nowhere">综合<span class="glyphicon glyphicon-arrow-down"></span></a></td>
                <td><a href="#nowhere">人气<span class="glyphicon glyphicon-arrow-down"></span></a></td>
                <td><a href="#nowhere">新品<span class="glyphicon glyphicon-arrow-down"></span></a></td>
                <td><a href="#nowhere">销量<span class="glyphicon glyphicon-arrow-down"></span></a></td>
                <td><a href="#nowhere">价格<span class="glyphicon glyphicon-resize-vertical"></span></a></td>
            </tr>
            </tbody></table>
        <table class="categorySortBarTable">
            <tbody><tr>
                <td><input type="text" placeholder="请输入" class="sortBarPrice beginPrice"></td>
                <td class="grayColumn priceMiddleColumn">-</td>
                <td><input type="text" placeholder="请输入" class="sortBarPrice endPrice"></td>
            </tr>
            </tbody></table>
    </div>
</div>
</body>
</html>
