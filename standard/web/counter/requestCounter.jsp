<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 15.06.17
  Time: 19:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>request Counter</title>
</head>
<body>
<c:set var="r" value="${requestScope.myRequestCounter.getCounter()}"/>
<% if (request.getParameter("pr") != null) { %>
<jsp:forward page="counter.jsp"/>
<% } %>
<h2>Yeah, there is a whole extra page for request Scope.</h2>
<p>Request Scope: <c:out value="${r}"/> </p>
<br>
<form action="requestCounter.jsp">
    <input type="submit" name="pr" value="Forward me"/>
</form>
</body>
</html>
