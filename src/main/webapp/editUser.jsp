<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.Manaakitanga.DBUtil"%>
<%@ page import="com.Manaakitanga.User"%>
<%@ page import="java.sql.SQLException"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit User</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<%
	String userIdParam = request.getParameter("id");
	User user = null;

	if (userIdParam != null) {
		try {
			int userId = Integer.parseInt(userIdParam);
			user = DBUtil.getUserById(userId);
		} catch (NumberFormatException e) {
			out.println("<p>Invalid user ID format.</p>");
		} catch (SQLException e) {
			out.println("<p>Error retrieving user information: " + e.getMessage() + "</p>");
		} catch (Exception e) { // Catch the generic Exception
			out.println("<p>Unexpected error: " + e.getMessage() + "</p>");
		}
	} else {
		out.println("<p>User ID is required.</p>");
	}

	if (user != null) {
	%>

	<form action="${pageContext.request.contextPath}/UpdateUserServlet" method="post">
		<input type="hidden" name="id" value="<%=user.getId()%>" />
		<div class="form-group">
			<label for="firstname">First Name:</label> <input type="text"
				id="firstname" name="firstname" value="<%=user.getFirstName()%>"
				required />
		</div>
		<div class="form-group">
			<label for="lastname">Last Name:</label> <input type="text"
				id="lastname" name="lastname" value="<%=user.getLastName()%>"
				required />
		</div>
		<div class="form-group">
			<label for="email">Email:</label> <input type="email" id="email"
				name="email" value="<%=user.getEmail()%>" required />
		</div>
		<div class="form-group">
			<label for="mobile">Mobile:</label> <input type="text" id="mobile"
				name="mobile" value="<%=user.getMobile()%>" required />
		</div>
		<div class="form-group">
			<label for="location">Location:</label> <input type="text"
				id="location" name="location" value="<%=user.getLocation()%>"
				required />
		</div>
		<input type="submit" value="Update User" />
	</form>
	<a class="back-button" href="admin.jsp">Back to Admin</a>

	<%
	} else {
	%>
	<p>User not found.</p>
	<a class="back-button" href="admin.jsp">Back to Admin</a>
	<%
	}
	%>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
