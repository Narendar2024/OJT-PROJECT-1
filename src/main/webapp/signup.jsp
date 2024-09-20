<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Signup</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
<link rel="stylesheet" href="./css/navbar.css" />
<link rel="stylesheet" href="./css/footer.css" />


<!-- Custom CSS for additional styling -->
<style>
body {
	background-color: #f8f9fa;
}

.signup-container {
	max-width: 500px;
	margin: 50px auto;
	padding: 20px;
	background-color: white;
	border-radius: 10px;
	box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	margin-bottom: 20px;
	color: #343a40;
}

.form-label {
	color: #495057;
}

.btn {
	width: 100%;
	background-color: orange;
}

.btn:hover{
	background-color:#ff7400;
}

.signin-link {
	display: block;
	text-align: center;
	margin-top: 10px;
}
</style>
</head>
<body>


	<!-- Navbar -->
	<nav class="navbar">
		<div class="logo">
			<a href="sigin.jsp"><i class="fa-solid fa-link"></i>Manaakitanga</a>
		</div>
		<ul class="nav-menu">
			<li><a href="#">Home</a></li>
			<li class="dropdown"><a href="about-us.jsp" class="dropbtn">About
					Us</a>
				<div class="dropdown-content">
					<a href="#">Overview</a> <a href="#">Vision & Mission</a> <a
						href="#">Milestone & Awards</a> <a href="#">Our Team</a>
				</div></li>
			<li><a href="blog.jsp">Blog</a></li>
			<li class="dropdown"><a href="#" class="dropbtn">Media
					Corner</a>
				<div class="dropdown-content">
					<a href="#">News Letters</a> <a href="#">Events</a> <a href="#">Story
						of Empowerment</a>
				</div></li>
			<li><a href="#">Gallery</a></li>
			<li><a href="#">Contact Us</a></li>
			<li><a href="signin.jsp" class="donate-btn">Donate</a></li>
		</ul>
		<div class="hamburger-menu">
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
		</div>
	</nav>



	<div class="container">
		<div class="signup-container">
			<h2>Signup</h2>
			<form action="SignupServlet" method="post">
				<div class="mb-3">
					<label for="firstname" class="form-label">First Name:</label> <input
						type="text" name="firstname" class="form-control" id="firstname"
						required>
				</div>
				<div class="mb-3">
					<label for="lastname" class="form-label">Last Name:</label> <input
						type="text" name="lastname" class="form-control" id="lastname"
						required>
				</div>
				<div class="mb-3">
					<label for="email" class="form-label">Email:</label> <input
						type="email" name="email" class="form-control" id="email" required>
				</div>
				<div class="mb-3">
					<label for="mobile" class="form-label">Mobile:</label> <input
						type="text" name="mobile" class="form-control" id="mobile"
						required>
				</div>
				<div class="mb-3">
					<label for="location" class="form-label">Location:</label> <input
						type="text" name="location" class="form-control" id="location"
						required>
				</div>
				<div class="mb-3">
					<label for="password" class="form-label">Password:</label> <input
						type="password" name="password" class="form-control" id="password"
						required>
				</div>
				<button type="submit" class="btn">Signup</button>
				<p class="signin-link">
					Already have an account? <a href="signin.jsp">Sign In</a>
				</p>
			</form>
		</div>
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
					<a href="signin.jsp">DONATE NOW </a><span>&#x2665;</span>
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



	<!-- Bootstrap JS and dependencies -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
