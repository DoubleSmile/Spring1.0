<html lang="en"><!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>一起</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="${contextPath}/resource/css/bootstrap.css" rel="stylesheet">
    <link href="${contextPath}/resource/css/site.css" rel="stylesheet">
    <link href="${contextPath}/resource/css/bootstrapValidator.min.css" rel="stylesheet">

</head>
<body>  
    <#include "common/header.ftl">
    
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <div class="page-header">
                    <h2>注册</h2>
                </div>

                <form id="form" method="post" class="form-horizontal" action="${contextPath}/user/register">
                    <div class="form-group">
                        <div class="group">
                            <label class="col-sm-2 control-label">账号</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control" name="account" />
                            </div>
                        </div>
                        <p style="color:red"><#if warningMessage?exists>${warningMessage}</#if></p>
                     
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">用户名</label>
                        <div class="col-sm-5">
                            <input type="text" class="form-control" name="username" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">密码</label>
                        <div class="col-sm-5">
                            <input type="password" class="form-control" name="pw1" />
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-sm-2 control-label">重复密码</label>
                        <div class="col-sm-5">
                            <input type="password" class="form-control" name="pw2" />
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-10 col-sm-offset-2">
                            <button type="submit" class="btn btn-primary">注册</button>
                            <button name="cancel" class="btn" onclick="window.history.back(-1)">取消</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

<script src="${contextPath}/resource/js/jquery-2.1.3.js"></script>
<script src="${contextPath}/resource/js/bootstrap.js"></script>
<script src="${contextPath}/resource/js/bootstrapValidator.min.js"></script>
<script src="${contextPath}/resource/js/validator.js"></script>
</body>
</html>

