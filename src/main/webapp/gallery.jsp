<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="./css/navbar.css">
<link rel="stylesheet" href="./css/footer.css">
<link rel="stylesheet" href="./css/gallery.css">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
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
			<li><a href="#">Gallery</a></li>
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
			<h1>Gallery</h1>
			<p>
				<a href="index.jsp">Home</a> &gt; <strong>Gallery</strong>
			</p>
		</div>
	</div>

	<!-- Gallery Section -->
	<div class="gallery-section">
		<h2 class="gallery-title">Gallery</h2>
		<div class="underline"></div>
		<div class="filter-buttons">
			<button class="filter-btn active" data-filter="all">All</button>
			<button class="filter-btn" data-filter="homepage">Home Page
				Featured</button>
			<button class="filter-btn" data-filter="csr">NGO
				Partnerships</button>
			<button class="filter-btn" data-filter="youth">Youth
				Empowerment</button>
			<button class="filter-btn" data-filter="children">Children
				Upliftment</button>
		</div>

		<div class="gallery-grid">
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-1.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Skilling Empowerment - Workshop</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-2.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Skilling Empowerment - Skill Training</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-3.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Skilling Empowerment - Female Benificiaries</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-4.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Skilling Empowerment - Skill Training</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-5.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Water boat Ambulance</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-6.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Water boat Ambulance</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-7.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Water boat Ambulance</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="homepage">
				<img src="gallery/all-images-8.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Featured Photos - Donating Ambulance</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="homepage">
				<img src="gallery/all-images-9.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Featured Photos - Donating Ambulance</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="homepage">
				<img src="gallery/all-images-10.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Featured Photos - Promoting Sports</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="homepage">
				<img src="gallery/all-images-11.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Featured Photos - Children Nutrition</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="homepage">
				<img src="gallery/all-images-12.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Featured Photos - Farmers Empowerment</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="homepage">
				<img src="gallery/all-images-13.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Featured Photos - Learn with Fun</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="homepage">
				<img src="gallery/all-images-14.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Featured Photos - Digital Education</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="homepage">
				<img src="gallery/all-images-15.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Featured Photos - Children Education</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="homepage">
				<img src="gallery/all-images-16.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Featured Photos - Health Camps</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-17.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Skilling Empowerment - Female Benificiaries</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-18.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Skilling Empowerment - Female Benificiaries</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-19.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Skilling Empowerment - 1st batch of the Program</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-20.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Skilling Empowerment - Media Coverage</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-21.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Skilling Empowerment - Media Coverage</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-22.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Ambulance Donation</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-23.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Ambulance Donation</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-24.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Ambulance Donation</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-25.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Ambulance Donation</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-26.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Free Health Check-up Camp</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-27.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Free Health Check-up Camp</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-28.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Book 4 Purpose</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-29.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Book 4 Purpose</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-30.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Free Health Check-up Camp</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-31.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Free Health Check-up Camp</h3>
				</div>
			</div>


			<div class="gallery-item" data-category="children">
				<img src="gallery/all-images-32.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Healthy Child, Healthy Nation</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="children">
				<img src="gallery/all-images-33.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Healthy Child, Healthy Nation</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="youth">
				<img src="gallery/all-images-34.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Book 4 Purpose</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="children">
				<img src="gallery/all-images-35.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Healthy Child, Healthy Nation</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="children">
				<img src="gallery/all-images-36.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Healthy Child, Healthy Nation</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="children">
				<img src="gallery/all-images-37.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Digital Training and Resource Centre</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="children">
				<img src="gallery/all-images-38.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Digital Training and Resource Centre</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="children">
				<img src="gallery/all-images-39.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Digital Training and Resource Centre</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="children">
				<img src="gallery/all-images-40.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Digital Training and Resource Centre</h3>
				</div>
			</div>
			<div class="gallery-item" data-category="csr">
				<img src="gallery/all-images-41.jpg" alt="..." loading="lazy">
				<div class="gallery-overlay">
					<h3>Free Health Check-up Camp</h3>
				</div>
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
	<script src="./js/galleryScript.js"></script>

	<script type="text/javascript">
	const hamburger = document.querySelector('.hamburger-menu');
	const navMenu = document.querySelector('.nav-menu');

	hamburger.addEventListener('click', () => {
	  navMenu.classList.toggle('active');
	});

	</script>


</body>
</html>