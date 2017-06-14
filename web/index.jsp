<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 10.06.17
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Collection</title>
  </head>
  <body>
  <h1>Exercise Collection</h1>
  <ul>
    <li>Hallo du da: <a href="/halloduda">/halloduda</a> or <a href="/halloduda2">/halloduda2</a> </li>
    [These are 2 instances of the same Servlet. One is mapped with @Webservlet Annotation (/halloduda) and instanciated on a call.
      The other is mapped with web.xml and instanciated on server startup.]
    <li>Fibonacci: <a href="fibonacci.jsp">fibonacci.jsp</a></li>
    <li>Calculator: <a href="calculator.jsp">Simple jsp-Version</a></li>
  </ul>
  </body>
</html>
