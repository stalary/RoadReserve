<%@ page import="entity.Reserve" %>
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
    <title>预约</title>
    <link rel="stylesheet" href="css/reserveCSS.css" type="text/css"/>
    <link rel="stylesheet" href="css/mainCSS.css" type="text/css"/>
</head>
<body>
<div class="container">
<div class="re_top">
    <div class="re_title">
        <h1>预约</h1>
    </div>
</div>
<div class="re_table">
    <table align="right" width="1050px" >
        <tr>
            <td align="center" colspan="2">
                <h2>所有预约信息</h2>
            </td>
        </tr>
        <tr align="center">
            <td><b>用户名</b></td>
            <td><b>道路编号</b></td>
        </tr>
        <%
            List<Reserve> listReserve = (List<Reserve>)session.getAttribute("list");
            for(Reserve reserve : listReserve) {
        %>
        <tr align="center">
            <td><%=reserve.getName()%></td>
            <td><%=reserve.getId()%></td>
            <td>
                <input type="button" value="取消预约" onclick='put(<%=reserve.getId()%>)' />
            </td>
        </tr>
        <%
            }
        %>
    </table>
</div>
<div class="re_return">
    <input type="button" value="返回首页" class="re_button" onclick=window.location.href="index.jsp"; />
</div>
</div>
<script src="js/bootstrap.min.js"></script>
<script src="js/jQuery-3.2.1.min.js"></script>
<script>
function put(i) {
location.href = "controller/ManagerServlet?type=预约&id="+i;
}
</script>
</body>
</html>
