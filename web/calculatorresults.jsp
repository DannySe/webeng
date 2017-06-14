<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 14.06.17
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" errorPage="calculatorerror.jsp" import="java.lang.Math.*" %>
<%@ page import="static java.lang.Double.valueOf" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Calculator Results</title>
    <style>
        p {font-size: x-large}
    </style>
</head>
<body>
<c:set var="var1" value="${param.var1}" scope="application" />
<c:set var="var2" value="${param.var2}" scope="application"/>
<h1>Calculator Results: </h1>
<p>Your math-task "
    <%--Check Variable 1--%>
    <c:if test="${empty var1}">
        <jsp:forward page="calculatorerror.jsp">
            <jsp:param name="error_code" value="var1_empty"/>
        </jsp:forward>
    </c:if>
    <%-- Check Variable 2 --%>
    <c:if test="${empty var2}">
        <jsp:forward page="calculatorerror.jsp">
            <jsp:param name="error_code" value="var2_empty"/>
        </jsp:forward>
    </c:if>
    <c:out value="${var1}"/>
    <%--Check Operator--%>
    <c:choose>
        <c:when test="${param.operator == '/'}">
            geteilt durch
            <c:if test="${var2 == 0}">
                <jsp:forward page="calculatorerror.jsp">
                    <jsp:param name="error_code" value="zero_division"/>
                </jsp:forward>
            </c:if>
            <c:set var="result" value="${var1 div var2}"/>
        </c:when>
        <c:when test="${param.operator == '*'}">
            multipliziert mit
            <c:set var="result" value="${var1 * var2}"/>
        </c:when>
        <c:when test="${param.operator == '+'}">
            plus
            <c:set var="result" value="${var1 + var2}"/>
        </c:when>
        <c:when test="${param.operator == '-'}">
            minus
            <c:set var="result" value="${var1 - var2}"/>
        </c:when>
        <c:when test="${param.operator == '^'}">
            hoch
            <% Double a = new Double(request.getParameter("var1"));
            Double b = new Double(request.getParameter("var2"));
            double res = Math.pow(a,b);
            %>
            <c:set var="result"><%= res %></c:set>
        </c:when>
        <c:otherwise>
            <jsp:forward page="calculatorerror.jsp">
                <jsp:param name="error_code" value="wrong_operator"/>
                <jsp:param name="operator" value="${param.operator}"/>
            </jsp:forward>
        </c:otherwise>
    </c:choose>
    <c:out value="${var2}"/>
    " results in <c:out value="${result}"/>
</p>
<button onclick="location.href = 'calculator.jsp';">Try again</button>
</body>
</html>
