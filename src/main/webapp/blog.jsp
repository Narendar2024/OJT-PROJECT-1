<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Blog Page</title>

<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/navbar.css">
<link rel="stylesheet" href="./css/blog.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />


</head>
<body>
	<!-- Navbar -->
	<nav class="navbar">
		<div class="logo">
			<a href="index.jsp"><i class="fa-solid fa-link"></i>Manaakitanga</a>
		</div>
		<ul class="nav-menu">
			<li><a href="index.jsp">Home</a></li>
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
			<li><a href="gallery.jsp">Gallery</a></li>
			<li><a href="index.jsp#contact">Contact Us</a></li>
			<li><a href="signin.jsp" class="donate-btn">Donate</a></li>
		</ul>
		<div class="hamburger-menu">
			<div class="line"></div>
			<div class="line"></div>
			<div class="line"></div>
		</div>
	</nav>



	<!-- Hero Section -->
	<section class="hero">
		<div class="hero-overlay">
			<div class="hero-content">
				<h1 class="blog-title">Blog</h1>
				<nav class="breadcrumb">
					<a href="index.jsp">Home</a> > <span>Blog</span>
				</nav>
			</div>
		</div>
	</section>

	<!-- Blog Posts Section -->
	<section class="blog-posts">
		<div class="container">
			<div class="post-grid">
				<!-- Blog Post 1 -->
				<div class="post">
					<img src="images/blog-post-1.jpg" alt="Unity Blog Image">
					<div class="post-info">
						<p class="post-date">May 23, 2023</p>
						<h3 class="post-title">Strength in Unity: Empowering
							Communities</h3>
						<p class="post-excerpt">Communities thrive when people come
							together, offering support and solidarity to overcome challenges.</p>
					</div>
				</div>
				<!-- Blog Post 2 -->
				<div class="post">
					<img src="images/blog-post-2.jpg" alt="Education Blog Image">
					<div class="post-info">
						<p class="post-date">June 10, 2023</p>
						<h3 class="post-title">Education: A Path to a Brighter Future</h3>
						<p class="post-excerpt">Quality education helps children build
							the foundation for a better tomorrow, enabling them to chase
							their dreams.</p>
					</div>
				</div>
				<!-- Blog Post 3 -->
				<div class="post">
					<img src="images/blog-post-3.jpg" alt="Medical Blog Image">
					<div class="post-info">
						<p class="post-date">July 20, 2023</p>
						<h3 class="post-title">Healthcare Support for the Needy</h3>
						<p class="post-excerpt">Access to medical care is crucial for
							underprivileged communities, ensuring a healthier and happier
							life.</p>
					</div>
				</div>
				<!-- Blog Post 4 -->
				<div class="post">
					<img src="images/blog-post-4.jpg"
						alt="Food and Clothes Donation Blog Image">
					<div class="post-info">
						<p class="post-date">October 25, 2023</p>
						<h3 class="post-title">Food and Clothes: Donations that
							Matter</h3>
						<p class="post-excerpt">Providing food and clothes helps those
							in need with basic necessities, fostering dignity and hope.</p>
					</div>
				</div>
				<!-- Blog Post 5 -->
				<div class="post">
					<img src="images/blog-post-5.jpg" alt="Events Blog Image">
					<div class="post-info">
						<p class="post-date">November 15, 2023</p>
						<h3 class="post-title">Events That Inspire Change</h3>
						<p class="post-excerpt">Events focused on bringing communities
							together raise awareness and build a stronger bond among people.</p>
					</div>
				</div>
				<!-- Blog Post 6 -->
				<div class="post">
					<img src="images/blog-post-6.jpg" alt="Food Donation Blog Image">
					<div class="post-info">
						<p class="post-date">January 10, 2024</p>
						<h3 class="post-title">Donating Food: Feeding the Hungry</h3>
						<p class="post-excerpt">Food donations have a direct impact on
							hunger alleviation, providing sustenance to families in need.</p>
					</div>
				</div>
				<!-- Blog Post 7 -->
				<div class="post">
					<img src="images/blog-post-7.jpg" alt="NGO Events Blog Image">
					<div class="post-info">
						<p class="post-date">Febraury 22, 2024</p>
						<h3 class="post-title">Successful Events at Local NGOs</h3>
						<p class="post-excerpt">Events held at NGOs offer
							opportunities for engagement and volunteering, creating
							meaningful community connections.</p>
					</div>
				</div>
				<!-- Blog Post 8 -->
				<div class="post">
					<img src="images/blog-post-8.jpg" alt="Teaching Blog Image">
					<div class="post-info">
						<p class="post-date">March 11, 2024</p>
						<h3 class="post-title">Teaching: Empowering the Next
							Generation</h3>
						<p class="post-excerpt">Volunteers teaching at NGOs bring
							knowledge to children, opening doors to endless possibilities.</p>
					</div>
				</div>
				<!-- Blog Post 9 -->
				<div class="post">
					<img src="images/blog-post-9.jpg" alt="Plantation Blog Image">
					<div class="post-info">
						<p class="post-date">Sept 10, 2024</p>
						<h3 class="post-title">Plantation Drives: Greener Tomorrow</h3>
						<p class="post-excerpt">Plantation efforts contribute to
							environmental sustainability, bringing communities together to
							protect nature.</p>
					</div>
				</div>

			</div>
		</div>
	</section>

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

	<script src="./js/navbarScript.js"></script>

</body>
</html>