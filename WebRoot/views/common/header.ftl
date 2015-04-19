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
            <a class="navbar-brand" href="#">BBS主页</a>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">

                <li>
                    <a href="#">进入贴吧</a>
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
                    <a href="#">${user.name}</a>
            </li>
             <#else>
                <li>
                    <a href="login">登陆</a>
                </li>
            </#if>
            <#if Session.user?exists>
                <li>
                    <a href="loginOut">注销</a>
                </li>
             <#else>
                <li>
                    <a href="register">注册</a>
                </li>
             </#if>

            </ul>
        </div>
    </div>
</nav>