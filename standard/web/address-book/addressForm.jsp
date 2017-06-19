<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 19.06.17
  Time: 11:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="addressBean" class="de.karlsruhe.dhbw.webeng.addressbook.Address"/>
<c:set var="id" value="${param.id}"/>
<jsp:setProperty name="addressBean" property="id" param="id"/>
<html>
<head>
    <title>Change Book</title>
    <style>
        table {border: solid black thin; border-collapse: collapse; margin: 0.5em; padding: 0.3em }
        tr, td {padding: 0.3em}
        .short_input {width: 4.5em}
        .middle_input {width: 8em}
        .long_input {width: 100%}
    </style>
</head>
<body>
<br>
<c:choose>
    <c:when test="${addressBean.validId}">
        <h2>Contact-Form</h2>
        <form>
            <table>
                <tr>
                    <td><label for="title">Title: </label></td>
                    <td>
                        <select class="short_input" id="title" name="title">
                            <option value="Herr">Herr</option>
                            <option value="Frau">Frau</option>
                            <option value="Prof.">Prof.</option>
                            <option value="Dr.">Dr.</option>
                        </select>
                    </td>
                    <td><label for="christianname">First Name:</label></td>
                    <td><input class="middle_input" id="christianname" type="text" name="christianname" value="${addressBean.christianname}"></td>
                    <td><label for="name">Last Name:</label></td>
                    <td><input id="name" type="text" name="name" value="${addressBean.name}"></td>
                </tr>
                <tr>
                    <td><label for="phone">Telephone: </label></td>
                    <td><input class="short_input" id="phone" type="text" name="phone" value="${addressBean.phone}"></td>
                    <td><input class="middle_input" id="mobile" type="text" name="mobile" value="${addressBean.mobile}"></td>
                    <td><label for="email">Email: </label></td>
                    <td colspan="2"><input class="long_input" id="email" type="text" name="email" value="${addressBean.email}"></td>
                </tr>
                <tr>
                    <td><label for="number">Number: </label></td>
                    <td><input class="short_input" id="number" type="text" name="number" value="${addressBean.number}"></td>
                    <td><label for="street">Street: </label></td>
                    <td><input class="middle_input" id="street" type="text" name="street" value="${addressBean.street}"></td>
                    <td><label for="city">City: </label></td>
                    <td><input id="city" type="text" name="city" value="${addressBean.city}"></td>
                </tr>
                <tr>
                    <td><label for="zip">ZIP: </label></td>
                    <td><input class="short_input" id="zip" type="number" name="zip" value="${addressBean.postcode}"></td>
                    <td><label for="country">Country: </label></td>
                    <td><input class="middle_input" id="country" type="text" name="country" value="${addressBean.country}"></td>
                    <td><label for="bdate">Birthday: </label></td>
                    <td><input  class="long_input" id="bdate" type="text" name="bdate" value="${addressBean.birthday}"></td>
                </tr>
            </table>
            <input type="button" onclick="location.href='addressDetail.jsp?id=${param.id}'" value="Back">
            <!--TODO: add button functionality-->
            <input type="button" value="Save changes">
        </form>
    </c:when>
    <c:otherwise>
        <h2>There is no such Contact!</h2>
        <p>Wanna create a new Contact?</p>
        <br>
        <!--TODO: add button functionality-->
        <input type="button" value="New Contact">
    </c:otherwise>
</c:choose>
</body>
</html>
