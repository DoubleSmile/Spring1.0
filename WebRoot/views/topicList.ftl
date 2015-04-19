<div class="col-md-8">

    <ol class="breadcrumb">
        <li><a href="${base}/">一起</a></li>
        <li class="active">${group.name}</li>
    </ol>

    <h3 class="docs-header">帖子列表</h3>

    <ul class="docs-header nav nav-tabs">

        <li role="presentation" <%if(mode==0){%> class="active" <%}%>><a href="${base}/groups/0">默认</a></li>
        <li role="presentation" <%if(mode==1){%> class="active" <%}%>><a href="${base}/groups/1">只看教师</a></li>
        <li role="presentation" <%if(mode==2){%> class="active" <%}%>><a href="${base}/groups/2">热点</a></li>


        <li role="presentation" <%if(mode==0){%> class="active" <%}%>><a href="${base}/groups/list/${group.id}-0">默认</a></li>
        <li role="presentation" <%if(mode==1){%> class="active" <%}%>><a href="${base}/groups/list/${group.id}-1">只看教师</a></li>
        <li role="presentation" <%if(mode==2){%> class="active" <%}%>><a href="${base}/groups/list/${group.id}-2">热点</a></li>

    </ul>

    <a href="${base}/post/${topic.id}">
        <div class="panel panel-success">
            <div class="panel-heading">投票:${topic.title!}</div>
            <div class="panel-body">
                ${topic.postCount!} 人已参加
                <span class="meta pull-right"><span class="glyphicon glyphicon-calendar"></span> <me>
                    ${printTime(topic.time)}
                </me>  <span class="glyphicon glyphicon-user"></span> <me>${topic.user.name!}</me></span>
            </div>
        </div>
    </a>
    <a href="${base}/post/${topic.id}">
        <div class="panel panel-danger">
            <div class="panel-heading">教师贴</div>
            <div class="panel-body">
                <p>${topic.title!}</p>
                <span class="meta pull-right"><span class="glyphicon glyphicon-calendar"></span> <me>
                    ${printTime(topic.time)}
                </me>  <span class="glyphicon glyphicon-user"></span> <me>${topic.user.name!}</me></span>
            </div>
        </div>
    </a>
    
    <a href="${base}/post/${topic.id}">
        <div class="panel panel-primary">
            <div class="panel-heading">帖子</div>
            <div class="panel-body">
                <p>${topic.title!}</p>
                <span class="meta pull-right"><span class="glyphicon glyphicon-calendar"></span> <me>
                    ${printTime(topic.time)}
                </me>  <span class="glyphicon glyphicon-user"></span> <me>${topic.user.name!}</me></span>
            </div>
        </div>
    </a>


    <div class="row text-center">
        <div class="btn-group">
            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown"
                    aria-expanded="false">发表 <span class="caret"></span></button>
            <ul class="dropdown-menu" role="menu">
                <li><a href="${base}/groups/newTopic/${group.id}">帖子</a></li>
                <li><a href="${base}/groups/newVote/${group.id}">投票</a></li>
                <li><a href="#">公告</a></li>
            </ul>
        </div>

        <a class="btn btn-primary" href="${base}/groups/listMember/${group.id}">成员列表</a>
    </div>

</div>


