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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve login data from form
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Debugging: print login info
        System.out.println("Attempting to log in user: " + email);

        // Validate user credentials using DBUtil
        boolean isValid = DBUtil.validateUser(email, password);

        // Debugging: check if user is valid
        if (isValid) {
            System.out.println("User authenticated successfully.");
            
            // Fetch the user's firstname from the database
            String firstname = DBUtil.getUserFirstNameByEmail(email);
            
            // Store the firstname in the session
            HttpSession session = request.getSession();
            session.setAttribute("firstname", firstname);
            
            // Redirect to welcome page
            response.sendRedirect("welcome.jsp");
        } else {
            System.out.println("Invalid login credentials.");
            // Redirect back to signin page or show error
            response.sendRedirect("signin.jsp");
        }
    }
}
