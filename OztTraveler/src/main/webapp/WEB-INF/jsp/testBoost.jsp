<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/static/";
%>
<html>
<head>
    <base href="<%=basePath%>"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--页面标题-->
    <title>Title</title>
    <!--页面Logo-->
    <link rel="shortcut icon" href="<%=basePath%>images/voicecyber.ico"/>
    <!--引入bootstrap样式-->
    <link href="<%=basePath%>bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div class="container">
    <h1>Welcome, this is Login page!</h1>
    <h2>${user.userName}</h2>
</div>

<!--引入jquery脚本-->
<script src="<%=basePath%>bootstrap/js/jquery.js" type="text/javascript"></script>
<!--引入bootstrap脚本-->
<script src="<%=basePath%>bootstrap/js/bootstrap.js" type="text/javascript"></script>
</body>