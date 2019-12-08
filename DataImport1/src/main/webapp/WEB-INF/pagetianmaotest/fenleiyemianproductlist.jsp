<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/11/14
  Time: 14:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>分类页面-产品列表</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="https://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="https://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
    <style>
        body{
            font-size: 12px;
            font-family: Arial;
        }
        div.categoryPageDiv{
            max-width: 1013px;
            margin: 10px auto;
        }
        div.categoryProducts{
            padding: 0px 20px 40px 20px;
        }
        div.productUnit{
            width: 225px;
            height: 338px;
            border: 3px solid #fff;
            background-color: white;
            margin: 12px 5px;
            float: left;
        }
        div.productUnit:hover{
            border:3px solid #C40000;
        }
        div.productUnitFrame{
            border:1px solid #eee;
            height:100%;
        }
        div.productUnitFrame:hover{
            border:1px solid #C40000;
        }
        div.productUnit img.productImage{
            width: 100%;
            height: 190px;
        }
        div.productUnit span.productPrice{
            font-size: 20px;
            color: #CC0000;
            display: block;
            padding-left: 4px;
        }
        div.productUnit a.productLink{
            margin: 10px 0px;
            color: #333333;
            display: block;
            height:34px;
        }
        div.productUnit a.productLink:hover{
            text-decoration: underline;
            color: #C40000;
        }
        div.productUnit a.tmallLink{
            margin: 10px 0px;
            color: #999999;
            display:block;
            text-decoration: underline;
        }
        div.productUnit a.tmallLink:hover{
            text-decoration: underline;
            color: #C40000;
        }
        div.productUnit div.productInfo{
            border-top-width: 1px;
            border-top-style: solid;
            border-top-color: #EEEEEE;
            color:#999999;
        }
        div.productUnit span.productDealNumber{
            font-weight: bold;
            color: #B57C5B;
        }
        div.productUnit span.productReview{
            border-left-width: 1px;
            border-left-style: solid;
            border-left-color: #EEEEEE;
            border-right-width: 1px;
            border-right-style: solid;
            border-right-color: #EEEEEE;
        }
        div.productUnit span.productReviewNumber{
            font-weight: bold;
            color: #3388BB;
        }
        div.productUnit span.monthDeal, div.productUnit span.productReview{
            display: inline-block;
            width: 90px;
            height:29px;
            padding-top: 5px;
            padding-left: 5px;
        }
        div.productUnit span.wangwang{
            padding-left: 3px;
        }
    </style>
</head>
<body>
<div class="categoryPageDiv">
    <div class="categoryProducts">
        <div price="799.2" class="productUnit">
            <div class="productUnitFrame">
                <a href="#nowhere">
                    <img width="100px" src="https://how2j.cn/tmall/img/productSingle_middle/7058.jpg" class="productImage">
                </a>
                <span class="productPrice">¥799.20</span>
                <a href="#nowhere" class="productLink">
                    MAXFEEL休闲男士手包真皮手拿包大容量信封包手抓包夹包软韩版潮
                </a>
                <a href="#nowhere" class="tmallLink">天猫专卖</a>
                <div class="show1 productInfo">
                    <span class="monthDeal ">月成交 <span class="productDealNumber">16笔</span></span>
                    <span class="productReview">评价<span class="productReviewNumber">14</span></span>
                    <span class="wangwang">
                    <a href="#nowhere" class="wangwanglink">
                        <img src="https://how2j.cn/tmall/img/site/wangwang.png">
                    </a>
                    </span>
                </div>
            </div>
        </div>
        <div price="511.2" class="productUnit">
            <div class="productUnitFrame">
                <a href="#nowhere">
                    <img width="100px" src="https://how2j.cn/tmall/img/productSingle_middle/7047.jpg" class="productImage">
                </a>
                <span class="productPrice">¥511.20</span>
                <a href="#nowhere" class="productLink">
                    宾度 男士手包真皮大容量手拿包牛皮个性潮男包手抓包软皮信封包
                </a>
                <a href="#nowhere" class="tmallLink">天猫专卖</a>
                <div class="show1 productInfo">
                    <span class="monthDeal ">月成交 <span class="productDealNumber">49笔</span></span>
                    <span class="productReview">评价<span class="productReviewNumber">18</span></span>
                    <span class="wangwang">
                    <a href="#nowhere" class="wangwanglink">
                        <img src="https://how2j.cn/tmall/img/site/wangwang.png">
                    </a>
                    </span>
                </div>
            </div>
        </div>
        <div price="448.2" class="productUnit">
            <div class="productUnitFrame">
                <a href="#nowhere">
                    <img width="100px" src="https://how2j.cn/tmall/img/productSingle_middle/7036.jpg" class="productImage">
                </a>
                <span class="productPrice">¥448.20</span>
                <a href="#nowhere" class="productLink">
                    唯美诺新款男士手包男包真皮大容量小羊皮手拿包信封包软皮夹包潮
                </a>
                <a href="#nowhere" class="tmallLink">天猫专卖</a>
                <div class="show1 productInfo">
                    <span class="monthDeal ">月成交 <span class="productDealNumber">34笔</span></span>
                    <span class="productReview">评价<span class="productReviewNumber">16</span></span>
                    <span class="wangwang">
                    <a href="#nowhere" class="wangwanglink">
                        <img src="https://how2j.cn/tmall/img/site/wangwang.png">
                    </a>
                    </span>
                </div>
            </div>
        </div>
        <div price="411.6" class="productUnit">
            <div class="productUnitFrame">
                <a href="#nowhere">
                    <img width="100px" src="https://how2j.cn/tmall/img/productSingle_middle/7025.jpg" class="productImage">
                </a>
                <span class="productPrice">¥411.60</span>
                <a href="#nowhere" class="productLink">
                    英伦邦纹男士手包牛皮大容量真皮手拿包手抓包双拉链商务正品软皮
                </a>
                <a href="#nowhere" class="tmallLink">天猫专卖</a>
                <div class="show1 productInfo">
                    <span class="monthDeal ">月成交 <span class="productDealNumber">25笔</span></span>
                    <span class="productReview">评价<span class="productReviewNumber">19</span></span>
                    <span class="wangwang">
                    <a href="#nowhere" class="wangwanglink">
                        <img src="https://how2j.cn/tmall/img/site/wangwang.png">
                    </a>
                    </span>
                </div>
            </div>
        </div>
        <div price="157.25" class="productUnit">
            <div class="productUnitFrame">
                <a href="#nowhere">
                    <img width="100px" src="https://how2j.cn/tmall/img/productSingle_middle/7014.jpg" class="productImage">
                </a>
                <span class="productPrice">¥157.25</span>
                <a href="#nowhere" class="productLink">
                    劳迪莱斯男士手包休闲手拿包牛皮大容量钱包男包软面小包包手抓包
                </a>
                <a href="#nowhere" class="tmallLink">天猫专卖</a>
                <div class="show1 productInfo">
                    <span class="monthDeal ">月成交 <span class="productDealNumber">17笔</span></span>
                    <span class="productReview">评价<span class="productReviewNumber">16</span></span>
                    <span class="wangwang">
                    <a href="#nowhere" class="wangwanglink">
                        <img src="https://how2j.cn/tmall/img/site/wangwang.png">
                    </a>
                    </span>
                </div>
            </div>
        </div>
        <div price="268.2" class="productUnit">
            <div class="productUnitFrame">
                <a href="#nowhere">
                    <img width="100px" src="https://how2j.cn/tmall/img/productSingle_middle/7003.jpg" class="productImage">
                </a>
                <span class="productPrice">¥268.20</span>
                <a href="#nowhere" class="productLink">
                    帕朗尼男士手拿包真皮手包商务休闲头层牛皮软牛皮大容量休闲钱包
                </a>
                <a href="#nowhere" class="tmallLink">天猫专卖</a>
                <div class="show1 productInfo">
                    <span class="monthDeal ">月成交 <span class="productDealNumber">5笔</span></span>
                    <span class="productReview">评价<span class="productReviewNumber">19</span></span>
                    <span class="wangwang">
                    <a href="#nowhere" class="wangwanglink">
                        <img src="https://how2j.cn/tmall/img/site/wangwang.png">
                    </a>
                    </span>
                </div>
            </div>
        </div>
        <div price="233.4" class="productUnit">
            <div class="productUnitFrame">
                <a href="#nowhere">
                    <img width="100px" src="https://how2j.cn/tmall/img/productSingle_middle/6992.jpg" class="productImage">
                </a>
                <span class="productPrice">¥233.40</span>
                <a href="#nowhere" class="productLink">
                    编织手包手拿包男信封大容量手抓包真皮韩版潮商务休闲牛皮男包
                </a>
                <a href="#nowhere" class="tmallLink">天猫专卖</a>
                <div class="show1 productInfo">
                    <span class="monthDeal ">月成交 <span class="productDealNumber">8笔</span></span>
                    <span class="productReview">评价<span class="productReviewNumber">19</span></span>
                    <span class="wangwang">
                    <a href="#nowhere" class="wangwanglink">
                        <img src="https://how2j.cn/tmall/img/site/wangwang.png">
                    </a>
                    </span>
                </div>
            </div>
        </div>
        <div price="952.0" class="productUnit">
            <div class="productUnitFrame">
                <a href="#nowhere">
                    <img width="100px" src="https://how2j.cn/tmall/img/productSingle_middle/6981.jpg" class="productImage">
                </a>
                <span class="productPrice">¥952.00</span>
                <a href="#nowhere" class="productLink">
                    犟牛男士手包真皮手拿包头层牛皮商务大容量手抓包软皮夹包信封包
                </a>
                <a href="#nowhere" class="tmallLink">天猫专卖</a>
                <div class="show1 productInfo">
                    <span class="monthDeal ">月成交 <span class="productDealNumber">20笔</span></span>
                    <span class="productReview">评价<span class="productReviewNumber">16</span></span>
                    <span class="wangwang">
                    <a href="#nowhere" class="wangwanglink">
                        <img src="https://how2j.cn/tmall/img/site/wangwang.png">
                    </a>
                    </span>
                </div>
            </div>
        </div>
        <div style="clear:both"></div>
    </div>
</div>
</body>
</html>
