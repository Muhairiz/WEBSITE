<%@ page import="com.muha.UserDao" %><%--
  Created by IntelliJ IDEA.
  User: MUHAIRIZ MAULID
  Date: 22/07/2020
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="u" class="com.muha.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
<%
    int i= UserDao.save(u);
    if(i>0){
        response.sendRedirect("adduser-success.jsp");
    }else{
        response.sendRedirect("adduser-error.jsp");
    }
%>
