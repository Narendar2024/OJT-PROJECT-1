package com.Manaakitanga;

import java.io.IOException;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/UpdateUserServlet")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String location = request.getParameter("location");

		System.out.println("Received update for ID: " + id);

		try {
			DBUtil.updateUser(id, firstname, lastname, email, mobile, location);
			response.sendRedirect("admin.jsp?updateSuccess=true");
		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("editUser.jsp?id=" + id + "&error=updateFailed");
		} catch (Exception e) {
			e.printStackTrace(); // Catch any unexpected exceptions
			response.sendRedirect("editUser.jsp?id=" + id + "&error=unexpectedError");
		}
	}

}
