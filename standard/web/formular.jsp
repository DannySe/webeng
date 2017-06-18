<%--
  Created by IntelliJ IDEA.
  User: dannynator
  Date: 16.06.17
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Address Form</title>
    <style>
        table {border: solid black thin; border-collapse: collapse; margin: 0.5em; padding: 0.3em }
        tr, td {padding: 0.3em}
        div {background-color: lightseagreen; border: solid darkslateblue thin;
            margin: 0.5em; padding: 0.5em; display: inline-block; text-align: center}
        .short_input {width: 3.5em}
        .long_input {width: 100%}
    </style>
</head>
<body>
<br>
<h2 id="test">Address-Sticker modelling</h2>
<form name="addressform">
    <table>
        <!-- title, first name -->
        <tr>
            <td><label for="title">Title</label></td>
            <td>
                <select name="title" id="title">
                    <option value="Ms.">Ms.</option>
                    <option value="Mrs.">Mrs.</option>
                    <option value="Mr.">Mr.</option>
                    <option value="Dr.">Dr.</option>
                    <option value="Prof.">Prof.</option>
                </select>
            </td>
            <td><label for="fname">First Name</label></td>
            <td><input name="fname" id="fname" type="text"></td>
        </tr>
        <!-- last name -->
        <tr>
            <td><label for="lname">Last Name</label></td>
            <td colspan="3"><input  class="long_input" name="lname" id="lname" type="text"></td>
        </tr>
        <!-- street, number-->
        <tr>
            <td><label for="number">Housenumber</label></td>
            <td><input class="short_input" name="number" id="number" type="text"></td>
            <td><label for="street">Street</label></td>
            <td><input name="street" id="street" type="text"></td>
        </tr>
        <!-- ZIP, City -->
        <tr>
            <td><label for="zip">ZIP code</label></td>
            <td><input class="short_input" name="zip" id="zip" type="number"></td>
            <td><label for="city">City</label></td>
            <td><input name="city" id="city" type="text"></td>
        </tr>
        <!-- Phonenumber -->
        <tr>
            <td><label for="phone">Phonenumber</label></td>
            <td colspan="3"><input class="long_input" name="phone" id="phone" type="tel"></td>
        </tr>
    </table>

    <!--Address Tag Span-->
    <div>
        <p>
            <span id="ltitle">Prof.</span>
            <span id="lfname">Ivanka</span>
            <span id="llname">Trump</span>
        </p>
        <p>
            <span id="lstreet" >Goldstreet</span>
            <span id="lnumber">Trump Tower</span>
        </p>
        <p>
            <span id="lzip">76843</span>
            <span id="lcity">New York</span>
        </p>
        <p>
            Telephone:
            <span id="lphone">+7 916 786 34 25</span>
        </p>
    </div>
</form>
</body>
<script type="text/javascript" src="addressSticker.js"></script>
</html>
