<%@ page import="com.muha.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: MUHAIRIZ MAULID
  Date: 22/07/2020
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<jsp:useBean id="u" class="com.muha.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
    int i= UserDao.update(u);
    response.sendRedirect("viewusers.jsp");
%>

</body>
</html>
