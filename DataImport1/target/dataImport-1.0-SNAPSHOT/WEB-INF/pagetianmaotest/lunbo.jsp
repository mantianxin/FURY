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
    <title>首页之导航与lunbo.jsp轮播</title>
    <script src="http://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="http://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="http://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <style>
        div.categoryWithCarousel{
            width: 100%;
            position: relative;//把这个div设计为相对定位，是因为在后面的carouselBackgroundDiv是居于这个div进行绝对定位的。
        }

        div.categoryWithCarousel div.headbar{
            background-color: #DD2727;
        }

        div.categoryWithCarousel div.head{
            width: 200px;
            background-color:#c60a0a;
            height: 36px;
            line-height: 36px;
            font-size: 16px;
            font-weight: bold;
            color: white;
            margin-left: 20px;
            display: inline-block;//设置为内联块，即可以做到不换行水平摆放，也可以设置大小
        }

        div.categoryWithCarousel div.rightMenu{
            display: inline-block;
        }

        div.categoryWithCarousel div.rightMenu a{
            font-size: 16px;
            color: white;
            text-decoration: none;
        }

        div.categoryWithCarousel div.rightMenu span{
            margin: 0px 20px 0px 20px;
        }

        div.categoryWithCarousel div.rightMenu img{
            height: 30px;
        }

        div.carousel-of-product{
            height: 510px;
            width: 1024px;
            margin: 0px auto;
        }

        img.carouselImage{
            height: 510px !important;
        }

        div.carouselBackgroundDiv{
            width: 100%;
            height:510px;
            background-color:#e8e8e8;
            position:absolute;
            top:36px;
            z-index:-1;//表示在轮播图片的下方
        }
    </style>
</head>
<body>
   <div class="categoryWithCarousel">
       <div class="head">
           <span class="glyphicon glyphicon-th-list" style="margin-left: 10px;"></span>
           <span style="margin-left:10px">商品分类</span>
       </div>
       <div class="rightMenu">
           <span><a href="#nowhere"><img src="https://how2j.cn/tmall/img/site/chaoshi.png"></a></span>
           <span><a href="#nowhere"><img src="https://how2j.cn/tmall/img/site/guoji.png"></a></span>
           <span>
               <a href="#nowhere">平板电视</a>
           </span>
           <span>
               <a href="#nowhere">
                   电热水器
               </a>
           </span>
       </div>
   </div>

  <div data-ride="carousel" class="carousel-of-product carousel slide" id="carousel-of-product">
      <ol class="carousel-indicators">
          <li class="active" data-slide-to="0" data-target="#carousel-of-product"></li>
          <li data-slide-to="1" data-target="#carousel-of-product" class=""></li>
          <li data-slide-to="2" data-target="#carousel-of-product" class=""></li>
          <li data-slide-to="3" data-target="#carousel-of-product" class=""></li>
      </ol>
      <div role="listbox" class="carousel-inner">
          <div class="item active">
              <img src="https://how2j.cn/tmall/img/lunbo/1.jpg" class="carousel carouselImage">
          </div>
          <div class="item">
              <img src="https://how2j.cn/tmall/img/lunbo/2.jpg" class="carousel carouselImage">
          </div>
          <div class="item">
              <img src="https://how2j.cn/tmall/img/lunbo/3.jpg" class="carousel carouselImage">
          </div>
          <div class="item">
              <img src="https://how2j.cn/tmall/img/lunbo/4.jpg" class="carousel carouselImage">
          </div>
      </div>
     <div class="carouselBackgroundDiv"></div>
  </div>
</body>
</html>
