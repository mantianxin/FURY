<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/10/1
  Time: 21:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>导航和轮播</title>
    <style>
        div.categoryWithCarousel{
            width: 100%;
            position:relative;
        }
        div.categoryWithCarousel div.headbar{
            background-color: #DD2727;
        }
        div.categoryWithCarousel div.head{
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
        div.categoryWithCarousel div.rightMenu{
            display: inline-block;
        }
        div.categoryWithCarousel div.rightMenu a{
            font-size: 16px;
            color: white;
            text-decoration:none;
        }
        div.categoryWithCarousel div.rightMenu span{
            margin: 0px 20px 0px 20px;
        }
        div.categoryWithCarousel div.rightMenu img{
            height: 30px;
        }
        div.carousel-of-product{
            height: 510px;
            width:1024px;
            margin:0px auto;
        }
        img.carouselImage{
            height: 510px !important;
        }
        div.carouselBackgroundDiv{
            width:100%;
            height:510px;
            background-color:#E8E8E8;
            position:absolute;
            top:36px;
            z-index:-1;
        }
    </style>
</head>
<body>
<div class="categoryWithCarousel">
    <div class="headbar">
        <div class="head ">
            <span class="glyphicon glyphicon-th-list" style="margin-left:10px"></span>
            <span style="margin-left:10px">商品分类</span>
        </div>
        <div class="rightMenu">
            <span><a href="#nowhere"><img src="http://how2j.cn/tmall/img/site/chaoshi.png"></a></span>
            <span><a href="#nowhere"><img src="http://how2j.cn/tmall/img/site/guoji.png"></a></span>
            <span>
                <a href="#nowhere">
                    平板电视
                </a></span>
            <span>
                <a href="#nowhere">
                    电热水器
                </a></span>
        </div>
    </div>
    <div data-ride="carousel" class="carousel-of-product carousel slide" id="carousel-of-product">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li class="active" data-slide-to="0" data-target="#carousel-of-product"></li>
            <li data-slide-to="1" data-target="#carousel-of-product" class=""></li>
            <li data-slide-to="2" data-target="#carousel-of-product" class=""></li>
            <li data-slide-to="3" data-target="#carousel-of-product" class=""></li>
        </ol>
        <!-- Wrapper for slides -->
        <div role="listbox" class="carousel-inner">
            <div class="item active">
                <img src="http://how2j.cn/tmall/img/lunbo/1.jpg" class="carousel carouselImage">
            </div>
            <div class="item">
                <img src="http://how2j.cn/tmall/img/lunbo/2.jpg" class="carouselImage">
            </div>
            <div class="item">
                <img src="http://how2j.cn/tmall/img/lunbo/3.jpg" class="carouselImage">
            </div>
            <div class="item">
                <img src="http://how2j.cn/tmall/img/lunbo/4.jpg" class="carouselImage">
            </div>
        </div>
    </div>
    <div class="carouselBackgroundDiv">
    </div>
</div>
</body>
</html>
