<html lang="en"><!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>一起</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${contextPath}/resource/css/bootstrap.css" rel="stylesheet">
    <link href="${contextPath}/resource/css/site.css" rel="stylesheet">

</head>
<body>  
    <#include "common/header.ftl">
<div class="col-md-8">
    <h3 class="docs-header">登陆</h3>


    <div class="col-md-6 col-md-offset-3">
        <form action="${contextPath}/user/login" method="post">
            <div class="form-group">
                <label for="id">账号:</label>
                <input type="text" name="account" class="form-control" id="id" placeholder="你的账号">
            </div>
              <p style="color:red"> <#if accountWarningMessage?exists>${accountWarningMessage}</#if></p>
            <div class="form-group">
                <label for="pw">密码:</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="你的密码">
            </div>
             <p style="color:red">  <#if passwordWarningMessage?exists><h4>${passwordWarningMessage}</h4></#if></p>
            <div class="row text-center">
                <input type="submit" class="btn btn-primary" value="登陆">
                <a href="${contextPath}/register" role="button" class="btn">没有账号?</a>
            </div>

        </form>

    </div>

</div>
<script src="${contextPath}/resource/js/jquery-2.1.3.js"></script>
<script src="${contextPath}/resource/js/bootstrap.js"></script>
<script src="${contextPath}/resource/js/site.js"></script>
</body>
</html>