package com.Manaakitanga;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/SigninServlet")
public class SigninServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve login data from form
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Debugging: print login info
        System.out.println("Attempting to log in user: " + email);

        // Validate user credentials using DBUtil
        boolean isValid = DBUtil.validateUser(email, password);

        if (isValid) {
            System.out.println("User authenticated successfully.");

            // Fetch the user's firstname from the database
            String firstname = DBUtil.getUserFirstNameByEmail(email);

            // Store the firstname in the session
            HttpSession session = request.getSession();
            session.setAttribute("firstname", firstname);

            // Set success message
            session.setAttribute("loginSuccessMessage", "Login successful! Welcome, " + firstname + ".");

            // Redirect to welcome page
            response.sendRedirect("home.jsp");
        } else {
            System.out.println("Invalid login credentials.");
            // Set error message in session
            HttpSession session = request.getSession();
            session.setAttribute("loginErrorMessage", "Invalid email or password. Please try again.");

            // Redirect back to signin page
            response.sendRedirect("signin.jsp");
        }
    }
}
