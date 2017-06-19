<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 18.06.17
  Time: 20:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<jsp:useBean id="addressBean" class="de.karlsruhe.dhbw.webeng.addressbook.Address"/>
<html>
<head>
    <title>Detailed View</title>
    <style>
        table, td {border: solid thin black; border-collapse: collapse; padding: 0.5em}
    </style>
</head>
<body>
<jsp:setProperty name="addressBean" property="id" param="id"/>
<c:choose>
    <c:when test="${addressBean.validId}">
        <br>
        <h2>Detailed view for Contact "${addressBean.christianname} ${addressBean.name}"</h2>
        <table>
            <tr>
                <td>Full Name </td>
                <td colspan="3">${addressBean.addressform} ${addressBean.christianname} ${addressBean.name}</td>
            </tr>
            <tr>
                <td>Email</td>
                <td>${addressBean.email}</td>
                <td>Telephone</td>
                <td>${addressBean.phone} ${addressBean.mobile}</td>
            </tr>
            <tr>
                <td>Street</td>
                <td>${addressBean.street}</td>
                <td>Number</td>
                <td>${addressBean.number}</td>
            </tr>
            <tr>
                <td>City</td>
                <td>${addressBean.postcode} ${addressBean.city}</td>
                <td>Country</td>
                <td>${addressBean.country}</td>
            </tr>            <tr>
                <td>Birthday</td>
                <td colspan="3">${addressBean.birthday}</td>
            </tr>
        </table>
        <br>
        <input type="button" onclick="location.href='addressForm.jsp?id=${param.id}'" value="Edit">
        <input type="button" onclick="location.href='addressList.jsp'" value="Back">
        <!--TODO: add button functionality-->
        <input type="button" value="Delete">
    </c:when>
    <c:otherwise>
        <h2>No such user!</h2>
        <p>Looks like someone was trying to manipulate my links, huh?</p>
    </c:otherwise>
</c:choose>
</body>
</html>
