<%@ page import="java.util.List" %>
<%@ page import="entity.Road" %><%--
Created by IntelliJ IDEA.
User: Stalary
Date: 17/5/9
Time: 下午10:45
To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8"  language="java" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
    <title>道路</title>
    <link rel="stylesheet" href="css/roadCSS.css" type="text/css"/>
    <link rel="stylesheet" href="css/mainCSS.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.1.1.js"></script>
</head>
<body>
<div class="main_body">
    <div class="ro_top">
        <div class="ro_title">
            <h1>道路状况</h1>
        </div>
    </div>
    <div class="ro_table">
        <table align="right" width="1050px" >
            <tr>
                <td align="center" colspan="2">
                    <h2>所有道路信息</h2>
                </td>
            </tr>
            <tr align="center">
                <td><b>编号</b></td>
                <td><b>操作</b></td>
            </tr>
            /**
            * @Description:从数据库中获取未预约的道路
            * @Author:Stalary
            * @Date 17/5/18 下午1:05
            * @Params:
            * @Return:
            */
            <%
                List<Road> listRoad = (List<Road>)session.getAttribute("list");
                for(Road road : listRoad) {
            %>
            <tr align="center">
                <td><%=road.getId()%></td>
                <td>
                    <input type="button" value="预约" onclick='put(<%=road.getId()%>)' />
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </div>
    <div class="ro_return">
        <input type="button" value="返回首页" class="ro_button" onclick=window.location.href="index.jsp"; />
    </div>
</div>
<script>
    function put(i) {
        location.href = "controller/ManagerServlet?type=预约&id="+i;
    }
</script>
</body>
</html>
