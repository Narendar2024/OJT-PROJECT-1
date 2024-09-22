package com.Manaakitanga;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/deleteUser")
public class DeleteUserServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int userId = Integer.parseInt(request.getParameter("id"));

		try {
			boolean isDeleted = DBUtil.deleteUserById(userId); // Ensure this matches the correct delete method
			if (isDeleted) {
				response.sendRedirect("admin.jsp?status=deleted"); // Redirect after successful deletion
			} else {
				response.sendRedirect("admin.jsp?status=error"); // Handle failure case
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw new ServletException("Error deleting user", e); // Forward the error
		}
	}
}