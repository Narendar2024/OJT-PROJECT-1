<!-- <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
<head>
<title>Other Donation</title>
<!-- Favicon -->
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
<link href="css/footer.css" rel="stylesheet">

<style>
/* Basic reset */
body, h2, form, input, textarea {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

/* Page styling */
body {
	margin: 0;
	padding: 0;
	overflow-x: hidden;
	box-sizing: border-box;
	font-family: 'Quicksand', sans-serif;
}

/* Navbar Styles */
.navbar {
	padding-left: 142px;
	padding-right: 142px;
	width: 100%;
	background-color: #f8f9fa; /* Adjust background color if needed */
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

.container {
	max-width: 600px;
	margin: 20px auto;
	background: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	color: #4caf50;
	text-align: center;
	margin-bottom: 20px;
}

label {
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"], input[type="number"], input[type="email"], input[type="donation_type"],
	textarea {
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ddd;
	border-radius: 4px;
	width: 100%;
}

input[type="submit"] {
	background-color: #4caf50;
	color: white;
	border: none;
	padding: 15px;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	width: 100%;
}

#donation_type {
	padding: 10px;
	margin-bottom: 15px;
	border: 1px solid #ddd;
	border-radius: 4px;
	width: 100%;
}

input[type="submit"]:hover {
	background-color: #45a049;
}

@media ( max-width : 768px) {
	.container {
		padding: 10px;
	}
}
</style>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container-fluid">
			<a class="navbar-brand d-flex align-items-center" href="#"> <i
				class="fa-brands fa-fedora"></i> <span class="ms-2">Manaakitanga</span>
			</a>

			<!-- Toggler for mobile view -->
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarContent"
				aria-controls="navbarContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<!-- Navbar content -->
			<div class="collapse navbar-collapse justify-content-between"
				id="navbarContent">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Donations</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
					<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
				</ul>
				<div class="d-flex">
					<button class="btn btn-outline-primary me-2" type="button">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</div>
			</div>
		</div>
	</nav>

	<div class="container">
		<h2>Other Donation</h2>
		<form id="donate-form" action="OtherDonationServlet" method="post">
			<label for="donor_name">Donor Name:</label> <input type="text"
				id="donor_name" name="donor_name" required /> <label
				for="donor_phone_number">Donor Phone Number:</label> <input
				type="text" id="donor_phone_number" name="donor_phone_number"
				required /> <label for="donor_email">Donor Email:</label> <input
				type="email" id="donor_email" name="donor_email" required /> <label
				for="donation_type">Donation Type:</label> <select
				id="donation_type" name="donation_type" required>
				<option value="">Select a type</option>
				<option value="Electronic Items">Electronic Items</option>
				<option value="Hardware Items">Hardware Items</option>
				<option value="Clothng">Clothing</option>
				<option value="Other items">Other Items</option>
			</select> <label for="quantity">Quantity:</label> <input type="number"
				id="quantity" name="quantity" required min="1" /> <label
				for="item_description">Item Description:</label>
			<textarea id="item_description" name="item_description" rows="2"
				required></textarea>

			<label for="donor_address">Donor Address:</label>
			<textarea id="donor_address" name="donor_address" rows="2" required></textarea>

			<input type="submit" value="Donate" />
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
				<!-- <button class="donate-btn"><a href="signin">DONATE NOW </a><span>&#x2665;</span></button> -->
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
				Copyright © 2024 BigHearts by <a href="#">TeamWebGenius</a>. All
				Rights Reserved.
			</p>
		</div>

	</footer>
	<!-- Footer End -->

	<!-- Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<script>
		document
				.getElementById("donate-form")
				.addEventListener(
						"submit",
						function(event) {
							let phone = document
									.getElementById("donor_phone_number").value;
							let email = document.getElementById("donor_email").value;
							let phonePattern = /^[0-9]{10}$/; // Example pattern for a 10-digit phone number
							let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/; // Basic email pattern

							if (!phonePattern.test(phone)) {
								alert("Please enter a valid 10-digit phone number.");
								event.preventDefault(); // Prevent form submission
							}

							if (!emailPattern.test(email)) {
								alert("Please enter a valid email address.");
								event.preventDefault(); // Prevent form submission
							}
						});
	</script>
</body>
</html>