<%@ page import="java.util.List" %>
<%@ page import="entity.Reserve" %><%--
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
    <title>预约记录</title>
    <link rel="stylesheet" href="css/managerRecordCSS.css" type="text/css"/>
    <link rel="stylesheet" href="css/mainCSS.css" type="text/css"/>
    <script type="text/javascript" src="js/jquery-3.1.1.js"></script>
</head>
<body>
<div class="main_body">
<div class="mg_re_top">
    <div class="mg_re_title">
        <h1>预约管理</h1>
    </div>
</div>
<div class="mg_re_table">
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
        * @Description:从数据库中获取预约记录
        * @Author:Stalary
        * @Date 17/5/18 下午1:05
        * @Params:
        * @Return:
        */
        <%
            List<Reserve> listReserve = (List<Reserve>)session.getAttribute("listReserve");
            for(Reserve reserve : listReserve) {
        %>
        <tr align="center">
            <td><%=reserve.getName()%></td>
            <td><%=reserve.getId()%></td>
            <td>
                <input type="button"  name="manager" value="删除记录" onclick='put(<%=reserve.getId()%>)' />
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
<div class="mg_re_return">
    <input type="button" value="返回管理页面" class="mg_re_button" onclick=window.location.href="manager.jsp"; />
</div>
</div>
<script>
    function put(i) {
        location.href = "controller/AdminServlet?type=管理预约&id="+i;
    }
</script>
</body>
</html>