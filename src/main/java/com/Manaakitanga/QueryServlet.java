package com.Manaakitanga;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/QueryServlet")
public class QueryServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // Handling POST request
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieve form data
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String queryType = request.getParameter("query");
        String message = request.getParameter("message");

        // Insert data into the database
        String sql = "INSERT INTO contacts (name, email, phone, query_type, message) VALUES (?, ?, ?, ?, ?)";

        try (Connection connection = DBUtil.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, name);
            statement.setString(2, email);
            statement.setString(3, phone);
            statement.setString(4, queryType);
            statement.setString(5, message);

            statement.executeUpdate();

            // Set the appropriate response message based on query type
            String responseMessage;
            if ("Feedback".equals(queryType)) {
                responseMessage = "Thanks for your feedback!";
            } else {
                responseMessage = "We will get back to you.";
            }

            request.getSession().setAttribute("responseMessage", responseMessage);
            response.sendRedirect("index.jsp");  // Redirect to success page

        } catch (SQLException e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to error page if needed
        } catch (Exception e) {  // Catch generic Exception as well
            e.printStackTrace();
            response.sendRedirect("error.jsp"); // Redirect to error page
        }
    }
}
