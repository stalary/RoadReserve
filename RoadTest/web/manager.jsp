<%--
Created by IntelliJ IDEA.
User: Stalary
Date: 17/5/9
Time: 下午10:45
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="css/managerCSS.css" type="text/css"/>
    <link rel="stylesheet" href="css/mainCSS.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.1.1.js"></script>
</head>
<body>
<div class="main_body">
<div class="mg_top">
    <div class="mg_title">
        <h1>管理页面</h1>
    </div>
</div>
<div class="mg_content">
        <input type="button" value="预约管理" class="mg_reservation" onclick=window.location.href="managerReserve.jsp"; />
        <input type="button" value="道路管理" class="mg_road" onclick=window.location.href="managerRoad.jsp"; />
</div>
<div class="mg_exit">
    <a href="login.jsp">退出</a>
</div>
</div>
</body>
</html>
