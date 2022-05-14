<%-- 
    Document   : updateProduct
    Created on : Apr 16, 2022, 10:54:14 AM
    Author     : TuanDung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
        <title>Product Maintenance</title>
    </head>
    <body>
        <h1>Product</h1>
        <span><i>You must enter a description for the product.</i></span>
        <br><br><br>
        <form action="updateProduct">
            <label>Product Code:</label>
            <input type="text" name="code"><br>
            <label>Description:</label>
            <input type="text" name="description"><br>
            <label>Product Price:</label>
            <input type="text" name="price"><br>
            <%
                if (request.getAttribute("err") != null) {
                    String error = (String) request.getAttribute("err");
            %>
            <h2> <%= error%> </h2>
            <%
                }
            %>
            <input type="submit" value="Update Product" style="margin-left: 1em; margin-top: 2em;">
        </form>
        <form action="productsPage">
            <input type="submit" value="View Product" style="margin-left: 1em; margin-top: 2em;">
        </form>
    </body>
</html>
