<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Manaakitanga</title>
</head>
<body>
    <h1>Welcome to Manaakitanga</h1>

    <%
        //HttpSession session = request.getSession(false);
        if (session != null) {
            String firstname = (String) session.getAttribute("firstname");
            if (firstname != null) {
                out.print("Hello, " + firstname + "!");
    %>
                <!-- Display the Logout button if the user is logged in -->
                <form action="LogoutServlet" method="get">
                    <button type="submit">Logout</button>
                </form>
    <%
            } else {
                out.print("Hello, Guest!");
            }
        } else {
            out.print("Hello, Guest!");
        }
    %>

</body>
</html>
