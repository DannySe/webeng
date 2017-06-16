<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 14.06.17
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Calculator Results</title>
</head>
<body>
<br>
<h2>Calculator Results: </h2>
<p>Your math-task was: <c:out value="${sessionScope.calculator.var1}"/>
    <c:out value="${sessionScope.calculator.operator}"/>
    <c:out value="${sessionScope.calculator.var2}"/>
</p>
<p>My solution is: <c:out value="${sessionScope.calculator.result}"/></p>
<button onclick="location.href = 'calculator/formular.jsp';">Try again</button>
</body>
</html>
