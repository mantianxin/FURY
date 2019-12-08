<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/11/12
  Time: 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link media="all" type="text/css" rel="stylesheet" href="/public/app.css?v=20190311">
    <title>在线文字识别转换 - 在线工具 - Powered by Yelky</title>
    <link rel="shortcut icon" href="/favico.ico" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="/public/uploader.css?v=20171024">
    <link rel="stylesheet" type="text/css" href="/public/webuploader.css?v=20171024">
    <meta name="description" content="免费的文字在线识别工具 - 可保留原始格式，提供图像文字识别，提取图片文字，pdf文字识别，扫描文件识别服务、pdf转Word文档服务等。我们的Ocr服务支持中文、繁体中文、日语、韩语、英语、法语、俄语、德语等多种语言，输出结果支持PDF、Word和Txt格式。">
    <meta name="keywords" content="文字识别,排版识别,图像识别,在线ocr,pdf识别">
    <meta name="author" content="Yelky">

</head>
<body id="home">
<!-- nav -->
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <!-- Collapsed Hamburger -->
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse"><span class="sr-only">Toggle Navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>

            <!-- Branding Image -->
            <a class="navbar-brand" style="padding: 8px 15px; width: 200px;" title="回到主页" href="https://www.wdku.net">
                <img width="160" src="https://www.wdku.net/logo.png">
            </a>
        </div>
        <div class="collapse navbar-collapse" id="app-navbar-collapse">
            <!-- Left Side Of Navbar -->
            <ul class="nav navbar-nav">
                <li><a title="首页" href="https://www.wdku.net" style="font-weight: bold">首页</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                        工具大全 <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li><a href="https://ocr.wdku.net"><span class="glyphicon" aria-hidden="true"><img class="img-circle" style="width: 32px; margin-right: 8px;" src="https://www.wdku.net/public/ico/ocr/ico.png"></span>在线文字识别转换</a></li><li><a href="https://img2pdf.wdku.net"><span class="glyphicon" aria-hidden="true"><img class="img-circle" style="width: 32px; margin-right: 8px;" src="https://www.wdku.net/public/ico/img2pdf/ico.png"></span>在线图片转换PDF</a></li><li><a href="https://pdf.wdku.net"><span class="glyphicon" aria-hidden="true"><img class="img-circle" style="width: 32px; margin-right: 8px;" src="https://www.wdku.net/public/ico/pdf/ico.png"></span>在线PDF转换器</a></li><li><a href="https://pdf2word.wdku.net"><span class="glyphicon" aria-hidden="true"><img class="img-circle" style="width: 32px; margin-right: 8px;" src="https://www.wdku.net/public/ico/pdf2word/ico.png"></span>在线PDF转Word</a></li><li><a href="https://viewer.wdku.net"><span class="glyphicon" aria-hidden="true"><img class="img-circle" style="width: 32px; margin-right: 8px;" src="https://www.wdku.net/public/ico/officeviewonline/ico.png"></span>在线OFFICE文档浏览</a></li><li><a href="https://www.wdku.net/heic"><span class="glyphicon" aria-hidden="true"><img class="img-circle" style="width: 32px; margin-right: 8px;" src="https://www.wdku.net/public/ico/heic/ico.png"></span>在线苹果heic转换jpg</a></li><li><a href="https://www.wdku.net/OfficeConvert"><span class="glyphicon" aria-hidden="true"><img class="img-circle" style="width: 32px; margin-right: 8px;" src="https://www.wdku.net/public/ico/officeconvert/ico.png"></span>在线一键Office转换工具</a></li><li><a href="https://www.wdku.net/SmallTools/"><span class="glyphicon" aria-hidden="true"><img class="img-circle" style="width: 32px; margin-right: 8px;" src="https://www.wdku.net/public/ico/smalltools/ico.png"></span>在线文本小工具</a></li><li><a href="https://www.wdku.net/Image"><span class="glyphicon" aria-hidden="true"><img class="img-circle" style="width: 32px; margin-right: 8px;" src="https://www.wdku.net/public/ico/image/ico.png"></span>在线图片处理工具<sup class="text-danger">new</sup></a></li>                        </ul>
                </li>            </ul>

            <!-- Right Side Of Navbar -->
            <ul class="nav navbar-nav navbar-right">
                <!-- Authentication Links -->
                <li><a href="https://www.wdku.net/user/login">登录</a></li>
                <li><a href="https://www.wdku.net/user/reg">注册</a></li>
            </ul>
        </div>
    </div>
</nav>

<!-- content -->
<div id="bot">
    <div class="container">
        <div class="row">
            <!-- sitebar -->
            <div id="sidebar" class="col-md-2">
                <img class="fill avatar hidden-xs hidden-sm" src="https://www.wdku.net/public/ico/ocr/logo.png">
                <div class="categories hidden-xs hidden-sm">
                    <h3>系统运行情况</h3>
                    <ul class="list-unstyled">
                        <li>系统状态：<span class="text-success">正常</span></li>
                        <li>系统压力：<span class="text-success">无压力</span></li>
                    </ul>
                </div>
                <div class="categories">
                    <h3>我的记录</h3>
                    <ul class="list-unstyled">
                        <li><a href="https://ocr.wdku.net/convList">转换记录</a></li>
                        <li><a href="https://ocr.wdku.net/payList">付费记录</a></li>
                    </ul>
                </div>
                <div class="categories">
                    <h3>相关转换</h3>
                    <ul class="list-unstyled">
                        <li><a href="https://www.wdku.net/image/imagesplit.html">长图片分割<sup class="text-danger">hot</sup></a></li><li><a href="https://pdf2word.wdku.net">PDF转Word</a></li><li><a href="https://img2pdf.wdku.net">图片合成PDF</a></li><li><a href="https://pdf.wdku.net">在线PDF处理工具</a></li>            </ul>
                </div>
                <div class="categories">
                    <h3>定制转换<sup class="text-danger" style="text-transform:lowercase">hot</sup></h3>
                    <ul class="list-unstyled">
                        <li><a href="/customStart" target="_blank" title="定制转换">去定制</a></li>
                        <!--<li><a href="/customList">定制记录</a></li>-->
                    </ul>
                </div>
            </div>
            <!-- end sitebar -->

            <!-- mainbar -->
            <div id="main" class="col-md-8">
                <div id="about" class="block">
                    <h2>在线文字识别转换<a style="float: right; font-size: 16px; line-height: 18px; text-decoration: none;" href="https://www.wdku.net">&gt;&gt;返回主页</a></h2>
                    <hr>
                    <div class="cms-content">
                        免费的文字在线识别工具 - 可保留原始格式，提供图像文字识别，提取图片文字，pdf文字识别，扫描文件识别服务、pdf转Word文档服务等。我们的Ocr服务支持中文、繁体中文、日语、韩语、英语、法语、俄语、德语等多种语言，输出结果支持PDF、Word和Txt格式。            </div>
                </div>

                <div id="media" class="block">
                    <header>
                        <h2><span data-toggle="collapse" data-target="#uploader">第一步：上传文件<span class="caret"></span></span><a style="float: right;" class="text-warning" href="#" data-toggle="modal" data-target="#feedback">点我反馈问题？</a></h2>
                    </header>
                    <div id="uploader" class="wu-example collapse in">
                        <div class="queueList">
                            <div id="dndArea" class="placeholder" style="padding-top: 20px;min-height: 120px;">
                                <div id="filePicker" class="webuploader-container"><div class="webuploader-pick">选择文件</div><div id="rt_rt_1dpek7c5olvbk521aila851q4r1" style="position: absolute; top: 0px; left: 286px; width: 132px; height: 44px; overflow: hidden; bottom: auto; right: auto;"><input type="file" name="file" class="webuploader-element-invisible" multiple="multiple" accept=""><label style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label></div></div>
                                <p>或者将转换文件拖到这里</p>
                                <p>允许上传格式: png/jpg/pdf/tiff/bmp/gif/heic/heif</p>
                                <p>如果没有“按钮”请刷新</p>
                            </div>
                            <ul class="filelist"></ul></div>
                        <div class="statusBar" style="display:none;">
                            <div class="progress" style="display: none;">
                                <span class="text">0%</span>
                                <span class="percentage" style="width: 0%;"></span>
                            </div><div class="info">共0张（0B），已传0张</div>
                            <div class="btns">
                                <div id="filePicker2" class="webuploader-container"><div class="webuploader-pick">继续添加</div><div id="rt_rt_1dpek7c5s15bo1joc13q81jbc1ntq6" style="position: absolute; top: 0px; left: 0px; width: 1px; height: 1px; overflow: hidden;"><input type="file" name="file" class="webuploader-element-invisible" multiple="multiple" accept=""><label style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label></div></div><div class="uploadBtn state-pedding">开始上传</div>
                            </div>
                        </div>
                    </div>
                </div>

                            </div>
                        </div>
                        <div id="confirmForm" class="col-md-6">
                            <header>
                                <h2>第三步：提交转换</h2>
                            </header>
                            <div class="row">
                                <div class="col-md-4" style="margin-bottom:40px;">
                                    <form id="submitFreeForm" action="/submitOcr?type=1" method="POST" class="form-inline" role="form">
                                        <button id="free_button" type="submit" class="btn btn-primary col-xs-12">免费转换</button>
                                        <input id="free_obj_type" name="obj_type" type="hidden" value="pdf">
                                        <input id="free_ids" name="ids" type="hidden" value="">
                                        <input id="free_ts" name="ts" type="hidden" value="">
                                        <input id="free_pass" name="pass" type="hidden" value="">
                                        <input id="free_lang" name="lang" type="hidden" value="1,2">
                                        <input id="free_autorotation" name="autorotation" type="hidden" value="true">
                                        <input id="free_combine" name="combine" type="hidden" value="true">
                                        <input id="free_a4" name="a4" type="hidden" value="true">
                                        <input id="free_color" name="color" type="hidden" value="false">
                                    </form>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

                <div id="resultFrame" class="block hidden">
                    <div class="row">
                        <div class="col-md-8 col-sm-12 col-xs-12" style="margin-bottom: 10px;">
                            <header>
                                <h2 class="text-danger">最后：等待结果</h2>
                            </header>
                            <div id="result" class="col-md-12 text-center text-danger">

                            </div>
                            <div id="download" class="hidden">
                                <form id="download_form" method="POST" action="/downResult" target="_blank">
                                    <input type="hidden" name="id" id="download_id" value="">
                                    <input type="hidden" name="t" id="download_t" value="">
                                    <input type="hidden" name="type" value="title">
                                    <button class="btn btn-primary col-xs-3" type="submit" style="margin-right: 10px;" title="原始标题下载">下载(1)</button>
                                </form>
                                <a id="download_link" class="btn btn-primary col-xs-3" href="#" target="_blank" style="margin-right: 10px;" title="原始标题下载">下载(2)</a>
                                <a id="download_link_via_id" class="btn btn-primary col-xs-3" href="#" target="_blank" title="若标题发生标题乱码，用ID作为标题下载">下载(3)</a>
                            </div>
                        </div>

                        <div class="col-md-4 col-sm-12 col-xs-12" style="margin-bottom: 10px;">
                            <header>
                                <h2>重新上传？</h2>
                            </header>
                            <div id="next">
                                <a class="btn btn-success col-xs-12" href="javascript:location.reload();">刷新页面(F5)</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- end mainbar -->
        </div>
    </div>
</div>
<!-- end container -->
<!-- Modal -->
<script src="https://hm.baidu.com/hm.js?c28bc0ecf7d4c8b69eafd431fdf653e0"></script><script type="text/javascript">
    var service = '在线文字识别转换';
    function feedback(){
        //json数据组成
        $.ajax({
            url: '/feedback',
            type: 'POST',
            dataType: 'json',
            data:
                {
                    'service': $('#service').html(),
                    'content': $('#content').val(),
                    'contact': $('#contact').val(),
                    'sid'    : newid,
                    'time'   : newtime,
                },
        })
             // ajax完成之后运行
            .done(function(data) {
                //console.log("success");
                $('#feedback').modal('hide');
                $('#content').val('');
                $('#contact').val('');
                if(data && data.errno == 0){
                    alert('感谢你的反馈，我们会努力做到最好~');
                }else{
                    alert(data.desc);
                }
            })
            .fail(function() {
                //console.log("error");
                alert('对不起，提交失败了~');
            })
            .always(function() {
                //console.log("complete");
            });
    }
</script>
<!-- footer-->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-sm-9 col-xs-10">
                <p style="margin: 6px;">© Yelky 2013-2019, Network Technology</p>
                <p style="margin: 6px;">
                    备案号：粤ICP备14002632号-2 客服邮箱：
                    ocr@wdku.net              <a href="https://www.wdku.net/help/index.html" target="_blank">帮助中心</a>
                    <a href="https://www.wdku.net/help/privacy.html" target="_blank">隐私政策</a>
                </p>
            </div>

        </div>
    </div>
</footer>
<!-- end footer -->

<!-- JavaScripts -->
<script src="/public/js/jquery.min.js"></script>
<script src="/public/js/bootstrap.min.js"></script>
<script src="/public/js/ekko-lightbox.min.js"></script>
<script src="/Public/js/webuploader.js?v=20171110"></script>
<script src="/Public/js/jquery.form.js?v=20171109"></script>
<script type="text/javascript">
    //系统必要参数
    islogin = 0;//是否登录
    ismobile= 0;//
    if(islogin){
        par_upload_size = 500 * 1024 * 1024;
        par_file_num_limit = 500;
    }else{
        if(ismobile){
            par_upload_size = 500 * 1024 * 1024;
            par_file_num_limit = 1;
        }
        else{
            par_upload_size = 1024 * 1024;
            par_file_num_limit = 1;
        }
    }
    intv = 0;
    count = 0;
    isRequest = 0;
    newid = '';
    newtime = '';


    //FreeSubmit
    $('#submitFreeForm').ajaxForm({
        beforeSerialize: modifyData,  //edit var
        beforeSubmit: beforeSubmit,
        success:  complete,  // post-submit callback
        dataType: 'json',
    });

    //Function
    function modifyData(){
        str = '';
        str = $('input:radio[name="optionsRadios"]:checked').val();
        $('#free_obj_type').val(str);

        str = '';
        lang_cnt = 0;
        $('input:checkbox[name="lang"]:checked').each(function(){
            if(str == ''){
                str += $(this).val();
            }
            else {
                str += ',' + $(this).val();
                lang_cnt++;
                if(lang_cnt>3){
                    alert('对不起，不能超过3种语言，请减少');
                    return false;
                }
            }
        });

        $('#free_lang').val(str);
        str = $('input:radio[name="optionsColors"]:checked').val();
        $('#free_color').val(str);


        if($('#option_combine1').is(':checked')){
            $('#free_combine').val('true');

        }
        if($('#option_combine2').is(':checked')){
            $('#free_combine').val('false');

        }

        if($('#autorotation').is(':checked')){
            $('#free_autorotation').val('true');

        }else{
            $('#free_autorotation').val('false');

        }

        if($('#a4').is(':checked')){
            $('#free_a4').val('true');

        }else{
            $('#free_a4').val('false');

        }


        $('#free_pass').val($('#pass').val());

    }
    function beforeSubmit(){
        if(isRequest == 1) return false;
        $('#free_button').addClass('disabled');


        if(ismobile){
            var h = $(document).height()-$(window).height()-200;
         $(document).scrollTop(h);    //  $(window).scrollTop()和$(document).scrollTop()具有相同的效果，都为返回滚动条的垂直位置,但是$(window).scrollTop()被所有浏览器支持。
            //                                                                     单独来说：
            //                                                                    $(document)是获取文档对象
            //                                                                    $(window)是获取窗口对象

        }

        $('#resultFrame').removeClass('hidden');
        $('#result').html('...系统处理中...请稍后...（如果页数较多，则时间较长）');
        isRequest = 1;
        return true;
    }
    function complete(data){
        if(data.errno != 0){
            $('#result').html(data.desc);
            $('#free_button').removeClass('disabled');
            isRequest = 0;
            alert(data.desc);
        }else{
            $('#uploader').removeClass('in');
            $('#convparam').removeClass('in');
            $('#remind').removeClass('in');
            count = 0;
            //等待回复
            $('#result').html('正在转换...(已等待'+ count +'秒)');
            intv = setInterval("wait()",1000);
            //提交等候申请
            newid = data.id;
            newtime = data.time;
            //waitResult(data.id,data.time);
            setTimeout(function(){waitResult(data.id,data.time)},1000);
        }
    }

    //Wait
    function waitResult(id,time){
        var timestamp = new Date().getTime();
        $.ajax({
            url: '/waitResult2?id=' + id + '&_t=' + timestamp,
            type: 'POST',
            timeout: 10000,
            data: { check:'yes'},
        })
            .done(function(data) {
                if(data.errno != 0){
                    clearInterval(intv);
                    $('#result').html(data.desc);
                }
                if(data.errno == 0){
                    if(data.status == 0){
                        setTimeout(function(){waitResult(id,time)},1000);
                    }else if(data.status == 1){
                        clearInterval(intv);
                        $('#result').addClass('hidden');
                        $('#download_link').attr({href: "/downResult?id=" + id + "&t="+ time+"&type=title"});
                        $('#download_link_via_id').attr({href: "/downResult?id=" + id + "&t="+ time+"&type=other"});
                        $('#download_id').val(id);
                        $('#download_t').val(time);
                        $('#download').removeClass('hidden');
                        $('#next').removeClass('hidden');
                    }
                    else if(data.status == 2){
                        clearInterval(intv);
                        if(data.desc == "fail"){
                            $('#result').html("转换失败，请再试一次，如果有问题，建议联系网站客服（网站底部）");
                        }else{
                            $('#result').html(data.desc);
                        }
                    }else{
                        $('#result').html('未知错误请刷新再试');
                    }
                }
            })
            .fail(function() {
                $('#result').html('请到“转换记录”中查看（左侧导航）');
            })
            .always(function() {

            });
    }
    //waitFunction
    function wait(){
        count ++;
        if(count > 60) {
            $('#result').html('正在转换...(已等待'+ count +'秒)<br>如页数较多时间可能较长，可到左侧“转换记录”查看（限注册用户）');
        }else{
            $('#result').html('正在转换...(已等待'+ count +'秒)'+"<br>可以继续等待或稍等后到“转换记录”查看（限注册用户）");
        }
    }



    //Uploader
    uploadApi = '/Upload';
    jQuery(function() {
        var $ = jQuery,    // just in case. Make sure it's not an other libaray.
            $wrap = $('#uploader'),
            $queue = $('<ul class="filelist"></ul>').appendTo($wrap.find('.queueList')),
            $statusBar = $wrap.find('.statusBar'),
            $info = $statusBar.find('.info'),
            $upload = $wrap.find('.uploadBtn'),
            $placeHolder = $wrap.find('.placeholder'),
            $progress = $statusBar.find('.progress').hide(),
            fileCount = 0,
            fileSize = 0,
            ratio = window.devicePixelRatio || 1,
            thumbnailWidth = 110 * ratio,
            thumbnailHeight = 110 * ratio,
            state = 'pedding',
            percentages = {},
            supportTransition = (function(){
                var s = document.createElement('p').style,
                    r = 'transition' in s ||
                        'WebkitTransition' in s ||
                        'MozTransition' in s ||
                        'msTransition' in s ||
                        'OTransition' in s;
                s = null;
                return r;
            })(),
            //init
            uploader;
        if (!WebUploader.Uploader.support()){
            alert('Web Uploader 不支持您的浏览器！如果你使用的是IE浏览器，请尝试升级 flash 播放器');
            throw new Error( 'WebUploader does not support the browser you are using.');
        }
        $('#free_ids').val('');
        $('#free_ts').val('');
        uploader = WebUploader.create({
            pick: {
                id: '#filePicker',
                label: '选择文件'
            },
            dnd: '#uploader .queueList',
            paste: document.body,
            accept: {
                title: '图片/PDF文件',
                extensions: 'png,jpg,pdf,jpeg,tiff,bmp,gif,tif,heic,heif',
                mimeTypes: '',
            },
            swf: '/public/webuploader/Uploader.swf',
            threads:1,
            disableGlobalDnd: true,
            chunked: false,
            server: uploadApi,
            fileNumLimit: par_file_num_limit,
            fileSizeLimit: par_upload_size,
            fileSingleSizeLimit: par_upload_size,
            compress: false,
            resize: false,
        });
        uploader.addButton({
            id: '#filePicker2',
            label: '继续添加'
        });
        // 当有文件添加进来时执行，负责view的创建
        function addFile( file ) {
            var $li = $( '<li id="' + file.id + '">' +
                '<p class="title">' + file.name + '</p>' +
                '<p class="imgWrap"></p>'+
                '<p class="progress"><span></span></p>' +
                '</li>'),

                $btns = $('<div class="file-panel">' +
                    '<span class="cancel">删除</span>' +
                    '</div>').appendTo( $li ),
                $prgress = $li.find('p.progress span'),
                $wrap = $li.find( 'p.imgWrap' ),
                $info = $('<p class="error"></p>'),

                showError = function(code) {
                    switch( code ) {
                        case 'exceed_size':
                            if(islogin){
                                text = '单个文件大小超出最大限制（' + par_upload_size/1024/1024 +'M）';
                            }
                            else{
                                text = '未注册用户仅能上传最大 ' + par_upload_size/1024/1024 +'M 文件'
                            }

                            break;

                        case 'interrupt':
                            text = '上传暂停';
                            break;

                        default:
                            text = '上传失败，请重试';
                            break;
                    }

                    $info.text( text ).appendTo( $li );
                };
            if ( file.getStatus() === 'invalid' ) {
                showError(file.statusText);
            } else {
                // @todo lazyload
                $wrap.text('预览中');
                uploader.makeThumb( file, function( error, src ) {
                    if (error) {
                        $wrap.text('文件无预览');
                        return;
                    }

                    var img = $('<img src="'+src+'">');
                    $wrap.empty().append(img);
                }, thumbnailWidth, thumbnailHeight );

                percentages[ file.id ] = [ file.size, 0 ];
                file.rotation = 0;
            }
            file.on('statuschange', function( cur, prev ) {
                if ( prev === 'progress' ) {
                    $prgress.hide().width(0);
                } else if ( prev === 'queued' ) {
                    $li.off( 'mouseenter mouseleave' );
                    $btns.remove();
                }

                // 成功
                if ( cur === 'error' || cur === 'invalid' ) {
                    //console.log( file.statusText );
                    showError( file.statusText );
                    percentages[ file.id ][ 1 ] = 1;
                } else if ( cur === 'interrupt' ) {
                    showError( 'interrupt' );
                } else if ( cur === 'queued' ) {
                    percentages[ file.id ][ 1 ] = 0;
                } else if ( cur === 'progress' ) {
                    $info.remove();
                    $prgress.css('display', 'block');
                } else if ( cur === 'complete' ) {
                    $li.append( '<span class="success"></span>' );
                }

                $li.removeClass( 'state-' + prev ).addClass( 'state-' + cur );
            });
            $li.on( 'mouseenter', function() {
                $btns.stop().animate({height: 30});
            });
            $li.on( 'mouseleave', function() {
                $btns.stop().animate({height: 0});
            });
            $btns.on( 'click', 'span', function() {
                var index = $(this).index(),
                    deg;

                switch ( index ) {
                    case 0:
                        uploader.removeFile( file );
                        return;

                    case 1:
                        file.rotation += 90;
                        break;

                    case 2:
                        file.rotation -= 90;
                        break;
                }

                if ( supportTransition ) {
                    deg = 'rotate(' + file.rotation + 'deg)';
                    $wrap.css({
                        '-webkit-transform': deg,
                        '-mos-transform': deg,
                        '-o-transform': deg,
                        'transform': deg
                    });
                } else {
                    $wrap.css( 'filter', 'progid:DXImageTransform.Microsoft.BasicImage(rotation='+ (~~((file.rotation/90)%4 + 4)%4) +')');
                }
            });
            $li.appendTo( $queue );
        }

        // 负责view的销毁
        function removeFile(file) {
            var $li = $('#'+file.id);

            delete percentages[ file.id ];
            updateTotalProgress();
            $li.off().find('.file-panel').off().end().remove();
        }

        function updateTotalProgress() {
            var loaded = 0,
                total = 0,
                spans = $progress.children(),
                percent;

            $.each( percentages, function( k, v ) {
                total += v[ 0 ];
                loaded += v[ 0 ] * v[ 1 ];
            } );

            percent = total ? loaded / total : 0;

            spans.eq( 0 ).text( Math.round( percent * 100 ) + '%' );
            spans.eq( 1 ).css( 'width', Math.round( percent * 100 ) + '%' );
            updateStatus();
        }

        function updateStatus() {
            var text = '', stats;

            if (state === 'ready') {
                text = '选中' + fileCount + '份文件，共' +
                    WebUploader.formatSize(fileSize) + '。';
            } else if ( state === 'confirm' ) {
                stats = uploader.getStats();
                if (stats.uploadFailNum) {
                    text = '已上传' + stats.successNum+ '份，'+
                        stats.uploadFailNum + '份文件上传失败，<a class="retry" href="#">重新上传</a>失败我文件或<a class="ignore" href="#">忽略</a>'
                }

            }else{
                stats = uploader.getStats();
                text = '共' + fileCount + '张（' +
                    WebUploader.formatSize( fileSize )  +
                    '），已传' + stats.successNum + '张';

                if ( stats.uploadFailNum ) {
                    text += '，失败' + stats.uploadFailNum + '张';
                }
            }

            $info.html( text );
        }

        function setState( val ) {
            var file, stats;

            if ( val === state ) {
                return;
            }

            $upload.removeClass('state-' + state);
            $upload.addClass('state-' + val);
            state = val;

            switch ( state ) {
                case 'pedding':
                    $placeHolder.removeClass( 'element-invisible' );
                    $queue.parent().removeClass('filled');
                    $queue.hide();
                    $statusBar.addClass( 'element-invisible' );
                    uploader.refresh();
                    break;

                case 'ready':
                    $placeHolder.addClass( 'element-invisible' );
                    $( '#filePicker2' ).removeClass( 'element-invisible');
                    $queue.parent().addClass('filled');
                    $queue.show();
                    $statusBar.removeClass('element-invisible');
                    uploader.refresh();
                    break;

                case 'uploading':
                    $( '#filePicker2' ).addClass( 'element-invisible' );
                    $progress.show();
                    $upload.text( '暂停上传' );
                    break;

                case 'paused':
                    $progress.show();
                    $upload.text( '继续上传' );
                    break;

                case 'confirm':
                    $progress.hide();
                    $upload.text( '开始上传' ).addClass( 'disabled' );

                    stats = uploader.getStats();
                    if ( stats.successNum && !stats.uploadFailNum ) {
                        setState( 'finish' );
                        return;
                    }
                    break;
                case 'finish':
                    stats = uploader.getStats();
                    if (stats.successNum) {
                        //alert( '上传成功' );
                    } else {
                        // 没有成功的图片，重设
                        state = 'done';
                        location.reload();
                    }
                    break;
            }
            updateStatus();
        }

        uploader.onUploadProgress = function( file, percentage ) {
            var $li = $('#'+file.id),
                $percent = $li.find('.progress span');

            $percent.css( 'width', percentage * 100 + '%' );
            percentages[ file.id ][ 1 ] = percentage;
            updateTotalProgress();
        };

        uploader.onFileQueued = function(file) {
            fileCount++;
            fileSize += file.size;
            if (fileCount === 1) {
                $placeHolder.addClass('element-invisible');
                $statusBar.show();
            }
            addFile(file);
            setState('ready');
            updateTotalProgress();
        };

        uploader.onFileDequeued = function(file) {
            fileCount--;
            fileSize -= file.size;

            if (!fileCount) {
                setState('pedding');
            }

            removeFile(file);
            updateTotalProgress();
        };
        //所有文件上传完成
        uploader.on('uploadComplete', function( file ){
            //$('#selectForm').removeClass('hidden');
            //$('#confirmForm').removeClass('hidden');
        });
        //单个文件上传返回
        uploader.on('uploadAccept', function(file,response){
            //console.log(response);
            if(response.errno != 0){
                console.log("上传失败，原因：("+ response.desc+")请截图并发送邮件到ocr@wdku.net可快速解决问题");
                $.ajax({
                    url: '/upload_report',
                    type: 'POST',
                    dataType: 'json',
                    data: response._raw,
                })
                    .done(function() {
                        //console.log("success");
                    })
                    .fail(function() {
                        //console.log("error");
                    })
                    .always(function() {
                        //console.log("complete");
                    });

                return false;
            }else{
                if(!$('#free_ids').val())
                    $('#free_ids').val(response.data.id);
                else
                    $('#free_ids').val($('#free_ids').val() + ',' + response.data.id);

                if(!$('#pay_ids').val())
                    $('#pay_ids').val(response.data.id);
                else
                    $('#pay_ids').val($('#pay_ids').val() + ',' + response.data.id);

                if(!$('#free_ts').val())
                    $('#free_ts').val(response.data.time);
                else
                    $('#free_ts').val($('#free_ts').val() + ',' + response.data.time);

                if(!$('#pay_ts').val())
                    $('#pay_ts').val(response.data.time);
                else
                    $('#pay_ts').val($('#pay_ts').val() + ',' + response.data.time);
            }
        });


        uploader.on('all',function( type ) {
            var stats;
            switch(type) {
                case 'uploadFinished':
                    setState('confirm');
                    break;

                case 'startUpload':
                    setState('uploading');
                    break;

                case 'stopUpload':
                    setState('paused');
                    break;

            }
        });

        uploader.onError = function(code) {
            if(code == 'Q_TYPE_DENIED'){
                alert('对不起，该后缀文件不支持');
            }
            else if(code == 'Q_EXCEED_NUM_LIMIT'){
                if(!islogin){
                    alert('对不起，未注册登录用户不能使用批量上传');
                    $(window).attr('location','https://www.wdku.net/user/reg');
                }else{
                    alert("对不起，最大允许上传" +par_file_num_limit+"份文件");
                }
            }
            else if(code == 'F_EXCEED_SIZE'){
                if(!islogin){
                    alert('对不起，未注册登录用户最大仅能上传 '+par_upload_size/1024/1024+'M 文件');
                    $(window).attr('location','https://www.wdku.net/user/reg');
                }else{
                    alert("对不起，单个上传文件尺寸最大只能上传"+par_upload_size/1024/1024 +'M');
                }
            }
            else if(code == 'Q_EXCEED_SIZE_LIMIT'){
                if(!islogin){
                    alert('对不起，未注册登录用户最大仅能上传 '+par_upload_size/1024/1024+'M 文件');
                    $(window).attr('location','https://www.wdku.net/user/reg');
                }else{
                    alert("对不起，所有上传文件总尺寸最大" +par_upload_size/1024/1024 +'M，请缩小');
                }
            }
            else{
                alert('Error: ' + code);
            }
        };

        $upload.on('click', function() {
            if ( $(this).hasClass( 'disabled' ) ) {
                return false;
            }
            if ( state === 'ready' ) {
                uploader.upload();
            } else if ( state === 'paused' ) {
                uploader.upload();
            } else if ( state === 'uploading' ) {
                uploader.stop();
            }
        });

        $info.on( 'click', '.retry', function() {
            uploader.retry();
        });

        $info.on( 'click', '.ignore', function() {
            alert( 'todo' );
        } );

        $upload.addClass( 'state-' + state );
        updateTotalProgress();
    });
</script>
<script>
    var _hmt = _hmt || [];
    (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?c28bc0ecf7d4c8b69eafd431fdf653e0";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();
</script>
<script type="text/javascript">
    $(function () {
        $(".dropdown").mouseover(function () {
            $(this).addClass("open");
        });
        $(".dropdown").mouseleave(function(){
            $(this).removeClass("open");
        })
    });
</script>

</body>


</html>
