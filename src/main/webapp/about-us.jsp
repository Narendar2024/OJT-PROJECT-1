<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About us</title>

<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/navbar.css">
<link rel="stylesheet" href="./css/about-us.css">
<link rel="stylesheet" href="./css/about-us-our-team.css">

<!-- Link to overview.css -->

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>
	<!-- Navbar -->
	<nav class="navbar">
		<div class="logo">
			<a href="index.jsp"><i class="fa-solid fa-link"></i>Manaakitanga</a>
		</div>
		<ul class="nav-menu">
			<li><a href="index.jsp">Home</a></li>
			<li class="dropdown"><a href="#" class="dropbtn">About Us</a>
				<div class="dropdown-content">
					<a href="#overview-section">Overview</a> <a href="#vision-section">Vision
						& Mission</a> <a href="#goals-section">Milestone & Awards</a> <a
						href="#team-section">Our Team</a>
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
	<div class="hero-section">
		<div class="overlay">
			<h1>About Us</h1>
			<p>
				<a href="index.jsp">Home</a> &gt; <strong>About Us</strong>
			</p>
		</div>
	</div>


	<!-- Overview Section -->
	<section class="overview-section py-5" id="overview-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10 text-center">
					<h2 class="overview-title">Overview</h2>
					<div class="underline"></div>
					<div class="text-container">
						<p class="overview-text">Manaakitanga Foundation is a
							youth-led organization working on empowering the underprivileged
							section of our society. Manaakitanga has a pan India presence
							through its wide network of Volunteer Chapters across the
							country. Manaakitanga Foundation focused its interventions on
							issues concerning youth and children which brought about
							significant changes in their lives in terms of education, health,
							skill, career, and sustainable livelihood. Manaakitanga also
							works on Environment conservation, women empowerment, food
							safety, and security. Being an organization who cares for
							society, Manaakitanga gets engaged in projects as the situation
							demands under natural or manmade disasters, like COVID-19
							Pandemic, Flood, Drought Relief etc.</p>
					</div>

				</div>
			</div>
		</div>
	</section>

	<!-- Vision Section -->
	<section class="vision-section py-5" id="vision-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10 text-center">
					<h2 class="vision-title">Vision</h2>
					<div class="underline"></div>
					<div
						class="vision-container d-flex align-items-center justify-content-center">
						<div class="vision-icon">
							<img src="./assets/vision-icon.png" alt="Vision Icon" />
						</div>
						<div class="vision-text">
							<p>Manaakitanga envisions fostering the development of a
								happy, healthy, and sustainable society in which every
								individual has an equal opportunity for growth and a life of
								dignity.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Mission Section -->
	<section class="mission-section py-5" id="mission-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10 text-center">
					<h2 class="mission-title">Mission</h2>
					<div class="underline"></div>
					<div
						class="mission-container d-flex align-items-center justify-content-center">
						<div class="mission-icon">
							<img src="./assets/mission-icon.png" alt="Mission Icon" />
						</div>
						<div class="mission-text">
							<p>Manaakitanga is a youth-led futuristic organization
								committed to empowering the economically underprivileged by
								empowering them through encouragement, education, and
								employment. Manaakitanga strives to encourage individuals to
								reach their full potential, lead happy, healthy lives with
								dignity, and make them capable of making meaningful
								contributions to society. Manaakitanga is shaping up a
								sustainable society for future generations by instilling
								futuristic ideals into our practices.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Values Section -->
	<section class="goals-section py-5" id="goals-section">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-10 text-center">
					<h2 class="goals-title">Goals</h2>
					<div class="underline"></div>
					<div
						class="goals-container d-flex align-items-center justify-content-center">
						<div class="goals-icon">
							<img src="./assets/values-icon.png" alt="Goals Icon" />
						</div>
						<div class="goals-text">
							<p>
								<i class="fa-solid fa-check"></i>Empower youth for a stronger
								society through education, encouragement, and employment.
							</p>
							<p>
								<i class="fa-solid fa-check"></i>Work on various aspects
								impacting children to build an empowered future generation.
							</p>
							<p>
								<i class="fa-solid fa-check"></i>Empowering Citizens to live
								with dignity and get equal rights for them in society.
							</p>
							<p>
								<i class="fa-solid fa-check"></i>Creating a healthy, sustainable
								and Safe environment for citizens to live.
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- Meet Our Team Section -->

	<div class="about-us" id="meet-our-team">
		<h2>Meet Our Team</h2>
		<div class="team-container">
			<div class="team-member">
				<img src="./team-images/Narender.jpg" alt="Member 1">
				<h3>John Doe</h3>
				<p>Project Manager - Oversees all aspects of the project,
					ensuring timelines and deliverables are met.</p>
			</div>
			<div class="team-member">
				<img src="./team-images/ShivaPrasad2.jpg" alt="Member 2">
				<h3>Jane Smith</h3>
				<p>Lead Developer - Specializes in back-end development and
					technical architecture design.</p>
			</div>
			<div class="team-member">
				<img src="./team-images/Narender.jpg" alt="Member 3">
				<h3>Emily Johnson</h3>
				<p>UI/UX Designer - Focuses on creating user-friendly designs
					and ensuring a smooth user experience.</p>
			</div>
			<div class="team-member">
				<img src="./team-images/Narender.jpg" alt="Member 4">
				<h3>Michael Brown</h3>
				<p>Front-End Developer - Implements responsive designs and
					interactive features for the web application.</p>
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

	<script src="./js/navbarScript.js"></script>

</body>
</html>