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
    <#import "spring.ftl" as spring /> 
<div class="col-md-8">
    <h3 class="docs-header">注册</h3>

    <div class="col-md-6 col-md-offset-3">

        <form method="post" action="${contextPath}/user/register">

            <div class="form-group">
                <label for="id">账号:</label>
                <input type="text" class="form-control" name="account" id="id" placeholder="你的登陆账号(6-16位)">
            </div> 
               <p style="color:red"><#if warningMessage?exists> <h4>${warningMessage}</h4>   </#if></p>
               <p style="color:red"><#if userDetail?exists>  
				    <@spring.bind "userDetail.account" />  
				    <@spring.showErrors "<br>"/>  
			   </#if> </p>

            <div class="form-group">
                <label for="name">名称:</label>
                <input type="text" name="username" class="form-control" id="username" placeholder="你的名称">
            </div>
                <p style="color:red"><#if userDetail?exists>  
				    <@spring.bind "userDetail.name" />  
				    <@spring.showErrors "<br>"/>  
			   </#if></p>

            
            <div class="form-group">
                <label for="pw1">密码:</label>
                <input type="password" name="pw1" class="form-control" id="pw1" placeholder="你的密码(6-16位)">
            </div>
                <p style="color:red"><#if userDetail?exists>  
				    <@spring.bind "userDetail.password" />  
				    <@spring.showErrors "<br>"/>  
			   </#if></p>

            <div class="form-group">
                <label for="pw2">重复密码:</label>
                <input type="password" name="pw2" class="form-control" id="pw2" placeholder="重复你的密码">
            </div>

            <div class="row text-center">
                <input type="submit" class="btn btn-primary" value="注册">
                <button class="btn" onclick="window.history.back(-2)">取消</button>
            </div>

        </form>
    </div>

</div> 

<script src="${contextPath}/resource/js/jquery-2.1.3.js"></script>
<script src="${contextPath}/resource/js/bootstrap.js"></script>
<script src="${contextPath}/resource/js/site.js"></script>
</body>
</html>

