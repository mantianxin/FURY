<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/9/25
  Time: 10:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>天猫主页</title>
    <style>
        <%--margin: 0px; 可以让div居中--%>
        <%--整体div布局--%>
        .t_top{
            /*border: 1px solid red;*/
            background: #f2f2f2;
            font-size: 12px;
            height:35px;
            width: 100%;
            margin: 0px;
            float: left;
        }
        .t_midier{
            border: 1px solid red;
            height: 240px;
            width: 100%;
            margin: 0px;
        }
        .t_bottom{
            border: 1px solid red;
            height:400px;
            width: 100%;
            margin: 0px;
            background-image: url("${pageContext.request.contextPath}/image/loginBackground.png");
        }
        /*div样式修改-------上-----*/
        .t_welocme{
            color:#B6B6B6;
            margin-left: 300px;

        }
        .t_login{
            color:#B6B6B6;
            margin-left: 30px;
        }

        .t_regist{
            color:#B6B6B6;
            margin-left: 30px;
        }
        .t_top_left{
            color:#B6B6B6;
            /*border: 1px solid red;*/
            width:50%;
            float:left;
        }
        .t_top_right{
            color:#B6B6B6;
            /*border: 1px solid red;*/
            width:49.7%;
            float:right;
        }
        /*-------中-------*/

        .t_midier_img{
            height: 164px;
            width: 220px;
            margin-left: 300px;
            border: 1px solid red;
            float:left;
        }

        .t_midier_input,.t_midier_button{
            margin-top:65px;
            border: 5px sloid red;
            width: 400px;
            height: 40px;
            float:right;
        }
        .t_midier_button{
            margin-right:765px;
            border:3px solid red;
            width: 100px;
            background-color: red;
        }

        .t_midier_input{
            border: 1px solid red;
        }
        /*a标签移动问题：应该向右再移动一些距离  现在让搜索框向左移动一些距离*/
        .t_midier_a,.t_midier_a1,.t_midier_a2,.t_midier_a3,.t_midier_a4,.t_midier_a5,.t_midier_a6,.t_midier_a7,.t_midier_a8,.t_midier_a9{
            margin-top:10px;
            float:left;
            border: 5px sloid red;
            color:#B6B6B6;
        }

        .t_midier_a1{
            margin-left:25px;
            color:red;

        }
        .t_midier_a2{
            margin-left:27px;

        }
        .t_midier_a3{
            margin-left:29px;

        }
        .t_midier_a4{
            margin-left:31px;

        }
        .t_midier_a5{
            margin-left:33px;

        }
        .t_midier_a6{
            margin-left:35px;

        }
        .t_midier_a7{
            margin-left:37px;
            color:red;

        }
        .t_midier_a8{
            margin-left:39px;

        }
        .t_midier_a9{
            margin-left:41px;


        }
        /*商品分类*/
        .t_midier_recongize,.t_midier_recongize_font{
            width: 220px;
            height:41px;
            margin-right:1382px;
            margin-top: 0px;

            /*background-color:red;*/
            float:right;
        }
        .t_midier_recongize{
            background-color:red;
            border:1px solid red;
        }

        .t_midier_recongize_fontanother{
             /*border:5px solid red;*/
             height:30px;
             width: 400px;
             position:absolute;
             left:550px;
        }
        .t_midier_recongize_font,.t_midier_recongize_fontanother_font,.t_midier_recongize_fontanother_font1,.t_midier_recongize_fontanother_font2,.t_midier_recongize_fontanother_font3,.t_midier_recongize_fontanother_font4,.t_midier_recongize_fontanother_font5{
            color:black;
            float:left;
        }
        .t_midier_recongize_font{
            position: relative;
            font-size: 25px;
            left:59px;
            top:5px;
        }
        .t_midier_recongize_fontanother_font1{
            position: relative;
            left:5px;
        }
        .t_midier_recongize_fontanother_font2{
            position: relative;
            left:25px;
        }
        .t_midier_recongize_fontanother_font3{
            position: relative;
            left:45px;
        }
        .t_midier_recongize_fontanother_font4{
            position: relative;
            left:65px;
        }
        .t_midier_recongize_fontanother_font5{
            position: relative;
            left:85px;
        }

        .t_botoom_url{
            position:relative;
            margin-top:0px;
            top:0px;
            width: 182px;
            height:400px;
            background-color: #6F6F72;
            left:300px;
        }

        .t_bottom_customer{
            width: 420px;
            height: 50px;
            position:relative;
            left: 299px;
            top: 50px;
            border: 3px solid red;
            background-color: white;


        }

        .t_bottom_customer1{
            width: 420px;
            height: 50px;
            position:relative;
            left: 799px;
            top:-412px;
            border: 3px solid red;
            background-color: white;
        }
        .t_bottom_customer_font{
            color: black;
            padding-left: 20px;
            float:left;
        }
        .t_bottom_customer_font1{
            color: black;
            padding-left: 50px;
            float:left;
        }
        .t_bootom_s{
            background-color: #F5F5F5;
        }
        .t_bottom_customerinfo{
            width: 419px;
            height: 400px;
            position:relative;
            top: 48px;
            left: 300px;
            border: 3px solid red;
            background-image: url("${pageContext.request.contextPath}/image/bgss4.png");
        }
        .t_bottom_customerinfo1{
            width: 419px;
            height: 400px;
            position: relative;
            left: 800px;
            top:-414px;
            border: 3px solid red;
            background-image: url("${pageContext.request.contextPath}/image/bgss4.png");
        }
    </style>

</head>
<body>
<div class="t_top">
       <div class="t_top_left">
        <p class="t_welocme">喵，欢迎来到天猫<a class="t_login" href="#">请登录</a> <a class="t_regist" href="#">请注册</a></p>
       </div>

    <div class="t_top_right">
        <P>我的淘宝 <a href="#" class="t_login">购物车</a><a href="#" class="t_login">收藏夹</a><a href="#" class="t_login">手机版</a><a href="#" class="t_login">淘宝网</a><a href="#" class="t_login">商家支持</a><a href="#" class="t_login">网站导航</a></P>
    </div>

</div>


<div class="t_midier">

    <div id="t_midier_img">
        <img class="t_midier_img" src="${pageContext.request.contextPath}/image/logo.png">
    </div>


    <div id="t_midier_s">
        <button class="t_midier_button" type="submit">搜索</button> <input class="t_midier_input" type="text" placeholder="搜索 天猫 商品/店铺/品牌">
        <p class="t_midier_a">
            <a class="t_midier_a1" href="#">客厅灯 |</a><a class="t_midier_a2" href="#">洗发水 |</a><a class="t_midier_a3" href="#">摄像头 |</a><a class="t_midier_a4" href="#">口红 |</a><a class="t_midier_a5" href="#">仿真花 |</a><a class="t_midier_a6" href="#">运动鞋 |</a><a class="t_midier_a7" href="#">连衣裙 |</a><a class="t_midier_a8" href="#">四件套 |</a><a class="t_midier_a9" href="#">书</a>
        </p>
    </div>




    <div class="t_midier_recongize">
        <p class="t_midier_recongize_font">商品分类</p>
        <div class="t_midier_recongize_fontanother">
             <p class="t_midier_recongize_fontanother_font">
                 <a href="#" class="t_midier_recongize_fontanother_font1">天猫超市</a><a href="#" class="t_midier_recongize_fontanother_font2" >天猫国际</a><a href="#" class="t_midier_recongize_fontanother_font3">天猫会员</a><a href="#" class="t_midier_recongize_fontanother_font4">电器</a><a href="#" class="t_midier_recongize_fontanother_font5">生活用品</a></p>
        </div>
    </div>


</div>


<div class="t_bottom">
         <ul class="t_botoom_url">
             <li>
                 <i>连衣裙/牛仔裤/工装裤</i>
             </li>
         </ul>
</div>
<%--#F5F5F5--%>
<div class="t_bootom_s">
    <%--1--%>
      <div class="t_bottom_customer">
            <p class="t_bottom_customer_font">品牌闪购</p>
      </div>
      <div class="t_bottom_customerinfo">

      </div>
    <%--2--%>
    <div class="t_bottom_customer1">
        <p class="t_bottom_customer_font1">品牌闪购</p>
    </div>
       <div class="t_bottom_customerinfo1">

       </div>
</div>
</body>
</html>
