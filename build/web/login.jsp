<%-- 
    Document   : login
    Created on : Sep 29, 2022, 7:50:08 AM
    Author     : Trung Nguyen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Login Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CSS/capcha.css">
    </head>
<!--    <body>
        <form onsubmit="validateCaptcha()" action="MainController" method="POST" >
            User ID<input type="text" name="userID"/><br/>
            Password<input type="password" name="password"/><br/>
            <input type="reset" value="Reset"/>
            <input type="submit" name="action" value="Login"/>       
        </form>
        <a href="create.jsp">Create User</a><br/>
        <h1>${requestScope.ERROR}</h1>               
    </body>-->
    
    <body onload="createCaptcha()">
        <form onsubmit="validateCaptcha()" action="MainController" method="POST" >
            User ID<input type="text" name="userID"/><br/>
            Password<input type="password" name="password"/><br/>
            <input type="reset" value="Reset"/>
            <div id="captcha">
            </div>
            <input type="text" placeholder="Captcha" id="cpatchaTextBox"/>
            <button type="submit">Submit</button>
            <input type="submit" name="action" value="Login"/> 
        </form>
        <a href="create.jsp">Create User</a><br/>
        <h1>${requestScope.ERROR}</h1> 
        <script src="JS/capcha.js"></script>
    </body>
</html>
