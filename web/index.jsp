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
    <li>Hallo du da: <a href="/halloduda">Link 1</a>, <a href="/halloduda2">Link 2</a> or <a href="halloDuDa.jsp">Link 3</a></li>
    [Links 1 and 2 are 2 instances of the same Servlet. One is mapped with @Webservlet Annotation (/halloduda) and instanciated on a call.
      The other is mapped with web.xml and instanciated on server startup. Link 3 is a JSP-Version]
    <li><a href="fibonacci.jsp">Fibonacci numbers</a></li>
    <li><a href="calculator/formular.jsp">Calculator</a></li>
    <li><a href="counter/counter.jsp">Counter for Scope</a></li>
    <li><a href="formular.jsp">Address-Form</a></li>
  </ul>
  </body>
</html>
