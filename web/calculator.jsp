<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 14.06.17
  Time: 17:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<h3>Here is a self-made calculator</h3>
<form action="calculatorresults.jsp" method="get">
    Choose your first number: <br>
    <input type="number" name="var1"><br>
    Choose your operator: <br>
    <input type="text" name="operator"><br>
    Choose your second number: <br>
    <input type="number" name="var2"><br>
    <input type="submit" value="Calculate">
</form>
</body>
</html>
