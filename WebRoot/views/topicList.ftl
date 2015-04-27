<#import "/spring.ftl" as spring />
<#include "common/path.ftl" />
<#include "common/top.ftl" />
<#include "common/header.ftl" />
<div class="col-md-8">

    <ol class="breadcrumb">
        <li><a href="${contextPath}/index">主页</a></li>
        <li class="active">帖子列表</li>
    </ol>

    <h3 class="docs-header">帖子列表</h3>
        <#if topics?exists>
            <#list topics as topic>
        <div class="panel panel-primary">
           
            <div class="panel-heading">${topic.title}</div>
            <div class="panel-body">
                <a href="${contextPath}/post/index/${topic.id}"><p>${topic.content}</p></a>
                <span class="meta pull-right">发布<span class="glyphicon glyphicon-calendar"></span> <me>
                By</me>  <span class="glyphicon glyphicon-user"></span> <me>暂时先搁置</me></span>
            </div>
        </div>
        </#list>
        </#if> 
    <a class="btn btn-primary" href="${contextPath}/topic/newTopic" role="button">发表新帖</a>

</div>


<#include "common/footer.ftl" />
<#include "common/bottom.ftl" />