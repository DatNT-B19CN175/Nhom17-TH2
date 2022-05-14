<%-- 
    Document   : displayProducts
    Created on : Apr 16, 2022, 10:22:10 AM
    Author     : TuanDung
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="music.business.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Maintenance</title>
    </head>
    <body>
        <h1>Products</h1>
        <form action="updateProduct.jsp">
            <table border="1px">
                <tr>
                    <th>Code</th>
                    <th>Description</th>
                    <th>Price</th>

                </tr>
                <%
                    ArrayList<Product> list = (ArrayList<Product>) request.getAttribute("list");
                    for(Product i: list){

                %>    
                <tr>
                    <td><%= i.getCode()%></td>
                    <td><%= i.getDescription()%></td>
                    <td><%= "$"+i.getPrice()%></td>
                    <td><a href="updateProduct.jsp">Edit</a></td>
                    <td><a href="delete.jsp">Delete</a></td>
                </tr>
                <%   
                    }
                %>
            </table>
            <input type="submit" value="Add Product" style="margin-left: 1em; margin-top: 2em;">
        </form>
        </
    </body>
</html>
