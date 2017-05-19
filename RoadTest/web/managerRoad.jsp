<%@ page import="entity.Road" %>
<%@ page import="java.util.List" %><%--
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
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- 上述3个meta标签*必须*放在最前面，任何其他内容都*必须*跟随其后！ -->
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <title>道路</title>
    <link rel="stylesheet" href="css/managerRoadCSS.css" type="text/css"/>
    <link rel="stylesheet" href="css/mainCSS.css" type="text/css"/>
</head>
<body>
<div class="container">
<div class="mg_ro_top">
    <div class="mg_ro_title">
        <h1>道路管理</h1>
    </div>
</div>
<div class="mg_ro_table">
    <table align="right" width="1050px" >
        <tr>
            <td align="center" colspan="3">
                <h2>所有道路信息</h2>
            </td>
        </tr>
        <tr align="center">
            <td><b>编号</b></td>
            <td><b>状态</b></td>
            <td><b>操作道路</b></td>
        </tr>
        <%
            List<Road> listRoad = (List<Road>)session.getAttribute("listRoad");
            for(Road road : listRoad) {
        %>
        <tr align="center">
            <td><%=road.getId()%></td>
            <td><%=road.getState()%></td>
            <td>
                <input type="button"  name="manager" value="删除记录" onclick='put(<%=road.getId()%>)' />
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
<div class="mg_ro_return">
    <input type="button" value="返回管理页面" class="mg_ro_button" onclick=window.location.href="manager.jsp"; />
</div>
</div>
</body>
<script src="js/bootstrap.min.js"></script>
<script src="js/jQuery-3.2.1.min.js"></script>
<script>
    function put(i) {
        location.href = "controller/AdminServlet?type=管理道路&id="+i;
    }
</script>
</html>
