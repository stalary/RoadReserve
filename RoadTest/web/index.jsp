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
    Object username = session.getAttribute("name");
%>
<html>
<head>
    <title>首页</title>
    <link rel="stylesheet" href="css/indexCSS.css" type="text/css"/>
    <link rel="stylesheet" href="css/mainCSS.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.1.1.js"></script>
</head>
<body>
<div class="main_body">
<div class="in_top">
    <div class="in_title">
        <h1>首页</h1>
    </div>
</div>
<div class="in_content">
    <form action="controller/UserServlet" method="post" style="display: inline">
        <input type="submit" value="预约" name="button" class="in_reservation" />
    </form>
    <form action="controller/UserServlet" method="post" style="display: inline">
        <input type="submit" value="取消预约" name="button" class="in_cancel_reservation" />
    </form>
    <form action="controller/UserServlet" method="post" style="display: inline">
        <input type="submit" value="查询预约情况" name="button" class="in_query_reservation" />
    </form>
    <form action="controller/UserServlet" method="post" style="display: inline">
        <input type="submit" value="查询道路" name="button" class="in_query_road" />
    </form>
</div>
<div class="in_exit">
    <a href="login.jsp">退出</a>
</div>
</div>
</body>
</html>
