package com.Manaakitanga;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/SignupServlet")
public class SignupServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve user data from form
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String location = request.getParameter("location");
        String password = request.getParameter("password");

        // Debugging: print to console to ensure data is received correctly
        System.out.println("Received data: " + firstname + ", " + lastname + ", " + email);

        // Call DBUtil to save the user data
        try {
            DBUtil.saveUser(firstname, lastname, email, mobile, location, password);
            System.out.println("User saved successfully.");
            response.sendRedirect("signin.jsp"); // After successful signup, redirect to signin page
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to error page if something goes wrong
        }
    }
}
