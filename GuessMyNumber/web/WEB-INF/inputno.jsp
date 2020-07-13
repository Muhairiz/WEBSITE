<%@ page import="static jdk.vm.ci.meta.JavaKind.Int" %><%--
  Created by IntelliJ IDEA.
  User: MUHAIRIZ MAULID
  Date: 12/07/2020
  Time: 14:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
<head>
    <title>input</title>
</head>
<body>
    <% session.setAttribute("message","please guess");
    HttpSession session1=request.getSession(true);
    int random=(int) (Math.random()*100)+1;
    session.setAttribute("saveNumber", random);
    %>
<p>Visit this site</p><br>
Click the link
<a href="inputno.jsp">Guess number</a>

</body>
</html>
