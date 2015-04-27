<#import "/spring.ftl" as spring />
<#include "common/path.ftl" />
<#include "common/top.ftl" />
<#include "common/header.ftl" /> 
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

<#include "common/bottom.ftl" />

