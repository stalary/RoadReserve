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
    <title>修改密码</title>
    <link rel="stylesheet" href="css/alterCSS.css" type="text/css"/>
    <link rel="stylesheet" href="css/mainCSS.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.1.1.js"></script>
</head>
<body>
<div class="main_body">
    <div class="al_top">
        <div class="al_title">
            <h1>修改密码</h1>
        </div>
    </div>
    <div class="al_content">
        <form action="controller/AlterServlet" method="post">
            <p style="color: #ff0c46">账号不存在,请注册</p>
            <p>帐号：<input type="text" name="account" class="al_account"/></p>
            <p>修改密码：<input type="password" name="password" class="al_alter_password"/></p>
            <p>确认密码：<input type="password" class="al_confirm_password"/></p>
            <p>姓名：<input type="text" name="name" class="al_name"/>
            <p>手机号：<input type="text" name="phone" class="al_phone"/></p>
            <input type="submit" class="al_button" value="修改密码" />
        </form>
    </div>
    <div class="al_exit">
        <a href="login.jsp">返回首页</a>
    </div>
</div>
</body>
</html>

