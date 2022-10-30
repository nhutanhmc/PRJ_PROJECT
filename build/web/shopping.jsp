<%-- 
    Document   : shopping
    Created on : Oct 13, 2022, 8:07:00 AM
    Author     : Trung Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="sample.tea.TeaDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Page</title>
    </head>
    <body>
        <h1>Welcome My Happy Shop</h1>
        <c:url var="logout" value="MainController">
            <c:param name="action" value="Logout">

            </c:param>
        </c:url>
        <a href="${logout}">Logout</a>

        <form action="MainController">
            Search<input type="text" name="SearchProduct" value="${param.SearchProduct}"/>
            <input type="submit" name="action" value="SearchProduct"/>
        </form>


        <c:if test="${requestScope.LIST_TEA != null}">
            <c:if test="${not empty requestScope.LIST_TEA}">
                <form action="MainController" method="POST">
                    <table border="1">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Product ID</th>
                                <th>Name</th>
                                <th>Price</th>
                                <th>Quantity now</th>
                                <th>Select quantity</th>

                            </tr>
                        </thead>
                        <tbody>
                            <c:forEach var="tea" varStatus="counter" items="${requestScope.LIST_TEA}">
                            <form action="MainController" method="POST">
                                <tr>
                                    <td>${counter.count}</td>
                                    <td>${tea.productID}</td>
                                    <td>
                                        ${tea.name}
                                    </td>
                                    <td>
                                        ${tea.price}
                                    </td>
                                    <td>
                                        ${tea.quantity}
                                    </td>
                                    <td>
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
                                    </td>                                               
                                </tr>

                            </c:forEach>
                            </tbody>
                    </table>
                </form>
                
                <c:url var="add" value="MainController">
                    <c:param name="action" value="Add">

                    </c:param>
                </c:url>
                <a href="${add}">Add</a>        
                <c:url var="view" value="MainController">
                    <c:param name="action" value="View">

                    </c:param>
                </c:url>
                <a href="${view}">View</a>
                
                

            </c:if>
        </c:if>

    </body>
    ${requestScope.MESSAGE}
</html>
