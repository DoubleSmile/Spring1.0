<#import "/spring.ftl" as spring />
<#include "common/path.ftl" />
<#include "common/top.ftl" />
<#include "common/header.ftl" />
<div class="col-md-8">

    <ol class="breadcrumb">
        <li><a href="${contextPath}/index">BBS首页</a></li>
        <li><a href="${contextPath}/topic/index">话题页</a></li>
        <li class="active">当前页</li>
    </ol>

    <h3 class="docs-header">查看帖子</h3>

    <div class="panel panel-primary">
        <div class="panel-heading">${topic.title}</div>
        <div class="panel-body">
            <p>${topic.content}</p>
            <span class="meta pull-right"><span class="glyphicon glyphicon-calendar"></span> <me>
            </me>  <span class="glyphicon glyphicon-user"></span> 
            <me>   <a href="#">#</a></me>
                    <a href="#" role="button" class="btn btn-danger">删除</a>
                   </span>
        </div>
    </div>
     <#if list?exists>
	     <#list list as post>
        <ul class="messages">
          <li class="well">
            <p class="message">${post.content}</p>
            <span class="meta"><em>发表</em> by <em><a
                    href="#">有待开发</a></em>
                <a href="#" role="button" class="btn btn-danger">删除</a>
            </span>
         </li>
      </ul>
        </#list>
    </#if>
    
    <div id="myCollapsibleExample"><a href="#demo" data-toggle="collapse" class="glyphicon glyphicon-chevron-down">回复</a></div>
        <div id="demo" class="collapse">
           <form id="message-reply" action="${contextPath}/post/addPost/${topic.id}" method="post" class="form-horizontal">
		    <fieldset>
		        <div class="input-group">
		            <span class="input-group-addon" id="basic-addon1">内容</span>
		            <textarea rows="3" name="content" class="form-control" aria-describedby="basic-addon1"></textarea>
		        </div>
		        <div class="docs-header">
		            <button type="submit" class="btn btn-primary">提交</button>
		        </div>
		     </fieldset>
            </form>
        </div>

    
<#include "common/footer.ftl" />
<#include "common/bottom.ftl" />
