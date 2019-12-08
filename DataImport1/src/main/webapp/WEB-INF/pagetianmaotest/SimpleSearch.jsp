<!DOCTYPE html>
<head>
    <title>公共页面之简单搜索栏</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <script src="https://how2j.cn/study/js/jquery/2.0.0/jquery.min.js"></script>
    <link href="https://how2j.cn/study/css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
    <script src="https://how2j.cn/study/js/bootstrap/3.3.6/bootstrap.min.js"></script>
</head>
<style>
    div.simpleSearchDiv{
        background-color: #c40000;
        width:300px;
        margin: 10px 20px 40px;//
        padding:1px;
        height:40px;
        display:block;//用块状显示，只有使用块状显示的时候，上下外边距才会生效
    }

    div.simpleSearchDiv input{
        width:225px;
        border: 1px solid  transparent;//边框透明
        height: 34px;
        margin: 2px;
        outline: none;//去掉输入框轮廓，否则获取焦点的时候会发生颜色变化
    }

    div.simpleSearchDiv button{
        width:60px;
        border: 1px solid transparent;
        background-color: #c40000;
        color:white;
        font-size: 14px;
    }

    div.searchBelow{
        margin-top: 3px;
        margin-left: -20px;
    }

    div.searchBelow{
        margin-top: 3px;
        margin-left: -20px;
    }

    div.searchBelow span{
        color:#999;
    }

    div.searchBelow a{
        padding: 0px 20px 0px 20px;
        font-size: 14px;
    }

    img.simpleLogo{
        position: absolute;//logo图片使用绝对定位
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
        text-decoration:none;//超链鼠标悬停的时候,没有下划线
        color: #c40000;//超链鼠标悬停的时候,使用天猫红显示
    }
</style>
<div>
    <a href="#nowhere">
        <img src="https://how2j.cn/tmall/img/site/simpleLogo.png" class="simpleLogo" id="simpleLogo">
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
                 <span>|</span>
            </span>

        </div>
    </div>
    <div style="clear:both"></div>
</div>

