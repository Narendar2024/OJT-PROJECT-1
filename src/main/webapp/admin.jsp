<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="com.Manaakitanga.DBUtil"%>
<%@ page import="com.Manaakitanga.User"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./css/admin-sidebar.css" />
<!-- Link to the sidebar CSS -->
<style>
#donationTable {
	display: none;
}
/* General Styles */
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f8f9fa; /* Light background for contrast */
}

/* Sidebar Styles */
.sidebar {
	width: 250px;
	height: 100vh;
	background-color: #343a40; /* Dark sidebar background */
	color: #ffffff; /* White text color */
	padding: 20px;
	position: fixed; /* Fixed position for sidebar */
	transition: all 0.3s ease; /* Smooth transition */
}

.sidebar h2 {
	font-size: 24px;
	margin-bottom: 20px;
}

.sidebar ul {
	list-style: none;
	padding: 0;
}

.sidebar li {
	margin: 15px 0;
}

.sidebar a {
	color: #ffffff; /* White links */
	text-decoration: none;
	font-size: 16px;
	padding: 10px;
	display: block; /* Make entire area clickable */
	transition: background 0.3s ease; /* Smooth background transition */
}

.sidebar a:hover {
	background-color: #495057; /* Darker background on hover */
}

/* Main Content Styles */
.container {
	margin-left: 260px; /* Space for sidebar */
	padding: 20px;
}

h2 {
	color: #343a40; /* Dark text color for headings */
	margin-bottom: 20px;
}

/* Donation Table Styles */
.table {
	margin-bottom: 30px;
	border-radius: 5px; /* Rounded corners for table */
	overflow: hidden; /* Prevents overflow of rounded corners */
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1); /* Light shadow for table */
}

.table th, .table td {
	padding: 12px; /* Adequate padding for table cells */
	text-align: center; /* Center align text in table */
}

.table th {
	background-color: #3e3e3e; /* Set background to black */
	color: white; /* Set text color to white */
}

/* Alert Styles */
.alert {
	position: absolute; /* Position alert */
	top: 20px; /* Align to top */
	right: 20px; /* Align to right */
	z-index: 1000; /* Ensure alert is above other elements */
}

/* Responsive Styles */
@media ( max-width : 768px) {
	.sidebar {
		width: 100%;
		height: auto; /* Adjust height for smaller screens */
		position: relative; /* Change to relative for mobile */
	}
	.container {
		margin-left: 0; /* Remove margin for mobile */
		padding: 10px; /* Reduce padding for mobile */
	}
	.table th, .table td {
		padding: 8px; /* Reduce padding in table cells for mobile */
	}
}

/* Donation Button Styles */
.filter-buttons {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
	margin: 20px 0;
}

.filter-btn {
	margin: 5px; /* Add some space between buttons */
	padding: 10px 15px; /* Add padding to buttons */
	background-color: #242424; /* Set button background to black */
	color: white; /* Set button text color to white */
	border: none; /* Remove border */
	border-radius: 5px; /* Rounded corners for buttons */
	cursor: pointer; /* Pointer cursor on hover */
	transition: background-color 0.3s; /* Smooth background transition */
}

.filter-btn:hover {
	background-color: #333; /* Darker shade on hover */
}

/* Table row hover effect */
.table tbody tr:hover {
	background-color: #f1f1f1; /* Light gray background on row hover */
}

/* Donation Table Container */
.donations-container {
	margin-left: 260px; /* Keep space for sidebar */
	padding: 20px;
}

.donation-table {
	margin: 20px auto; /* Center the donation tables */
	max-width: 800px; /* Set a maximum width for the tables */
	background-color: #ffffff; /* White background for tables */
	border-radius: 5px; /* Rounded corners */
	overflow: hidden; /* Prevent overflow of rounded corners */
}

.donation-table h2 {
	background-color: #3e3e3e; /* Header background color */
	color: white; /* White text color */
	padding: 10px; /* Add padding */
	margin: 0; /* Remove default margin */
}
</style>
</head>
<body>
	<%
	String updateSuccess = request.getParameter("updateSuccess");
	if ("true".equals(updateSuccess)) {
	%>
	<div class='alert alert-success' id='successAlert'>User updated
		successfully!</div>
	<script>
		setTimeout(function() {
			document.getElementById('successAlert').style.display = 'none';
		}, 3000); // Hide after 3000 milliseconds (3 seconds)
	</script>
	<%
	}
	%>
	<div class="d-flex">
		<!-- Sidebar -->
		<div class="sidebar">
			<h2>Manaakitanga</h2>
			<ul>
				<li><a href="#" onclick="showUserManagement()">Users</a></li>
				<li><a href="#" class="dropdown-toggle" data-toggle="dropdown"
					onclick="showDonations()">Donations</a>
					<ul class="dropdown-menu">
						<li><a href="#" onclick="showTable('books')">Book
								Donation</a></li>
						<li><a href="#" onclick="showTable('food')">Food Donation</a></li>
						<li><a href="#" onclick="showTable('money')">Money
								Donation</a></li>
						<li><a href="#" onclick="showTable('ngo')">NGO
								Partnership Donation</a></li>
						<li><a href="#" onclick="showTable('other')">Other
								Donation</a></li>
					</ul></li>
				<li><a href="#">Feedback</a></li>
				<li><a href="#">Comments</a></li>
				<li class="logout"><a href="#">Logout</a></li>
			</ul>
		</div>

		<!-- Main Content -->
		<div class="container mt-5" data-category="users" id="userManagement">
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
									onclick="return confirm('Are you sure you want to delete this user?');">Delete</a></td>
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
		<!-- Donations start here -->
		<div class="donations-container" id="donationTable">
			<div class="filter-buttons">
				<!-- <button class="btn filter-btn active" onclick="showAllTables()">All Donations</button>-->
				<div class="filter-buttons">
					<button class="btn filter-btn active"
						onclick="showAllTables('userManagement')">All Donations</button>
					<button class="btn filter-btn" onclick="showTable('books')">Book
						Donations</button>
					<button class="btn filter-btn" onclick="showTable('food')">Food
						Donations</button>
					<button class="btn filter-btn" onclick="showTable('money')">Money
						Donations</button>
					<button class="btn filter-btn" onclick="showTable('ngo')">NGO
						Donations</button>
					<button class="btn filter-btn" onclick="showTable('other')">Other
						Donations</button>
				</div>

			</div>
			<div class="donation-table" data-category="books">
				<h2>Book Donation List</h2>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Donor Name</th>
							<th>Book Name</th>
							<th>Book Author</th>
							<th>Book Year</th>
							<th>Book Quantity</th>
						</tr>
					</thead>
					<tbody>
						<%
						String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
						String DB_URL = "jdbc:mysql://localhost:3306/manaakitanga";
						String USER = "root";
						String PASS = "root"; // Change this to your MySQL password

						Connection conn = null;
						Statement stmt = null;

						try {
							Class.forName(JDBC_DRIVER);
							conn = DriverManager.getConnection(DB_URL, USER, PASS);
							stmt = conn.createStatement();
							String sql = "SELECT donor_name, book_name, book_author, book_year, book_quantity FROM Book_donors"; // Adjust table name if needed
							ResultSet rs = stmt.executeQuery(sql);

							while (rs.next()) {
								String donorName = rs.getString("donor_name");
								String bookName = rs.getString("book_name");
								String bookAuthor = rs.getString("book_author");
								int bookYear = rs.getInt("book_year");
								int bookQuantity = rs.getInt("book_quantity");
						%>
						<tr>
							<td><%=donorName%></td>
							<td><%=bookName%></td>
							<td><%=bookAuthor%></td>
							<td><%=bookYear%></td>
							<td><%=bookQuantity%></td>
						</tr>
						<%
						}
						rs.close();
						stmt.close();
						conn.close();
						} catch (SQLException | ClassNotFoundException e) {
						e.printStackTrace();
						}
						%>
					</tbody>
				</table>
			</div>

			<div class="donation-table" data-category="food">
				<h2>Food Donation List</h2>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Donor Name</th>
							<th>Food Type</th>
							<th>Food Name</th>
							<th>Food Quantity</th>
							<th>Expiry Date</th>
						</tr>
					</thead>
					<tbody>
						<%
						Connection connFood = null;
						Statement stmtFood = null;

						try {
							connFood = DriverManager.getConnection(DB_URL, USER, PASS);
							stmtFood = connFood.createStatement();
							String sqlFood = "SELECT donor_name, food_type, food_name, food_quantity, expiry_date FROM Food_donors";
							ResultSet rsFood = stmtFood.executeQuery(sqlFood);

							while (rsFood.next()) {
								String donorNameFood = rsFood.getString("donor_name");
								String foodType = rsFood.getString("food_type");
								String foodName = rsFood.getString("food_name");
								String foodQuantity = rsFood.getString("food_quantity");
								String expiryDate = rsFood.getString("expiry_date");
						%>
						<tr>
							<td><%=donorNameFood%></td>
							<td><%=foodType%></td>
							<td><%=foodName%></td>
							<td><%=foodQuantity%></td>
							<td><%=expiryDate%></td>
						</tr>
						<%
						}
						rsFood.close();
						stmtFood.close();
						} catch (SQLException e) {
						e.printStackTrace();
						} finally {
						if (connFood != null) {
						try {
							connFood.close();
						} catch (SQLException se) {
							se.printStackTrace();
						}
						}
						}
						%>
					</tbody>
				</table>
			</div>

			<div class="donation-table" data-category="money">
				<h2>Money Donation List</h2>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Donor Name</th>
							<th>Amount</th>
							<th>Donation Mode</th>
						</tr>
					</thead>
					<tbody>
						<%
						Connection connMoney = null;
						Statement stmtMoney = null;

						try {
							connMoney = DriverManager.getConnection(DB_URL, USER, PASS);
							stmtMoney = connMoney.createStatement();
							String sqlMoney = "SELECT donor_name, amount, donation_mode FROM Money_donors";
							ResultSet rsMoney = stmtMoney.executeQuery(sqlMoney);

							while (rsMoney.next()) {
								String donorNameMoney = rsMoney.getString("donor_name");
								double amount = rsMoney.getDouble("amount");
								String donationMode = rsMoney.getString("donation_mode");
						%>
						<tr>
							<td><%=donorNameMoney%></td>
							<td><%=amount%></td>
							<td><%=donationMode%></td>
						</tr>
						<%
						}
						rsMoney.close();
						stmtMoney.close();
						} catch (SQLException e) {
						e.printStackTrace();
						} finally {
						if (connMoney != null) {
						try {
							connMoney.close();
						} catch (SQLException se) {
							se.printStackTrace();
						}
						}
						}
						%>
					</tbody>
				</table>
			</div>

			<div class="donation-table" data-category="ngo">
				<h2>NGO Donation List</h2>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Donor Name</th>
							<th>Search NGO</th>
							<th>NGO Type</th>
							<th>Donation Type</th>
							<th>Donation Amount</th>
						</tr>
					</thead>
					<tbody>
						<%
						Connection connNGO = null;
						Statement stmtNGO = null;

						try {
							connNGO = DriverManager.getConnection(DB_URL, USER, PASS);
							stmtNGO = connNGO.createStatement();
							String sqlNGO = "SELECT donor_name, ngo_name, ngo_type, donation_type, donation_amount FROM NGO_donors";
							ResultSet rsNGO = stmtNGO.executeQuery(sqlNGO);

							while (rsNGO.next()) {
								String donorNameNGO = rsNGO.getString("donor_name");
								String ngoName = rsNGO.getString("ngo_name");
								String ngoType = rsNGO.getString("ngo_type");
								String donationType = rsNGO.getString("donation_type");
								String donationAmount = rsNGO.getString("donation_amount");
						%>
						<tr>
							<td><%=donorNameNGO%></td>
							<td><%=ngoName%></td>
							<td><%=ngoType%></td>
							<td><%=donationType%></td>
							<td><%=donationAmount%></td>
						</tr>
						<%
						}
						rsNGO.close();
						stmtNGO.close();
						} catch (SQLException e) {
						e.printStackTrace();
						} finally {
						if (connNGO != null) {
						try {
							connNGO.close();
						} catch (SQLException se) {
							se.printStackTrace();
						}
						}
						}
						%>
					</tbody>
				</table>
			</div>

			<div class="donation-table" data-category="other">
				<h2>Other Donation List</h2>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>Donor Name</th>
							<th>Item Name</th>
							<th>Donation Type</th>
							<th>Quantity</th>
						</tr>
					</thead>
					<tbody>
						<%
						Connection connOther = null;
						Statement stmtOther = null;

						try {
							connOther = DriverManager.getConnection("jdbc:mysql://localhost:3306/manaakitanga", "root", "root");
							String sqlOther = "SELECT donor_name, item_description, donation_type, quantity FROM other_donation";
							stmtOther = connOther.createStatement();
							ResultSet rsOther = stmtOther.executeQuery(sqlOther);

							while (rsOther.next()) {
								String donorName = rsOther.getString("donor_name");
								String itemDescription = rsOther.getString("item_description");
								String donationType = rsOther.getString("donation_type");
								String quantity = rsOther.getString("quantity");
						%>
						<tr>
							<td><%=donorName%></td>
							<td><%=itemDescription%></td>
							<td><%=donationType%></td>
							<td><%=quantity%></td>
						</tr>
						<%
						}
						rsOther.close();
						stmtOther.close();
						} catch (SQLException e) {
						e.printStackTrace();
						} finally {
						if (connOther != null) {
						try {
							connOther.close();
						} catch (SQLException se) {
							se.printStackTrace();
						}
						}
						}
						%>
					</tbody>
				</table>
			</div>
		</div>

	</div>


	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
	<script type="text/javascript">
		function showUserManagement() {
			document.getElementById('userManagement').style.display = 'block';
			document.getElementById('donationTable').style.display = 'none';
		}

		function showDonations() {
			document.getElementById('userManagement').style.display = 'none';
			document.getElementById('donationTable').style.display = 'block';
		}
		function showTable(category) {
			var tables = document.querySelectorAll('.donation-table');
			tables.forEach(function(table) {
				table.style.display = 'none';
			});
			var selectedTable = document
					.querySelector('.donation-table[data-category="' + category
							+ '"]');
			if (selectedTable) {
				selectedTable.style.display = 'block';
			}

			updateActiveButton(category);
		}

		function showAllTables() {
			var tables = document.querySelectorAll('.donation-table');
			tables.forEach(function(table) {
				table.style.display = 'block';
			});
			updateActiveButton('all');
		}
		function updateActiveButton(activeCategory) {
			var buttons = document.querySelectorAll('.filter-btn');

			buttons.forEach(function(button) {
				if (activeCategory === 'all'
						&& button.innerText.includes('All Donations')) {
					button.classList.add('active');
				} else if (button.innerText.includes(activeCategory.charAt(0)
						.toUpperCase()
						+ activeCategory.slice(1) + ' Donations')) {
					button.classList.add('active');
				} else {
					button.classList.remove('active');
				}
			});
		}
		window.onload = function() {
			showAllTables();
		};
	</script>
</body>
</html>