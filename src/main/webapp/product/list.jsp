<%--
  Created by IntelliJ IDEA.
  User: RAMBALDI
  Date: 5/25/2021
  Time: 7:19 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Simple Data Table</title>

</head>
<body>
              <a href="/products-manager?action=create"><h3>Create new product</h3></a>

              <form method="post">

                <input type="text" name="nameProduct" id="nameProduct" placeholder="Search product by name">
                <input id="search" type="submit" value="Search">
              </form>
      <table>
        <tr>
          <th>ID</th>
          <th>Name</th>
          <th>Price</th>
          <th>Description</th>
          <th>Manufacturer</th>
          <th>Actions</th>
        </tr>
        <br><br>
        <c:forEach items='${requestScope["products"]}' var="product">
          <tr>
            <td>${product.getId()}</td>
            <td>${product.getName()}</td>
            <td>${product.getPrice()}</td>
            <td>${product.getDescription()}</td>
            <td>${product.getManufacturer()}</td>
            <td>
              <a href="/products-manager?action=view&id=${product.getId()}">view</a>
              <a href="/products-manager?action=edit&id=${product.getId()}">edit</a>
              <a href="/products-manager?action=delete&id=${product.getId()}">delete</a>
            </td>
          </tr>
        </c:forEach>
      </table>


</body>
</html>
