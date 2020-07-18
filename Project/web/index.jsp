<%--
  Created by IntelliJ IDEA.
  User: MUHAIRIZ MAULID
  Date: 15/07/2020
  Time: 16:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Register</title>
  </head>
  <body>
    <form action="Servlet1" method="post">
        Name <input type="text" name="name"><br>
        Registration Number <input type="text" name="regno"><br>
        Grade <input type="text" name="grade"><br>
        Phone Number <input type="text" name="phone"><br>
        Email <input type="text" name="email"><br>
        Male <input type="radio" name="gender" value="male">
        Female <input type="radio" name="gender" value="female"><br>
        Choose Semester Information <select name="seminfo">
        <option value="Semester 1">Semester 1</option>
        <option value="Semester 2">Semester 2</option>
        <option value="Semester 3">Semester 3</option>
        </select>
        <button type="submit" name="button">SUBMIT</button>

    </form>
  </body>
</html>
