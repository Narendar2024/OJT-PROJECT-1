<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<title>Donate Food Form</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/navbar.css">

<style>
body, h2, form, input, textarea {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	box-sizing: border-box;
}

.navbar {
	padding-left: 142px;
	padding-right: 142px;
	width: 100%;
	background-color: #f8f9fa;
}

.navbar-brand span {
	font-weight: bold;
	font-size: 1.25rem;
}

.navbar-nav .nav-link {
	font-size: 1rem;
	font-weight: 500;
}

.navbar .btn-outline-primary {
	border-color: orange;
	color: orange;
}

.navbar .btn-outline-primary:hover {
	color: white;
	background-color: orange;
}

.navbar .btn-primary {
	background-color: orange;
	border-color: orange;
}

.container {
	max-width: 600px;
	margin: 0 auto;
	background-color: #fff;
	padding: 20px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #333;
}

.hidden {
	display: none;
}

.error-message {
	color: red;
	font-size: 0.9em;
}

input[type="text"], input[type="email"], input[type="date"], input[type="number"],
	textarea, select {
	width: 100%;
	padding: 10px;
	margin: 5px 0 20px 0;
	border: 1px solid #ccc;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #28a745;
	color: white;
	padding: 10px 15px;
	border: none;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #218838;
}

.required {
	color: red;
}
</style>
</head>

<body>
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
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link" href="#main-content">Donations</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
					<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
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

	<div class="container">
		<h2>Donate Food</h2>
		<form action="FoodDonateServlet" method="POST">
			<label for="donor_name">Donor Name <span class="required">*</span></label>
			<input type="text" id="donor_name" name="donor_name" required>

			<label for="food_type">Food Type <span class="required">*</span></label>
			<select id="food_type" name="food_type" required>
				<option value="dry">Dry</option>
				<option value="fruit">Fruit</option>
				<option value="vegetable">Vegetable</option>
				<option value="canned">Canned</option>
				<option value="other">Other</option>
			</select> <label for="food_name">Food Name <span class="required">*</span></label>
			<input type="text" id="food_name" name="food_name" required>

			<label for="food_quantity">Quantity (in kg) <span
				class="required">*</span></label> <input type="number" id="food_quantity"
				name="food_quantity" required> <label for="expiry_date">Expiration
				Date <span class="required">*</span>
			</label> <input type="date" id="expiry_date" name="expiry_date" required>

			<label for="donor_email">Donor Email <span class="required">*</span></label>
			<input type="email" id="donor_email" name="donor_email" required>

			<label for="donor_phone">Donor Phone Number <span
				class="required">*</span></label> <input type="text" id="donor_phone"
				name="donor_phone" required> <label for="pin_code">Pin
				Code <span class="required">*</span>
			</label> <input type="text" id="pin_code" name="pin_code" required>
			<button type="button" onclick="fetchNearestPostOffice()">Find
				Nearest Courier Services</button>
			<br> <br>

			<!-- Error message section -->
			<p id="error-message" class="error-message hidden">Invalid
				pincode. Please try again.</p>

			<div id="courier-section" class="hidden">
				<label for="post_office">Available Courier Agencies <span
					class="required">*</span></label> <select id="post_office"
					name="post_office" required>
					<option value="">Select a courier service</option>
				</select>
			</div>
			<br> <br> <label for="donor_address">Donor Address
				<span class="required">*</span>
			</label>
			<textarea id="donor_address" name="donor_address" rows="4" required></textarea>

			<input type="submit" value="Donate Now">
		</form>
	</div>

	
	<!-- Footer -->

	<footer>
		<div class="footer-container">
			<div class="footer-section">
				<h3 class="name">
					<i class="fa-solid fa-link"></i>Manaakitanga
				</h3>
				<p>We’re curious, passionate, and committed to helping
					nonprofits learn and grow. Donate now!</p>
				<button class="donate-btn">
					<a href="signin">DONATE NOW </a><span>&#x2665;</span>
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
				<div class="social-icons">
					<i class="fab fa-twitter"></i> <i class="fab fa-facebook-f"></i> <i
						class="fab fa-pinterest"></i> <i class="fab fa-instagram"></i>
				</div>
			</div>
			<div class="footer-section">
				<h3>NONPROFITS</h3>
				<ul>
					<li><a href="#">Nonprofit Resources</a></li>
					<li><a href="#">Corporate Giving Resources</a></li>
					<li><a href="#">Corporate Gift Cards</a></li>
					<li><a href="#">CSR Made Simple</a></li>
					<li><a href="#">Start an Application</a></li>
				</ul>
			</div>
			<div class="footer-section">
				<h3>DONORS</h3>
				<ul>
					<li><a href="#">Give or Redeem Gift Cards</a></li>
					<li><a href="#">Donate in Honor</a></li>
					<li><a href="#">Project of the Month Club</a></li>
					<li><a href="#">Start a Fundraiser</a></li>
					<li><a href="#">Donor Resources</a></li>
				</ul>
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


	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<script>
		function fetchNearestPostOffice() {
			var pinCode = document.getElementById('pin_code').value;
			var courierServices = {
				"500001" : [ "India Post", "Blue Dart", "DTDC", "FedEx" ],
				"500002" : [ "DTDC", "India Post", "Delhivery" ],
				"500044" : [ "Blue Dart", "India Post", "Gati" ],
				"500072" : [ "Aramex", "India Post", "FedEx", "Blue Dart" ],
				"502032" : [ "India Post", "DTDC", "Blue Dart" ]
			// Add more Telangana pincodes and corresponding courier services here
			};

			var couriers = courierServices[pinCode];
			var postOfficeSelect = document.getElementById('post_office');
			var courierSection = document.getElementById('courier-section');
			var errorMessage = document.getElementById('error-message');

			postOfficeSelect.innerHTML = '<option value="">Select a courier service</option>';

			if (couriers && couriers.length > 0) {
				courierSection.classList.remove('hidden');
				errorMessage.classList.add('hidden');

				couriers.forEach(function(courier) {
					var option = document.createElement('option');
					option.value = courier;
					option.text = courier;
					postOfficeSelect.appendChild(option);
				});
			} else {
				courierSection.classList.add('hidden');
				errorMessage.classList.remove('hidden');
			}
		}
	</script>
</body>

</html>
