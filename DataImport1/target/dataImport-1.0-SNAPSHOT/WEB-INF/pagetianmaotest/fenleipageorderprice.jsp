<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/11/13
  Time: 21:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分类页面-排序和价格</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="https://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="https://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <style>
        div.categoryPageDiv{
            max-width: 1013px;//最大宽度1013px，如果用户的分辨率比较大，那么就会使产品列表整体宽度最大1013，并且居中，这样看上去好一点，而不是铺满整个屏幕
            margin: 10px auto;//居中显示
        }
        div.categorySortBar{
            background-color: #FAF9F9;
            margin: 40px 20px 20px 20px;
            padding: 4px;
        }
        table.categorySortBarTable{
            border-collapse: collapse;//单元格之间没有空隙
            display:inline-block;//显示为内联，既可以设置大小，又能够不换行
        }
        table.categorySortBarTable span.glyphicon{
            font-size: 10px;
        }
        table.categorySortBarTable td{
            height:17px;
            font-size:12px;
            border:1px solid #CCCCCC;//边框
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
            border-width: 0px;//隐藏边框
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
    <img src="https://how2j.cn/tmall/img/category/72.jpg">
    <div class="categorySortBar">
        <table class="categorySortBarTable categorySortTable">
        <tbody>
        <tr>
            <td class="grayColumn"><a href="#nowhere">综合<span class="glyphicon glyphicon-arrow-down"></span></a></td>
            <td class="grayColumn"><a href="#nowhere">人气<span class="glyphicon glyphicon-arrow-down"></span></a></td>
            <td class="grayColumn"><a href="#nowhere">新品<span class="glyphicon glyphicon-arrow-down"></span></a></td>
            <td class="grayColumn"><a href="#nowhere">销量<span class="glyphicon glyphicon-arrow-down"></span></a></td>
            <td class="grayColumn"><a href="#nowhere">价格<span class="glyphicon glyphicon-arrow-down"></span></a></td>
        </tr>
        </tbody>
        </table>
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
