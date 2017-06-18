<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 14.06.17
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<jsp:useBean id="calculator" class="de.karlsruhe.dhbw.webeng.calculator.CalculatorBean" scope="session"/>
<html>
<head>
    <title>Calculator</title>
    <style>
        .error {font-size: larger; color: darkred}
    </style>
</head>
<body>
<br>
<h3>Here is a self-made calculator</h3>
<form action="/check" method="get">
    <table>
        <tr>
            <td><label for="var1">First Number</label></td>
            <td><input type="text" name="var1" id="var1" value="${param.var1}"></td>
            <td class="error"><c:out value="${calculator.errorMessageFirstNumber}"/></td>
        </tr>
        <tr>
            <td><label for="operator">Operator</label></td>
            <td><input type="text" name="operator" id="operator" value="${param.operator}"></td>
            <td class="error"><c:out value="${calculator.errorMessageOperator}"/></td>
        </tr>
        <tr>
            <td><label for="var2">Second Number</label></td>
            <td><input type="text" name="var2" id="var2" value="${param.var2}"></td>
            <td class="error"><c:out value="${calculator.errorMessageSecondNumber}"/></td>
        </tr>
    </table>
    <br>
    <input type="submit" value="Calculate" name="isSubmitted">
</form>
</body>
</html>
