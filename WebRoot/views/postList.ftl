<#import "/spring.ftl" as spring />
<#include "common/path.ftl" />
<#include "common/top.ftl" />
<#include "common/header.ftl" />
<div class="col-md-8">

    <ol class="breadcrumb">
        <li><a href="${base}/">一起</a></li>
        <li><a href="${base}/public/${topic.groups.id}">#</a></li>
        <li><a href="${base}/user-groups/listTopic/${topic.groups.id}">#</a></li>
        <li><a href="${base}/groups/">组</a></li>
        <li class="active">#</li>
    </ol>

    <h3 class="docs-header">查看帖子</h3>

    <div class="panel panel-danger">
        <div class="panel-heading">#</div>
        <div class="panel-body">
            <p>#</p>
            <span class="meta pull-right"><span class="glyphicon glyphicon-calendar"></span> <me>
               
            </me>  <span class="glyphicon glyphicon-user"></span> <me><a
                    href="${base}/user/getInfo/${topic.user.id!}">#</a></me>
                    <a href="${base}/topic/deleteTopic/${topic.id!}" role="button" class="btn btn-danger">删除</a>
            </span>
        </div>
    </div>

    <div class="panel panel-primary">
        <div class="panel-heading">#</div>
        <div class="panel-body">
            <p>#</p>
            <span class="meta pull-right"><span class="glyphicon glyphicon-calendar"></span> <me>
            </me>  <span
                    class="glyphicon glyphicon-user"></span> <me><a
                    href="${base}/user/getInfo/${topic.user.id!}">#</a></me>
                    <a href="${base}/topic/deleteTopic/${topic.id!}" role="button" class="btn btn-danger">删除</a>
                    </span>
        </div>
    </div>

    <ul class="messages">

        <li class="well">
            <p class="message">
            </p>
            <span class="meta">#<em>#</em> by <em><a
                    href="${base}/user/getInfo/${post.user.id!}">#</a></em>
                <a href="${base}/post/deletePost/${topic.id!}-${post.id}" role="button" class="btn btn-danger">删除</a>
            </span>
        </li>
    </ul>

    <div class="row">
        <a class="toggle-link" href="#message-reply"><i class="icon-plus"></i>回复</a>
    </div>

    <form id="message-reply" action="${base}/post/newPost/${topic.id!}-${page.pageNumber}" method="post"
          class="form-horizontal hidden">
        <fieldset>
            <legend>Reply</legend>
            <div class="input-group">
                <span class="input-group-addon" id="basic-addon1">内容</span>
                <textarea rows="3" name="content" class="form-control" aria-describedby="basic-addon1"></textarea>
            </div>
            <div class="docs-header">
                <button type="submit" class="btn btn-primary">发送</button>
            </div>
        </fieldset>
    </form>

    </div>

</div>
<#include "common/footer.ftl" />
<#include "common/bottom.ftl" />
