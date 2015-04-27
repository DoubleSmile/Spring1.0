<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                    data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="${contextPath}/index">BBS主页</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

                <li>
                    <a href="${contextPath}/topic/index">进入贴吧</a>
                </li>
                
                <li>
                    <a href="#">个人信息</a>
                </li>
                <li>
                    <a href="#">帮助</a>
                </li>
                
            </ul>
            <ul class="nav navbar-nav navbar-right">
            <#if Session.user?exists>
            <li>
                    <a class="myColor" href="#">${user.name}</a>
            </li>
             <#else>
                <li>
                    <a class="myColor" href="${contextPath}/login">登陆</a>
                </li>
            </#if>
            <#if Session.user?exists>
                <li>
                    <a class="myColor" href="${contextPath}/user/loginOut">注销</a>
                </li>
             <#else>
                <li>
                    <a class="myColor" href="${contextPath}/register">注册</a>
                </li>
             </#if>

            </ul>
        </div>
    </div>
</nav>