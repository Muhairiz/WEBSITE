<%--
  Created by IntelliJ IDEA.
  User: MUHAIRIZ MAULID
  Date: 12/07/2020
  Time: 13:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
  <%
  String message = (String)session.getAttribute("message");
  %>
  <p>I'm thinking of a number between 1 and 100. Guess what it is</p>
  <form action="HandleGuess" method="post">
    Enter the Guess Number<label>
    <input type="text" name="guessno" size="10">
  </label><br>
    <%=message%>
    <input type="submit" value="SUBMIT">
  </form>

  <form action="index.jsp" method="post">
    <input type="submit" value="Get new number">
  </form>

  </body>
</html>
