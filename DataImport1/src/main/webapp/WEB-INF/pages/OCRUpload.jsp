<%--
  Created by IntelliJ IDEA.
  User: lizwl
  Date: 2019/11/27
  Time: 21:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>多文件上传</title>
</head>
<body>
<div id="uploader" class="wu-example collapse in">
    <div class="queueList">
        <div id="dndArea" class="placeholder" style="padding-top: 20px;min-height: 120px;">
            <div id="filePicker" class="webuploader-container"><div class="webuploader-pick">选择文件</div><div id="rt_rt_1dqlrul1kkp11pu7ni11jml1vqm1" style="position: absolute; top: 0px; left: 286px; width: 132px; height: 44px; overflow: hidden; bottom: auto; right: auto;"><input type="file" name="file" class="webuploader-element-invisible" multiple="multiple" accept=""><label style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label></div></div>
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
            <div id="filePicker2" class="webuploader-container"><div class="webuploader-pick">继续添加</div><div id="rt_rt_1dqlrul1mm8c5ar171mq1t15fe6" style="position: absolute; top: 0px; left: 0px; width: 1px; height: 1px; overflow: hidden;"><input type="file" name="file" class="webuploader-element-invisible" multiple="multiple" accept=""><label style="opacity: 0; width: 100%; height: 100%; display: block; cursor: pointer; background: rgb(255, 255, 255);"></label></div></div><div class="uploadBtn state-pedding">开始上传</div>
        </div>
    </div>
</div>
</body>
</html>
