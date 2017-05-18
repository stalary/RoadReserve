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
<html>
<head>
    <title>道路</title>
    <link rel="stylesheet" href="css/managerRoadCSS.css" type="text/css"/>
    <link rel="stylesheet" href="css/mainCSS.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.1.1.js"></script>
</head>
<body>
<div class="main_body">
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
        /**
        * @Description:从数据库中获取道路记录
        * @Author:Stalary
        * @Date 17/5/18 下午1:05
        * @Params:
        * @Return:
        */
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

<script>
    function put(i) {
        location.href = "controller/AdminServlet?type=管理道路&id="+i;
    }
</script>
</html>
