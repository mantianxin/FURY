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
    <title>首页之导航与产品列表</title>
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
        a:hover{
            text-decoration:none;
            color: #C40000;
        }
        div.productItem  img:hover {
            opacity: 0.7;
            filter: alpha(opacity = 70);
        }
        div.categoryWithCarousel div.eachCategory {
            line-height: 30px;
            padding-left: 10px;
            font-size: 14px;
        }
        div.productItem {
            width: 189px;
            height: 285px;
            border: 1px solid white;
            background-color: white;
            margin: 8px 4px;
            float: left;
            cursor: pointer;
        }
        div.categoryWithCarousel div.carouselAboutProduct {
            width: 600px;
            display: inline-block;
        }
        div.carousel-of-product {
            max-width: 100%;
            height: 510px;
        }
        div.productItem span.productPrice {
            font-size: 16px;
            color: #FF003A;
            display: block;
            padding-left: 16px;
            margin-top: -10px;
        }
        img.carouselImage {
            height: 510px !important;
        }
        div.productsAsideCategorys div.row div.seperator {
            margin-top: 20px;
            border-bottom-style: dashed;
            border-bottom-width: 1px;
            border-bottom-color: #e7e7e7;
        }
        div.eachHomepageCategoryProducts {
            margin: 0px 0px 40px 0px;
        }
        div.productsAsideCategorys a:hover {
            color: #C40000;
            text-decoration: none;
        }
        div.left-mark {
            display: inline-block;
            height: 20px;
            vertical-align: top;
            width: 5px;
            background-color: #19C8A9;
        }
        span.categoryTitle {
            font-size: 16px;
            margin-left: 30px;
            color: #646464;
            font-weight: bold;
        }
        div.categoryWithCarousel {
            width: 100%;
        }
        div.categoryWithCarousel div.categoryMenu {
            width: 200px;
            background-color: #e2e2e3;
            margin-left: 20px;
            position: absolute;
            left: 0;
            top: 0;
            z-index: 1;
        }
        div.productUnit span.productPrice {
            font-size: 20px;
            color: #CC0000;
            display: block;
            padding-left: 4px;
        }
        div.categoryWithCarousel div.productsAsideCategorys {
            width: 800px;
            height: 510px;
            background-color: white;
            margin-left: 220px;
            display: none;
            position: absolute;
            left: 0;
            top: 0;
            z-index: 1;
        }
        div.categoryWithCarousel div.rightMenu img {
            height: 30px;
        }
        img.endpng {
            display: block;
            width: 82px;
            margin: 0 auto;
        }
        div.categoryWithCarousel div.eachCategory:hover {
            background-color: white;
        }
        div.categoryWithCarousel div.head {
            width: 200px;
            background-color: #C60A0A;
            height: 36px;
            line-height: 36px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            margin-left: 20px;
            display: inline-block;
        }
        div.categoryWithCarousel div.headbar {
            background-color: #DD2727;
        }
        img.catear {
            position: absolute;
            height: 15px;
            display: none;
        }
        div.categoryWithCarousel div.rightMenu {
            display: inline-block;
        }
        div.categoryWithCarousel div.rightMenu a {
            font-size: 16px;
            color: white;
        }
        div.categoryMenu a:hover {
            color: lightskyblue;
            text-decoration: none;
        }
        div.categoryWithCarousel div.rightMenu span {
            margin: 0px 20px 0px 20px;
        }
        div.categoryWithCarousel div.eachCategory span {
            margin-right: 10px;
        }
        div.productsAsideCategorys a {
            color: #999;
            font-size: 14px;
            margin: 8px;
        }
        div.homepageCategoryProducts {
            background-color: #F5F5F5;
            padding: 50px 10px 50px 10px;
            margin: 10px auto;
            max-width: 1013px;
        }
        div.productItem span.productItemDesc {
            font-size: 12px;
            color: #666666;
            display: block;
            padding: 16px;
        }
        div.categoryMenu a {
            color: #000;
        }
        div.productItem img {
            width: 187px;
            height: 190px;
        }
        nav.top div.row div {
            background-color: lightgray;
            border: 1px solid gray;
            text-align: center;
        }
        a.productItemDescLink {
            display: inline-block;
            height: 66px;
        }
        nav.top div.row div {
            margin: 5px 0px;
        }
        div.productsAsideCategorys div.row {
            margin: 20px 80px 0px 80px;
        }
    </style>
</head>
<body>
   <div class="homepageDiv">
       <script>
           $(function(){
               $("div.rightMenu span").mouseenter(function(){
                   var left = $(this).position().left;
                   var top = $(this).position().top;
                   var width = $(this).css("width");
                   var destLeft = parseInt(left) + parseInt(width)/2;
                   $("img#catear").css("left",destLeft);
                   $("img#catear").css("top",top-20);
                   $("img#catear").fadeIn(500);
               });
               $("div.rightMenu span").mouseleave(function(){
                   $("img#catear").hide();
               });
           });
       </script>
       <div style="height:50px"></div>
       <img class="catear" id="catear" src="https://how2j.cn/tmall/img/site/catear.png" style="left:260.5px;top:159.65px;display:none">
       <div class="categoryWithCarousel">
           <div class="headbar show1">
               <div class="head">
                   <span class="glyphicon glyphicon-th-list" style="margin-left:10px"></span>
                   <span style="margin-left:10px">商品分类</span>
               </div>
               <div class="rightMenu">
                   <span><a href="#nowhere"><img src="https://how2j.cn/tmall/img/site/chaoshi.png"></a></span>
                   <span><a href="#nowhere"><img src="https://how2j.cn/tmall/img/site/guoji.png"></a></span>
                   <span>
                       <a href="#nowhere">平板电脑</a>
                   </span>
                   <span>
                       <a href="#nowhere">马桶</a>
                   </span>
                   <span>
                       <a href="#nowhere">沙发</a>
                   </span>
                   <span>
                       <a href="#nowhere">电热水器</a>
                   </span>

               </div>
           </div>
       </div>
   </div>
</body>
</html>
