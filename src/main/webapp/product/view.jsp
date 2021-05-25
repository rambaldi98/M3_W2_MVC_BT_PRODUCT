<%--
  Created by IntelliJ IDEA.
  User: RAMBALDI
  Date: 5/25/2021
  Time: 7:17 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View Product</title>
</head>
<body>
<h1>Product details</h1>
<p>
    <a href="/products-manager">Back to products list</a>
</p>
<table>
    <tr>
        <td>ID :</td>
        <td>${requestScope["product"].getId()}</td>
    </tr>
    <tr>
        <td>Name :</td>
        <td>${requestScope["product"].getName()}</td>
    </tr>
    <tr>
        <td>Price :</td>
        <td>${requestScope["product"].getPrice()}</td>
    </tr>
    <tr>
        <td>Description :</td>
        <td>${requestScope["product"].getDescription()}</td>
    </tr>
    <tr>
        <td>Manufacturer :</td>
        <td>${requestScope["product"].getManufacturer()}</td>
    </tr>
</table>
</body>
</html>
