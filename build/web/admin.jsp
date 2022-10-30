<%-- 
    Document   : admin
    Created on : Sep 29, 2022, 7:51:37 AM
    Author     : Trung Nguyen
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="sample.user.UserDTO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <body>
        <!--xac thuc phan quyen-->

        Welcome: <h1>${sessionScope.LOGIN_USER.fullName}</h1>
        
        
        <!--    <a href="MainController?action=Logout">Logout</a>   -->
        
        
        <!--    <form action="MainController">  
            <input type="submit" name="action" value="Logout"/>
        </form> -->
        
        
        <c:url var="logout" value="MainController">
            <c:param name="action" value="Logout">

            </c:param>
        </c:url>
        <a href="${logout}">Logout</a>
        
        <form action="MainController">
            Search<input type="text" name="search" value="${param.search}"/>
            <input type="submit" name="action" value="Search"/>
        </form>
            
                        
        <c:if test="${requestScope.LIST_USER != null}">
            <c:if test="${not empty requestScope.LIST_USER}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>User ID</th>
                            <th>Full name</th>
                            <th>Role ID</th>
                            <th>Password</th>
                            <th>Update</th>
                            <th>Delete</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="user" varStatus="counter" items="${requestScope.LIST_USER}">
                        <form action="MainController" method="POST">
                            <tr>
                                <td>${counter.count}</td>
                                <td>${user.userID}</td>
                                <td>
                                    ${user.fullName}
                                    <input type="text"  name="fullName" value="${user.fullName}"/>
                                </td>
                                <td>
                                    ${user.roleID}
                                    <input type="text"  name="roleID" value="${user.roleID}"/>
                                </td>
                                <td>
                                    ${user.password}
                                </td>
                                
                                <!--update-->
                                <td>
                                    <input type="submit" name="action" value="Update"/>
                                    <input type="hidden" name="userID" value="${user.userID}"/>
                                   <input type="hidden" name="search" value="${param.search}"/>
                                </td>
                                <!--delete-->
                                <td>
                                    <c:url var="delete" value="MainController">
                                        <c:param name="action" value="Delete"></c:param>
                                        <c:param name="userID" value="${user.userID}"></c:param>
                                        <c:param name="search" value="${param.search}"></c:param>
                                    </c:url>
                                    <a href="${delete}">Delete</a>
                                </td>
                            </tr>
                        </form>
                    </c:forEach>
                </tbody>
            </table>
            ${requestScope.ERROR}
        </c:if>
    </c:if>

</body>
</html>
