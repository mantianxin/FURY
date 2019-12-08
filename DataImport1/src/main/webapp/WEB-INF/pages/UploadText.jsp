<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>ajax上传文件</title>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet"
          href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
          crossorigin="anonymous">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-2.1.1.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script
            src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"
            integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"
            crossorigin="anonymous">
    </script>
</head>
<body>
<form id="uploadForm">
    <!-- 由于使用了ssm框架，后台接收是用name绑定的，注意name和后台一致 -->
     <input type="file" id="file" name="file" />
     <input type="button" onclick="UpladFile()" value="上传" />
</form>

<div class="progress" style="width: 40%">
    <div id="progressactive"
         class="progress-bar progress-bar-striped active"
         role="progressbar" aria-valuenow="45"
         aria-valuemin="0" aria-valuemax="100"
         style="width: 0%">
    </div>
</div>
<span id="sr-only"></span>
</body>
<script type="text/javascript">
    function UpladFile() {
        var fileObj = document.getElementById("file").files[0]; // js 获取文件对象
        //var fileObj  = document.getElementsByName("file")[0].files[0];//js 获取文件对象
        if(fileObj>5120){
            alert("上传大于5M")
        }
        var FileController = "${pageContext.request.contextPath}/upload"; // 接收上传文件的后台地址
        // FormData 对象
        var form = new FormData($("#uploadForm")[0]);//创建一个form对象
        // XMLHttpRequest 对象
        var xhr = new XMLHttpRequest();//创建XMLHttpRequest对象
        xhr.open("post", FileController, true);//打开连接，(访问类型，地址，是否异步)
        xhr.onload = function() {//请求完成后执行  里面可用
            if ((xhr.status >= 200 && xhr.status < 300) || xhr.status == 304) {

            } else {
                alert("Request was unsuccessful: " + xhr.status);//状态
                //0	UNSENT (未打开),1	OPENED  (未发送),2 HEADERS_RECEIVED (已获取响应头),3	LOADING (正在下载响应体),4	DONE (请求完成)
            }
        };
        xhr.upload.addEventListener("progress", progressFunction, false);//添加上传监听器方法
        xhr.send(form);//发送请求
    }
    function progressFunction(evt) {
        var progressBar = document.getElementById("progressactive");//获取进度条对象
        var percentageDiv = document.getElementById("sr-only");//获取展示进度数据对象
        if (evt.lengthComputable) {
            var max = evt.total;//文件总大小
            var loaded = evt.loaded;//已上传文件大小
            console.log(max);
            progressBar.style.width = Math.round(loaded / max * 100) + "%";
            percentageDiv.innerHTML = Math.round(loaded / max * 100) + "%";
            if (evt.loaded == evt.total) {
                window.location.href = "${pageContext.request.contextPath}/";
                percentageDiv.innerHTML = "上传完成";

            }
        }
    }
</script>
</html>