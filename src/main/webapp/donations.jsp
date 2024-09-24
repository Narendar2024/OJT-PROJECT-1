<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Donations Page</title>
<link rel="stylesheet" href="./css/footer.css" />
<link rel="stylesheet" href="./css/navbar.css" />
<link rel="stylesheet" href="./css/donations.css" />
<link href="img/favicon.ico" rel="icon">
<link
	href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>
	<!-- Nav Bar Start -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand d-flex align-items-center" href="#"> <i
				class="fa-brands fa-fedora"></i> <span class="ms-2">Manaakitanga</span>
			</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarContent"
				aria-controls="navbarContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse justify-content-between"
				id="navbarContent">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link" href="#main-content">Donations</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
					<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
					<li class="nav-item"><a class="nav-link"
						href="social_media.jsp">Social Media</a></li>
				</ul>
				<div class="d-flex align-items-center">
					<%
					if (session != null && session.getAttribute("firstname") != null) {
						String firstname = (String) session.getAttribute("firstname");
					%>
					<span class="navbar-text me-3">Hello, <%=firstname%>!
					</span>
					<form action="LogoutServlet" method="get" class="d-inline">
						<button class="btn btn-primary" type="submit">Logout</button>
					</form>
					<%
					} else {
					%>
					<span class="navbar-text me-3">Hello, Guest!</span>
					<%
					}
					%>
				</div>
			</div>
		</div>
	</nav>
	<!-- Nav Bar End -->

	<!-- Hero Section -->
	<div class="hero-section">
		<div class="overlay">
			<h1>Donations</h1>
			<p>
				<a href="home.jsp">Home</a> &gt; <strong>Donations</strong>
			</p>
		</div>
	</div>

	<!-- Donations Table -->
	<div class="container mt-4">
		<h2 class="donation-title">Donations</h2>
		<div class="underline"></div>
		<!-- <div class="filter-buttons">
			<button class="filter-btn active" data-filter="all-donations">All</button>
			<button class="filter-btn" data-filter="books">Book Donation
				List</button>
			<button class="filter-btn" data-filter="food">Food Donation
				List</button>
			<button class="filter-btn" data-filter="money">Money
				Donation List</button>
			<button class="filter-btn" data-filter="ngo">NGO Donation
				List</button>
			<button class="filter-btn" data-filter="other">Other
				Donation List</button>
		</div>
		-->

		<div class="filter-buttons">
			<button class="btn filter-btn active" onclick="showAllTables()">All
				Donations</button>
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
					// JDBC connection setup
					String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
					String DB_URL = "jdbc:mysql://localhost:3306/manaakitanga";
					String USER = "root";
					String PASS = "root"; // Change this to your MySQL password

					Connection conn = null;
					Statement stmt = null;

					try {
						// Register JDBC driver
						Class.forName(JDBC_DRIVER);
						// Open a connection
						conn = DriverManager.getConnection(DB_URL, USER, PASS);
						// Execute a query
						stmt = conn.createStatement();
						String sql = "SELECT donor_name, book_name, book_author, book_year, book_quantity FROM Book_donors"; // Adjust table name if needed
						ResultSet rs = stmt.executeQuery(sql);

						// Extract data from result set
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
					// Clean-up environment
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
					// JDBC connection setup for Food donations
					Connection connFood = null;
					Statement stmtFood = null;

					try {
						// Open a connection for Food donations
						connFood = DriverManager.getConnection(DB_URL, USER, PASS);
						// Execute a query for Food donations
						stmtFood = connFood.createStatement();
						String sqlFood = "SELECT donor_name, food_type, food_name, food_quantity, expiry_date FROM Food_donors";
						ResultSet rsFood = stmtFood.executeQuery(sqlFood);

						// Extract data from result set for Food donations
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
					// Clean-up environment
					rsFood.close();
					stmtFood.close();
					} catch (SQLException e) {
					e.printStackTrace();
					} finally {
					// Close the connection for Food donations
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
					// JDBC connection setup for Money donations
					Connection connMoney = null;
					Statement stmtMoney = null;

					try {
						// Open a connection for Money donations
						connMoney = DriverManager.getConnection(DB_URL, USER, PASS);
						// Execute a query for Money donations
						stmtMoney = connMoney.createStatement();
						String sqlMoney = "SELECT donor_name, amount, donation_mode FROM Money_donors";
						ResultSet rsMoney = stmtMoney.executeQuery(sqlMoney);

						// Extract data from result set for Money donations
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
					// Clean-up environment
					rsMoney.close();
					stmtMoney.close();
					} catch (SQLException e) {
					e.printStackTrace();
					} finally {
					// Close the connection for Money donations
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
					// JDBC connection setup for NGO donations
					Connection connNGO = null;
					Statement stmtNGO = null;

					try {
						// Open a connection for NGO donations
						connNGO = DriverManager.getConnection(DB_URL, USER, PASS);
						// Execute a query for NGO donations
						stmtNGO = connNGO.createStatement();
						String sqlNGO = "SELECT donor_name, ngo_name, ngo_type, donation_type, donation_amount FROM NGO_donors";
						ResultSet rsNGO = stmtNGO.executeQuery(sqlNGO);

						// Extract data from result set for NGO donations
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
					// Clean-up environment
					rsNGO.close();
					stmtNGO.close();
					} catch (SQLException e) {
					e.printStackTrace();
					} finally {
					// Close the connection for NGO donations
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
					// JDBC connection setup for fetching other donations
					Connection connOther = null;
					Statement stmtOther = null;

					try {
						// Open a connection for fetching other donations
						connOther = DriverManager.getConnection("jdbc:mysql://localhost:3306/manaakitanga", "root", "root");

						// Execute a query to fetch other donation data
						String sqlOther = "SELECT donor_name, item_description, donation_type, quantity FROM other_donation";
						stmtOther = connOther.createStatement();
						ResultSet rsOther = stmtOther.executeQuery(sqlOther);

						// Extract data from result set for other donations
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
					// Clean-up environment
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
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
	<!-- <script src="./js/donationScript.js"></script>-->
	<script type="text/javascript">
		// Function to show a specific donation table based on the category
		function showTable(category) {
			// Hide all donation tables
			var tables = document.querySelectorAll('.donation-table');
			tables.forEach(function(table) {
				table.style.display = 'none';
			});

			// Show the selected table
			var selectedTable = document
					.querySelector('.donation-table[data-category="' + category
							+ '"]');
			if (selectedTable) {
				selectedTable.style.display = 'block';
			}
		}

		// Function to show all donation tables
		function showAllTables() {
			var tables = document.querySelectorAll('.donation-table');
			tables.forEach(function(table) {
				table.style.display = 'block';
			});
		}

		// Optionally, you can call showAllTables on page load to display all tables initially
		window.onload = function() {
			showAllTables();
		};
		
		filterButtons.forEach(button => {
			button.addEventListener('click', () => {
				// Remove active class from all buttons
				filterButtons.forEach(btn => btn.classList.remove('active'));
				// Add active class to the clicked button
				button.classList.add('active');
			});
		});
	</script>

</body>
</html>
