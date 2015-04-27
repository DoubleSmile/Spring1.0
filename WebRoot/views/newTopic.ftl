<#import "/spring.ftl" as spring />
<#include "common/path.ftl" />
<#include "common/top.ftl" />
<#include "common/header.ftl" />
<div class="col-md-8">


    <h3 class="docs-header">发表新帖</h3>

    <ul class="nav nav-tabs">
        <li role="presentation" class="active"><a href="#">帖子</a></li>
    </ul>

    <form method="post" action="${contextPath}/topic/addTopic">

        <div class="form-group">
            <label for="title">标题</label>
            <input type="text" class="form-control" name="title" id="title" placeholder="你的标题">
        </div>

        <div class="form-group">
            <label for="content">内容</label>
            <textarea class="form-control" rows="3" name="content" id="content" placeholder="你的内容"></textarea>
        </div>

        <div class="row text-center">
            <input type="submit" class="btn btn-primary" value="提交">
            <a class="btn btn-primary" href="#">取消</a>
        </div>
    </form>

</div>

<#include "common/footer.ftl" />
<#include "common/bottom.ftl" />
