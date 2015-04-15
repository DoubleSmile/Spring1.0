<html lang="en"><!--<![endif]-->
<head>
    <meta charset="utf-8">
    <title>一起</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="/WEB-INF/css/bootstrap.css" rel="stylesheet">
    <link href="/WEB-INF/css/site.css" rel="stylesheet">

</head>
<body>
<div class="container">

    <#include "/header.ftl">


    <div id="common_alert" style="display: none">
        <div class='alert alert-warning alert-dismissible' role='alert'>
            <button type='button' class='close' data-dismiss='alert'><span aria-hidden='true'>&times;</span>
                <span class='sr-only'>Close</span></button>
            <strong id="alert_content"></strong></div>
    </div>

    <div class="row">


        <#include "/side_bar.ftl">


    </div>

       <#include "/footer.ftl">

</div>
<script src="/WEB-INF/js/jquery-2.1.3.js"></script>
<script src="/WEB-INF/js/bootstrap.js"></script>
<script src="/WEB-INF/js/site.js"></script>
</body>
</html>