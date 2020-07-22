<%@ page import="com.muha.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: MUHAIRIZ MAULID
  Date: 22/07/2020
  Time: 17:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:setProperty property="*" name="u"/>
<html>
<head>
    <title>Delete</title>
</head>
<body>
<%
    UserDao.delete(u);
    response.sendRedirect("viewusers.jsp");
%>
</body>
</html>
