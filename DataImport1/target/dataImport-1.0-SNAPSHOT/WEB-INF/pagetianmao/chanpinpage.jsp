<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/10/1
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>产品列表</title>
    <style>
        div.homepageCategoryProducts{
            background-color: #F5F5F5;
            padding: 50px 10px 50px 10px;
            margin: 10px auto;
            max-width: 1013px;
        }
        div.productItem{
            width: 189px;
            height: 285px;
            border: 1px solid white;
            background-color: white;
            margin: 8px 4px;
            float: left;
            cursor: pointer;
        }
        div.productItem span.productItemDesc{
            font-size: 12px;
            color: #666666;
            display: block;
            padding: 16px;
        }
        div.productItem span.productPrice{
            font-size: 16px;
            color: #FF003A;
            display: block;
            padding-left: 16px;
            margin-top: -10px;
        }
        div.productItem img{
            width: 187px;
            height: 190px;
        }
        div.productItem  img:hover{
            /*特效：使得鼠标移动到图片上之后图片变亮*/
            opacity: 0.7;
            filter: alpha(opacity = 70);
        }
        div.eachHomepageCategoryProducts{
            margin: 0px 0px 40px 0px;
        }
        a.productItemDescLink{
            display: inline-block;
            height: 66px;
            text-decoration:none;
        }
        span.categoryTitle{
            font-size: 16px;
            margin-left: 30px;
            color: #646464;
            font-weight: bold;
        }
        div.left-mark{
            display: inline-block;
            height: 20px;
            vertical-align: top;
            width: 5px;
            background-color: #19C8A9;
        }
        img.endpng{
            display: block;
            width: 82px;
            margin: 0 auto;
        }
    </style>
</head>
<body>
<div class="homepageCategoryProducts">
    <div class="eachHomepageCategoryProducts">
        <div class="left-mark"></div>
        <span class="categoryTitle">太阳镜</span>
        <br>
        <div class="productItem">
            <a href="#nowhere"><img width="100px" src="http://how2j.cn/tmall/img/productSingle_middle/9543.jpg"></a>
            <a href="#nowhere" class="productItemDescLink">
                            <span class="productItemDesc">[热销]
                            好先生同款墨镜孙红雷偏光男士太阳镜韩明星
                            </span>
            </a>
            <span class="productPrice">
                            97.50
                        </span>
        </div>
        <div class="productItem">
            <a href="#nowhere"><img width="100px" src="http://how2j.cn/tmall/img/productSingle_middle/9532.jpg"></a>
            <a href="#nowhere" class="productItemDescLink">
                            <span class="productItemDesc">[热销]
                            陌森太阳眼镜男女2016偏光定制驾驶近视
                            </span>
            </a>
            <span class="productPrice">
                            518.70
                        </span>
        </div>
        <div class="productItem">
            <a href="#nowhere"><img width="100px" src="http://how2j.cn/tmall/img/productSingle_middle/9521.jpg"></a>
            <a href="#nowhere" class="productItemDescLink">
                            <span class="productItemDesc">[热销]
                            帕莎Prsr太阳镜女偏光镜潮范冰冰同款女
                            </span>
            </a>
            <span class="productPrice">
                            624.00
                        </span>
        </div>
        <div class="productItem">
            <a href="#nowhere"><img width="100px" src="http://how2j.cn/tmall/img/productSingle_middle/9510.jpg"></a>
            <a href="#nowhere" class="productItemDescLink">
                            <span class="productItemDesc">[热销]
                            变色眼镜男女款半框太阳镜大框潮流防辐射防
                            </span>
            </a>
            <span class="productPrice">
                            170.00
                        </span>
        </div>
        <div class="productItem">
            <a href="#nowhere"><img width="100px" src="http://how2j.cn/tmall/img/productSingle_middle/9499.jpg"></a>
            <a href="#nowhere" class="productItemDescLink">
                            <span class="productItemDesc">[热销]
                            新款男士偏光太阳镜日夜两用墨镜潮运动开车
                            </span>
            </a>
            <span class="productPrice">
                            551.00
                        </span>
        </div>
        <div style="clear:both"></div>
    </div>
    <div class="eachHomepageCategoryProducts">
        <div class="left-mark"></div>
        <span class="categoryTitle">安全座椅</span>
        <br>
        <div class="productItem">
            <a href="#nowhere"><img width="100px" src="http://how2j.cn/tmall/img/productSingle_middle/10192.jpg"></a>
            <a href="#nowhere" class="productItemDescLink">
                            <span class="productItemDesc">[热销]
                            新生儿婴儿提篮式安全座椅汽车用车载儿童安
                            </span>
            </a>
            <span class="productPrice">
                            882.00
                        </span>
        </div>
        <div class="productItem">
            <a href="#nowhere"><img width="100px" src="http://how2j.cn/tmall/img/productSingle_middle/10181.jpg"></a>
            <a href="#nowhere" class="productItemDescLink">
                            <span class="productItemDesc">[热销]
                            REEBABY汽车儿童安全座椅ISOFI
                            </span>
            </a>
            <span class="productPrice">
                            1,344.00
                        </span>
        </div>
        <div class="productItem">
            <a href="#nowhere"><img width="100px" src="http://how2j.cn/tmall/img/productSingle_middle/10170.jpg"></a>
            <a href="#nowhere" class="productItemDescLink">
                            <span class="productItemDesc">[热销]
                            REEBABY儿童安全座椅9个月-12岁
                            </span>
            </a>
            <span class="productPrice">
                            1,216.00
                        </span>
        </div>
        <div class="productItem">
            <a href="#nowhere"><img width="100px" src="http://how2j.cn/tmall/img/productSingle_middle/10159.jpg"></a>
            <a href="#nowhere" class="productItemDescLink">
                            <span class="productItemDesc">[热销]
                            好孩子汽车儿童安全座椅goodbaby9
                            </span>
            </a>
            <span class="productPrice">
                            1,199.40
                        </span>
        </div>
        <div class="productItem">
            <a href="#nowhere"><img width="100px" src="http://how2j.cn/tmall/img/productSingle_middle/10148.jpg"></a>
            <a href="#nowhere" class="productItemDescLink">
                            <span class="productItemDesc">[热销]
                            惠尔顿儿童安全座椅isofix硬接口汽车
                            </span>
            </a>
            <span class="productPrice">
                            1,993.60
                        </span>
        </div>
        <div style="clear:both"></div>
    </div>
    <img src="http://how2j.cn/tmall/img/site/end.png" class="endpng" id="endpng">
</div>
</body>
</html>
