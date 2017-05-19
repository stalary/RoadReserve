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
    Object username = session.getAttribute("temp");
%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>注册</title>
    <link rel="stylesheet" href="css/registerCSS.css" type="text/css"/>
    <link rel="stylesheet" href="css/mainCSS.css" type="text/css"/>
</head>
<body>
<div class="container">
<div class="rg_top">
    <div class="rg_title">
        <h1>注册</h1>
    </div>
</div>
<div class="rg_content">
    <form action="controller/RegisterServlet" method="post">
        <p>帐号：<input type="text" name="account" class="rg_account"/></p>
        <p>密码：<input type="password" name="password" class="rg_password"/></p>
        <p>确认密码：<input type="password" class="rg_confirm_password"/></p>
        <p>姓名：<input type="text" name="name" class="rg_name"/>
        <p>手机号：<input type="text" name="phone" class="rg_phone"/></p>
        <input type="submit" class="rg_button" value="注册";>
    </form>
</div>
    <div class="rg_exit">
        <a href="login.jsp">返回首页</a>
    </div>
</div>
<script src="js/bootstrap.min.js"></script>
<script src="js/jQuery-3.2.1.min.js"></script>
</body>
</html>
