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
    String error = (String)request.getAttribute("error");
%>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>登陆界面</title>
    <link rel="stylesheet" href="css/loginCSS.css" type="text/css"/>
    <link rel="stylesheet" href="css/mainCSS.css" type="text/css"/>
</head>
<body>
<div class="container">
    <div class="lg_top">
        <div class="lg_title">
            <h1>道路预约系统</h1>
            <h2>——Design by stalary's group</h2>
            <marquee><h3 class="lg_scroll">欢迎使用本系统，若有问题请联系我们</h3></marquee>
        </div>
    </div>
    <div class="lg_main">
        <div class="lg_left">
            <h2>本系统面向对象</h2>
            <ul>
                <li>应急车辆</li>
                <li>校车</li>
                <li>私家车</li>
            </ul>
            <h2>本系统管理员</h2>
            <ul>
                <li>交通管理部门</li>
            </ul>
        </div>
        <div class="lg_center">
            <h2>本系统已支持的城市</h2>
            <ul>
                <li>泰安</li>
                <li>临沂</li>
                <li>聊城</li>
                <li>烟台</li>
                <li>菏泽</li>
                <li>威海</li>
            </ul>
        </div>
        <div class="lg_right">
            <h2>登陆</h2>
            <form action="controller/LoginServlet" method="post">
                <p style="color: #ff0c46">帐号/密码错误,请重试</p>
                <p>账号：<input type="text" name="account" class="lg_account" placeholder="手机号／邮箱"/></p>
                <p>密码：<input type="password" name="password" class="lg_password"/></p>
                <p>管理员：<input type="radio" checked="checked" value="admin" class="lg_radio" name="radio"/>
                    用户：<input type="radio" value="user" class="lg_radio" name="radio"/></p>
                <input type="submit" class="lg_submit" value="登陆" />
                <a href="alter.jsp"><p>忘记密码</p></a>
                <a href="register.jsp"><p>立即注册</p></a>
            </form>
        </div>
        <div class="lg_bottom">
            <p>联系我们：
                <a href="mailto:stalary@163.com">邮箱：stalary@163.com</a>
                QQ：452024236&nbsp联系电话：17853149599
        </div>
    </div>
</div>
<script src="js/bootstrap.min.js"></script>
<script src="js/jQuery-3.2.1.min.js"></script>
</body>
</html>
