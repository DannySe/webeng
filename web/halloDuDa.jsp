<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 18.06.17
  Time: 09:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Wirkung des html-kommentars -->
<%-- Wirkung des jsp-kommentars --%>
<c:set var="fname" value="du da" />
<c:choose>
    <c:when test="${counter == null}">
        <c:set var="counter" value="${0}" scope="application"/>
    </c:when>
    <c:otherwise>
        <c:set var="counter" value="${counter + 1}" scope="application"/>
    </c:otherwise>
</c:choose>
<head>
    <title>Hello Pretty</title>
</head>
<body>
<br>
<c:if test="${!empty param.firstname}">
    <c:set var="fname" value="${param.firstname}"/>
</c:if>
<h2>Hallo <c:out value="${fname}"/></h2>
<br>
<form action="halloDuDa.jsp" method="get">
    <label for="firstname">What's your name?</label>
    <input id="firstname" type="text" name="firstname"/>
    <input type="submit" value="Say Hello" />
</form>
<br>
<p style="font-size: medium">By the way! This page has been called
    <b><c:out value="${applicationScope.counter}"/></b> times!</p>
</body>
</html>
