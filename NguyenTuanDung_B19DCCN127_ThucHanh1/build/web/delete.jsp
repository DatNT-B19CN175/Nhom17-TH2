<%-- 
    Document   : delete
    Created on : Apr 16, 2022, 11:42:49 AM
    Author     : TuanDung
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Maintenance</title>
    </head>
    <body>
        <h1>Are you sure you want to delete this product?</h1>
        <form>
            <label>Product Code:</label><br>

            <label>Description:</label><br>

            <label>Product Price:</label><br>
            <input type="submit" value="Yes" style="margin-left: 1em; margin-top: 2em;">
        </form>
        <form action="productsPage">
            <input type="submit" value="No" style="margin-left: 1em; margin-top: 2em;">
        </form>
    </body>
</html>
