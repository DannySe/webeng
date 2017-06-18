<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 14.06.17
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Fibonacci-Numbers</title>
    <style>
        table, td, th { border: 1px solid black; }
    </style>
</head>
<body>
<h3>Which numbers would you like to start with?</h3>
<form action="fibonacci.jsp" method="post">
    F0: <input type="number" name="f0"> <br>
    F1: <input type="number" name="f1">
    <input type="submit" value="Generate">
</form>
<c:choose>
    <c:when test="${empty param.f0 || empty param.f1}">
        <p> You will see your table here!</p>
    </c:when>
    <c:otherwise>
        <c:set var="f0" value="${param.f0}"/>
        <c:set var="f1" value="${param.f1}"/>
        <table>
            <tr>
                <th>Number</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>F0</td>
                <td><c:out value="${f0}" /></td>
            </tr>
            <tr>
                <td>F1</td>
                <td><c:out value="${f1}" /></td>
            </tr>
            <c:forEach var="i" begin="2" end="20" step="1" varStatus="s">
                <tr>
                    <c:set var="fnew" value="${f0+f1}" />
                    <td>F<c:out value="${s.getIndex()}"/></td>
                    <td><c:out value="${fnew}"/></td>
                    <c:set var="f0" value="${f1}"/>
                    <c:set var="f1" value="${fnew}"/>
                </tr>
            </c:forEach>
        </table>
    </c:otherwise>
</c:choose>
</body>
</html>
