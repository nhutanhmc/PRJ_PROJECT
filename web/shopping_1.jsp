<%-- 
    Document   : shopping
    Created on : Oct 13, 2022, 8:07:00 AM
    Author     : Trung Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Page</title>
    </head>
    <body>
        <h1>Welcome My Happy Shop</h1>
        <form action="MainController">
            <select name="cmbTea">
                <option value="T01-Milk Tea-25">Milk Tea- 25$</option>
                <option value="T02-Latte Fresh Milk-25">Latte Fresh Milk- 25$</option>
                <option value="T03-Freeze-45">Freeze- 45$</option>
                <option value="T04-Soda Lemon-50">Soda Lemon- 50$</option>
                <option value="T05-Pink Lady-15">Pink Lady- 15$</option>
            </select>
            <select name="cmbQuantity">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
                <option value="10">10</option>
                <option value="20">20</option>
            </select>
            <input type="submit" name="action" value="Add"/>
            <input type="submit" name="action" value="View"/>
        </form>
    </body>
    ${requestScope.MESSAGE}
</html>
