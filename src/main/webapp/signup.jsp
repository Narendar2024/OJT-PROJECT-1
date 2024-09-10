<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Signup</title>
</head>
<body>
    <h2>Signup Form</h2>
    <form action="SignupServlet" method="post">
        <label for="firstname">First Name:</label>
        <input type="text" name="firstname" required><br>
        <label for="lastname">Last Name:</label>
        <input type="text" name="lastname" required><br>
        <label for="email">Email:</label>
        <input type="email" name="email" required><br>
        <label for="mobile">Mobile:</label>
        <input type="text" name="mobile" required><br>
        <label for="location">Location:</label>
        <input type="text" name="location" required><br>
        <label for="password">Password:</label>
        <input type="password" name="password" required><br>
                If have an Account already<a href="signin.jsp">Sign In</a><br>
        
        <button type="submit">Signup</button>
        
    </form>
</body>
</html>
