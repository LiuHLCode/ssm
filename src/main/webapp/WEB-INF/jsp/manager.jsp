<%--
  Created by IntelliJ IDEA.
  User: 刘华龙
  Date: 2021/9/16
  Time: 19:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table width="601" border="1" cellspacing="0" cellpadding="0">
    <tr>
        <td width="120" align="center" valign="middle">序号</td>
        <td width="351" align="center">用户名</td>
    </tr>
    <c:forEach items="${list }" var="user">
        <tr>
            <td align="center">${user.u_id}</td>
            <td align="center">${user.username }</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
