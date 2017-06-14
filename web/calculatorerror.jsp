<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 14.06.17
  Time: 17:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Ups!</title>
    <style>
        h2 {color: red; font-size: medium }
        p {color: red}
    </style>
</head>
<body>
<c:set var="proposal_operator" value="Please choose a correct operator (/ * + -)."/>
<c:set var="proposal_wrongVariable" value="Please set all variables to valid values!"/>
<c:choose>
    <c:when test="${param.error_code=='wrong_operator'}">
        <h2>ERROR: "<c:out value="${param.operator}"/>" ist not a valid operator! </h2>
        <p><c:out value="${proposal_operator}"/></p>
    </c:when>
    <c:when test="${param.error_code=='var1_empty'}">
        <h2>ERROR: Variable 1 ist not set! </h2>
        <p><c:out value="${proposal_wrongVariable}"/></p>
    </c:when>
    <c:when test="${param.error_code=='var2_empty'}">
        <h2>ERROR: Variable 2 ist not set! </h2>
        <p><c:out value="${proposal_wrongVariable}"/></p>
    </c:when>
    <c:when test="${param.error_code=='zero_division'}">
        <h2>ERROR: You are trying to divide by 0! </h2>
        <p><c:out value="${proposal_wrongVariable}"/></p>
    </c:when>
    <c:otherwise>
        <h2>ERROR!</h2>
        <p>But to be honest i have no idea what's wrong...</p>
    </c:otherwise>
</c:choose>
Just go <a href="calculator.jsp">back</a>!
</body>
</html>
