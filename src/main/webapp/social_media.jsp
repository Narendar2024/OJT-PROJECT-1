<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>Social Media</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free Website Template" name="keywords">
        <meta content="Free Website Template" name="description">

        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Font -->
        <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap" rel="stylesheet">
        
        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
        <link href="lib/animate/animate.min.css" rel="stylesheet">
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
            <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
 

<!-- Include Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

        <link href="css/style.css" rel="stylesheet">
            <link href="css/footer.css" rel="stylesheet">
      
    </head>
<body>
	<!-- Nav Bar Start -->
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
				<!-- Centered Links -->
				<ul class="navbar-nav mx-auto">
				<li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
					
					<li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
					<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
				</ul>

				<!-- Search, Username, and Logout Button -->
				<div class="d-flex align-items-center">
					<!-- Username and Logout Button -->
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

   <!-- Team Start -->
        <div class="team">
            <div class="container">
                <div class="section-header text-center">
                    <p>Meet Our Team</p>
                    <h2>Awesome guys behind our charity activities</h2>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/shiva(2).jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Shivasai Prasad</h2>
                                <p>Backend Team</p>
                                <div class="team-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href="https://www.facebook.com/ShivaPrasad0611?mibextid=LQQJ4d"><i class="fab fa-facebook-f"></i></a>
                                    <a href="https://www.linkedin.com/in/shivsai22/"><i class="fab fa-linkedin-in"></i></a>
                                    <a href="https://www.instagram.com/_mr_alone07?fbclid=IwY2xjawFd4b5leHRuA2FlbQIxMAABHWBD_GhMR_W8owwo-fhcCDKhIzs481j3NbcbZM_tqkq-xUS8XqEhxxPJKQ_aem_WoBoBQx9JuRETIFXM2uKxA"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/narender(2).jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Narender</h2>
                                <p>Executive</p>
                                <div class="team-social">
                                    <a href="Check out name_is_narender (@NarenderKorem): https://x.com/NarenderKorem?t=O9roqwM-DSMQ-E8TX2MX_Q&s=08"><i class="fab fa-twitter"></i></a>
                                    <a href="https://www.facebook.com/profile.php?id=61557203477441&mibextid=ZbWKwL"><i class="fab fa-facebook-f"></i></a>
                                    <a href="https://www.linkedin.com/in/narendar-korem?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"><i class="fab fa-linkedin-in"></i></a>
                                    <a href="https://www.instagram.com/name_is_narendar?igsh=OHVzOHBtM216Zzlh"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/dinesh(2).jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Dinesh Kumar</h2>
                                <p>Team Leader</p>
                                <div class="team-social">
                                    <a href=""><i class="fab fa-twitter"></i></a>
                                    <a href="https://www.facebook.com/share/L2YV9csto2eGohjW/?mibextid=qi2Omg"><i class="fab fa-facebook-f"></i></a>
                                    <a href="https://www.linkedin.com/in/dineshkumar-ajmeera-800991271?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=android_app"><i class="fab fa-linkedin-in"></i></a>
                                    <a href="https://www.instagram.com/dinnu_aj/profilecard/?igsh=emd1cWRwbjJ4bDk1"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="team-item">
                            <div class="team-img">
                                <img src="img/shivam(2).jpg" alt="Team Image">
                            </div>
                            <div class="team-text">
                                <h2>Shivam</h2>
                                <p>Advisor</p>
                                <div class="team-social">
                                    <a href="https://x.com/shivam_vish0640"><i class="fab fa-twitter"></i></a>
                                    <a href="https://www.facebook.com/shivamvishwakarma.lalbahadur/"><i class="fab fa-facebook-f"></i></a>
                                    <a href="https://www.linkedin.com/in/shivamv0640/"><i class="fab fa-linkedin-in"></i></a>
                                    <a href="https://www.instagram.com/shivam_vishwakarma_baahubali/"><i class="fab fa-instagram"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team End -->
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
</body>
</html>