<%-- 
    Document   : create
    Created on : Oct 10, 2022, 7:43:32 AM
    Author     : Trung Nguyen
--%>

<%@page import="sample.user.UserError"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create Page</title>
    </head>
    <body>
        <h1>Input your information</h1>
        <form action="MainController" method="POST">
            User ID<input type="text" name="userID" required="" />
            ${requestScope.USER_ERROR.userID}</br>
            Full Name<input type="text" name="fullName" required="" />
            ${requestScope.USER_ERROR.fullName}</br>
            Role ID<input type="text" name="roleID" value="US" readonly="" /></br>
            Password<input type="text" name="password" required="" /></br>
            Confirm<input type="text" name="confirm" required="" />
            ${requestScope.USER_ERROR.confirm}</br>
            <input type="submit" name="action" value="Create" />
            <input type="reset" value="Reset" />
        </form>     
    </body>
</html>
