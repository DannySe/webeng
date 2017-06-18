<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 18.06.17
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="addressList" class="de.karlsruhe.dhbw.webeng.addressbook.AddressList" scope="session"/>
<jsp:useBean id="addressBean" class="de.karlsruhe.dhbw.webeng.addressbook.Address" scope="session"/>
<c:set var="searchParam" scope="session" value="${param.search}"/>
<jsp:setProperty name="addressList" property="searchString" param="search"/>
<c:set var="resultList" value="${addressList.addressList}"/>
<html>
<head>
    <title>Address Overview</title>
    <style>
        table, td {border: solid thin black; border-collapse: collapse; padding: 0.5em}
    </style>
</head>
<body>
<br>
<h2>Your Address Book</h2>
<form>
    <table>
        <thead>
        <tr>
            <td>#</td>
            <td>First Name</td>
            <td>Last Name</td>
            <td>Email</td>
            <td></td>
            <td></td>
        </tr>
        </thead>
        <tbody>
            <c:forEach items="${resultList}" var="address" varStatus="i">
                <tr>
                    <td>${i.index + 1}</td>
                    <td>${address.christianname}</td>
                    <td>${address.name}</td>
                    <td>${address.email}</td>
                    <td><button>Details</button></td>
                    <td><button>Delete</button></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br>
    <button>New address</button>
</form>
</body>
</html>
