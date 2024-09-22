<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.Manaakitanga.DBUtil"%>
<%@ page import="com.Manaakitanga.User"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./css/navbar.css" />
<link rel="stylesheet" href="./css/footer.css" />
</head>
<body>
	<%
	String updateSuccess = request.getParameter("updateSuccess");
	if ("true".equals(updateSuccess)) {
		out.println("<div class='alert alert-success'>User updated successfully!</div>");
	}
	%>

	<!-- Navbar -->
	<nav class="navbar">
		<div class="logo">
			<a href="index.jsp"><i class="fa-solid fa-link"></i>Manaakitanga</a>
		</div>
		<ul class="nav-menu">
			<li><a href="index.jsp">Home</a></li>
			<li><a href="signup.jsp">Signup</a></li>
			<li><a href="signin.jsp">Sign In</a></li>
			<li><a href="admin.jsp">Admin</a></li>
		</ul>
	</nav>

	<div class="container mt-5">
		<h2 class="text-center">User Management</h2>

		<div class="text-center mb-3">
			<a href="activityLogs.jsp" class="btn btn-primary">View User
				Activity Logs</a>
		</div>

		<div class="row">
			<div class="col-12">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>ID</th>
							<th>First Name</th>
							<th>Last Name</th>
							<th>Email</th>
							<th>Mobile</th>
							<th>Location</th>
							<th>Actions</th>
						</tr>
					</thead>
					<tbody>
						<%
						ArrayList<User> userList = DBUtil.getAllUsers();
						if (userList == null || userList.isEmpty()) {
						%>
						<tr>
							<td colspan="7" class="text-center">No users found.</td>
						</tr>
						<%
						} else {
						for (User user : userList) {
						%>
						<tr>
							<td><%=user.getId()%></td>
							<td><%=user.getFirstName()%></td>
							<td><%=user.getLastName()%></td>
							<td><%=user.getEmail()%></td>
							<td><%=user.getMobile()%></td>
							<td><%=user.getLocation()%></td>
							<td><a href="editUser.jsp?id=<%=user.getId()%>">Edit</a> <a
								href="deleteUser?id=<%=user.getId()%>"
								onclick="return confirm('Are you sure you want to delete this user?');">Delete</a>
							</td>
						</tr>
						<%
						}
						}
						%>
					</tbody>
				</table>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer>
		<div class="footer-container">
			<div class="footer-section">
				<h3 class="name">
					<i class="fa-solid fa-link"></i>Manaakitanga
				</h3>
				<p>Committed to helping nonprofits learn and grow. Donate now!</p>
				<button class="donate-btn">
					<a href="signin.jsp">DONATE NOW</a><span>&#x2665;</span>
				</button>
			</div>
			<div class="footer-section">
				<h3>CONTACTS</h3>
				<p>
					<i class="fas fa-map-marker-alt"></i>Hyderabad, Telangana
				</p>
				<p>
					<i class="fas fa-envelope"></i> manaakitanga@mail.com
				</p>
				<p>
					<i class="fas fa-phone-alt"></i> +91 9807645123
				</p>
			</div>
		</div>
		<div class="footer-bottom">
			<p>Terms of use | Privacy Environmental Policy</p>
			<p>
				Copyright © 2024 Manaakitanga by <a href="#">TeamWebGenius</a>. All
				Rights Reserved.
			</p>
		</div>
	</footer>

	<!-- Bootstrap JS and dependencies -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
