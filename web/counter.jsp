<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 15.06.17
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Scope counter</title>
</head>
<body>
<jsp:useBean id="myPageCounter" class="de.karlsruhe.dhbw.webeng.counter.CounterBean" scope="page"/>
<jsp:useBean id="myRequestCounter" class="de.karlsruhe.dhbw.webeng.counter.CounterBean" scope="request"/>
<jsp:useBean id="mySessionCounter" class="de.karlsruhe.dhbw.webeng.counter.CounterBean" scope="session"/>
<jsp:useBean id="myApplicationCounter" class="de.karlsruhe.dhbw.webeng.counter.CounterBean" scope="application"/>
<c:set var="p"> <%= myPageCounter.getCounter()%></c:set>
<c:set var="r"> <%= myRequestCounter.getCounter()%></c:set>
<c:set var="s"> <%= mySessionCounter.getCounter()%></c:set>
<c:set var="a"> <%= myApplicationCounter.getCounter()%></c:set>
<% if (request.getParameter("pressed") != null) { %>
    <jsp:forward page="requestCounter.jsp"/>
<% } %>
<h3>Page Scope</h3>
<c:out value="${p}"/>
<h3>Request Scope</h3>
<c:out value="${r}"/>
<h3>Session Scope</h3>
<c:out value="${s}"/>
<h3>Application Scope</h3>
<c:out value="${a}"/>
<form action="counter.jsp">
    <input type="submit" name="pressed" value="Forward me"/>
</form>

</body>
</html>
