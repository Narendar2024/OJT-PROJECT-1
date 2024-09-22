package com.Manaakitanga;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		System.out.println("First Name: " + firstname);
		System.out.println("Last Name: " + lastname);
		System.out.println("Email: " + email);
		System.out.println("Mobile: " + mobile);
		System.out.println("Location: " + location);

		try {
			DBUtil.updateUser(id, firstname, lastname, email, mobile, location);
			response.sendRedirect("admin.jsp?updateSuccess=true");
		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("editUser.jsp?id=" + id + "&error=updateFailed");
		}
	}

}
