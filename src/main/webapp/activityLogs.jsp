<%@ page import="com.Manaakitanga.DBUtil"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Activity Logs</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp">Manaakitanga</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="signup.jsp">Signup</a></li>
					<li class="nav-item"><a class="nav-link" href="signin.jsp">Sign
							In</a></li>
					<li class="nav-item"><a class="nav-link" href="admin.jsp">Admin</a></li>
				</ul>
			</div>
		</div>
	</nav>

	<div class="container mt-5">
		<h1 class="text-center">User Activity Logs</h1>
		<table class="table table-bordered table-striped">
			<thead class="table-dark">
				<tr>
					<th>User ID</th>
					<th>Action</th>
					<th>Timestamp</th>
				</tr>
			</thead>
			<tbody>
				<%
				Connection con = null;
				Statement stmt = null;
				ResultSet rs = null;
				try {
					// Fetch the connection from the DBUtil class
					con = DBUtil.getConnection();
					String query = "SELECT * FROM activity_logs ORDER BY timestamp DESC"; // Order by timestamp
					stmt = con.createStatement();
					rs = stmt.executeQuery(query);

					// Iterate through the result set and display the logs
					while (rs.next()) {
				%>
				<tr>
					<td><%=rs.getInt("user_id")%></td>
					<td><%=rs.getString("action")%></td>
					<td><%=rs.getTimestamp("timestamp")%></td>
				</tr>
				<%
				}
				} catch (Exception e) {
				e.printStackTrace();
				} finally {
				// Close the result set, statement, and connection to avoid memory leaks
				if (rs != null)
				rs.close();
				if (stmt != null)
				stmt.close();
				if (con != null)
				con.close();
				}
				%>
			</tbody>
		</table>
		<div class="text-center">
			<a class="btn btn-primary" href="admin.jsp">Back to Admin Page</a>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
