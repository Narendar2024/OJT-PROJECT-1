<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Donation Page</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="Free Website Template" name="keywords">
<meta content="Free Website Template" name="description">

    <link rel="stylesheet" href="./css/footer.css" />

    <link rel="stylesheet" href="./css/navbar.css" />


<!-- Favicon -->
<link href="img/favicon.ico" rel="icon">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap"
	rel="stylesheet">

<!-- CSS Libraries -->
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link href="lib/flaticon/font/flaticon.css" rel="stylesheet">
<link href="lib/animate/animate.min.css" rel="stylesheet">
<link href="lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet">


<!-- Include Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

<!-- Template Stylesheet -->
<link href="css/style.css" rel="stylesheet">
<link href="css/home-page.css" rel="stylesheet">


</head>
<style>
</style>

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
					
					<li class="nav-item"><a class="nav-link" href="#main-content">Donations</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
					<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a>
					</li>
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


	<!-- Carousel Start -->
	<div class="carousel">
		<div class="container-fluid">
			<div class="owl-carousel">
				<div class="carousel-item">
					<div class="carousel-img">
						<img src="img/carousel-1.jpg" alt="Image">
					</div>
					<div class="carousel-text">
						<h1>Let's be kind for children</h1>

						<div class="carousel-btn">
							<a class="btn btn-custom" href="#main-content">Donate Now</a> <a
								class="btn btn-custom btn-play" data-toggle="modal"
								data-src="https://www.youtube.com/embed/DWRcNpR6Kdc"
								data-target="#videoModal">Watch Video</a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="carousel-img">
						<img src="img/carousel-2.jpg" alt="Image">
					</div>
					<div class="carousel-text">
						<h1>Get Involved with helping hand</h1>

						<div class="carousel-btn">
							<a class="btn btn-custom" href="#main-content">Donate Now</a> <a
								class="btn btn-custom btn-play" data-toggle="modal"
								data-src="https://www.youtube.com/embed/DWRcNpR6Kdc"
								data-target="#videoModal">Watch Video</a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<div class="carousel-img">
						<img src="img/carousel-3.jpg" alt="Image">
					</div>
					<div class="carousel-text">
						<h1>Bringing smiles to millions</h1>

						<div class="carousel-btn">
							<a class="btn btn-custom" href="#main-content">Donate Now</a> <a
								class="btn btn-custom btn-play" data-toggle="modal"
								data-src="https://www.youtube.com/embed/DWRcNpR6Kdc"
								data-target="#videoModal">Watch Video</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Carousel End -->
	<section class="main-content" id="main-content">
		<!-- Main Content -->
		<div class="container">
			<h1 class="my-4 text-center">Choose a Donation Category</h1>
			<div class="row">
				<div class="col-md-4 mb-4">
					<div class="category-block text-center p-3 text-black"
						onclick="window.location.href='doner_form.jsp';"
						style="background-color: #eef2e2;">
						<img
							src="https://cdn.create.vista.com/api/media/small/38411117/stock-photo-books-in-library-room"
							class="category-image" alt="Books">
						<h3>Donate Books</h3>
					</div>
				</div>
				<div class="col-md-4 mb-4">
					<div class="category-block text-center p-3 text-black"
						onclick="window.location.href='donate_food.jsp';"
						style="background-color: #eef2e2;">
						<img
							src="https://img.freepik.com/premium-photo/large-bowl-food-with-fish-vegetables_197463-2405.jpg"
							class="category-image" alt="Food">
						<h3>Donate Food</h3>
					</div>
				</div>
				<div class="col-md-4 mb-4">
					<div class="category-block text-center p-3 text-black"
						onclick="window.location.href='donate_money.jsp';"
						style="background-color: #eef2e2;">
						<img
							src="https://cdn.pixabay.com/photo/2017/09/07/08/54/money-2724241_640.jpg"
							class="category-image" alt="Money">
						<h3>Donate Money</h3>
					</div>
				</div>
				<div class="w-100 d-none d-md-block mb-4"></div>
				<!-- This empty div creates space between rows -->
				<div class="col-md-4 mb-4">
					<div class="category-block text-center p-3 text-black"
						onclick="window.location.href='other_donation.jsp';"
						style="background-color: #eef2e2;">
						<img
							src="https://www.rd.com/wp-content/uploads/2019/01/GettyImages-1144565915-copy-scaled.jpg"
							class="category-image" alt="Other Items">
						<h3>Donate Other Items</h3>
					</div>
				</div>

				<!-- New Sections -->
				<div class="col-md-4 mb-4">
					<div class="category-block text-center p-3 text-black"
						onclick="window.location.href='state_wise_donation.jsp';"
						style="background-color: #eef2e2;">
						<img
							src="https://via.placeholder.com/600x400?text=State+Wise+Donation"
							class="category-image" alt="State Wise">
						<h3>State-Wise Donation</h3>
					</div>
				</div>
				<div class="col-md-4 mb-4">
					<div class="category-block text-center p-3 text-black"
						onclick="window.location.href='ngo_wise_donation.jsp';"
						style="background-color: #eef2e2;">
						<img
							src="https://i0.wp.com/ketto.blog/wp-content/uploads/2022/08/shutterstock_1797442786-min.jpg?fit=1024%2C577&ssl=1"
							class="category-image" alt="NGO Wise">
						<h3>NGO-Wise Donation</h3>
					</div>
				</div>
			</div>
		</div>

	</section>
	<!-- Video Modal Start-->
	<div class="modal fade" id="videoModal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-body">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<!-- 16:9 aspect ratio -->
					<div class="embed-responsive embed-responsive-16by9">
						<iframe class="embed-responsive-item" src="" id="video"
							allowscriptaccess="always" allow="autoplay"></iframe>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Video Modal End -->


	<!-- About Start -->
	<div class="about">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="about-img" data-parallax="scroll"
						data-image-src="img/about.jpg"></div>
				</div>
				<div class="col-lg-6">
					<div class="section-header">
						<p>Learn About Us</p>
						<h2>Worldwide non-profit charity organization</h2>
					</div>
					<div class="about-tab">
						<ul class="nav nav-pills nav-justified">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="pill" href="#tab-content-1">About</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="pill"
								href="#tab-content-2">Mission</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="pill"
								href="#tab-content-3">Vision</a></li>
						</ul>

						<div class="tab-content">
							<div id="tab-content-1" class="container tab-pane active">
								To provide support and resources to those in need through a
								variety of initiatives, including education, hunger relief,
								disaster recovery, and medical assistance. Since our inception,
								we have been driven by the belief that every individual has the
								right to a better future. Our work focuses on creating
								sustainable change by empowering people and promoting
								self-sufficiency. With the help of generous donors, passionate
								volunteers, and dedicated staff, we have been able to reach
								countless lives and deliver hope where it is needed most.</div>
							<div id="tab-content-2" class="container tab-pane fade">
								Our mission is to empower vulnerable communities and create
								lasting, sustainable change by addressing critical issues such
								as poverty, education, disaster relief, and healthcare. We are
								committed to providing essential resources like food, clean
								water, and shelter to those who need it most, while also
								promoting access to quality education by distributing books,
								learning materials, and scholarships. In times of natural
								disaster, we act swiftly to deliver relief and help rebuild
								affected communities. Additionally, we work to improve
								healthcare access by offering medical supplies and supporting
								health programs in underserved regions.</div>
							<div id="tab-content-3" class="container tab-pane fade">
								Our vision is to create a world where every individual,
								regardless of their background or circumstances, has access to
								the resources and opportunities they need to thrive. We envision
								a future where poverty is eradicated, education is accessible to
								all, and every community is resilient in the face of adversity.
								Through collaboration, innovation, and compassion, we aim to
								build a global network of support that empowers people to
								overcome challenges and lead dignified, self-sufficient lives.</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- About End -->


	<!-- Service Start -->
	<div class="service">
		<div class="container">
			<div class="section-header text-center">
				<p>What We Do?</p>
				<h2>We believe that we can save more lifes with you</h2>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="service-item">
						<div class="service-icon">
							<i class="flaticon-diet"></i>
						</div>
						<div class="service-text">
							<h3>Healthy Food</h3>
							<p>We provide nutritious meals to those in need, ensuring
								everyone has access to healthy food for a better life.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="service-item">
						<div class="service-icon">
							<i class="flaticon-water"></i>
						</div>
						<div class="service-text">
							<h3>Pure Water</h3>
							<p>We ensure access to clean, safe drinking water, helping
								communities stay healthy and thrive.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="service-item">
						<div class="service-icon">
							<i class="flaticon-healthcare"></i>
						</div>
						<div class="service-text">
							<h3>Health Care</h3>
							<p>We deliver essential healthcare and medical support to
								enhance community well-being.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="service-item">
						<div class="service-icon">
							<i class="flaticon-education"></i>
						</div>
						<div class="service-text">
							<h3>Primary Education</h3>
							<p>We provide access to quality primary education to empower
								children and build brighter futures.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="service-item">
						<div class="service-icon">
							<i class="flaticon-home"></i>
						</div>
						<div class="service-text">
							<h3>Residence Facilities</h3>
							<p>We offer safe and supportive residence facilities to those
								in need, ensuring a secure place to call home.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="service-item">
						<div class="service-icon">
							<i class="flaticon-social-care"></i>
						</div>
						<div class="service-text">
							<h3>Social Care</h3>
							<p>We provide comprehensive social care services to support
								and uplift individuals and families in need.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Service End -->


	<!-- Facts Start -->
	<div class="facts" data-parallax="scroll"
		data-image-src="img/facts.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="facts-item">
						<i class="flaticon-home"></i>
						<div class="facts-text">
							<h3 class="facts-plus" data-toggle="counter-up">150</h3>
							<p>Countries</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="facts-item">
						<i class="flaticon-charity"></i>
						<div class="facts-text">
							<h3 class="facts-plus" data-toggle="counter-up">400</h3>
							<p>Volunteers</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="facts-item">
						<i class="flaticon-kindness"></i>
						<div class="facts-text">
							<h3 class="facts-dollar" data-toggle="counter-up">10000</h3>
							<p>Our Goal</p>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="facts-item">
						<i class="flaticon-donation"></i>
						<div class="facts-text">
							<h3 class="facts-dollar" data-toggle="counter-up">5000</h3>
							<p>Raised</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Facts End -->


	<!-- Causes Start -->
	<div class="causes">
		<div class="container">
			<div class="section-header text-center">
				<p>Popular Causes</p>
				<h2>Let's know about charity causes around the world</h2>
			</div>
			<div class="owl-carousel causes-carousel">
				<div class="causes-item">
					<div class="causes-img">
						<img src="img/causess-10.jpg" alt="Image">
					</div>
					<div class="causes-progress">
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="75"
								aria-valuemin="0" aria-valuemax="100">
								<span>75%</span>
							</div>
						</div>
						<div class="progress-text">
							<p>
								<strong>Raised:</strong> ₹75000
							</p>
							<p>
								<strong>Goal:</strong> ₹100000
							</p>
						</div>
					</div>
					<div class="causes-text">
						<h3>Food Relief Efforts</h3>
						<p>We deliver crucial food aid to combat hunger and ensure
							everyone gets the nutrition they need.</p>
					</div>
					<div class="causes-btn">
						<a class="btn btn-custom">Learn More</a> <a class="btn btn-custom">Donate
							Now</a>
					</div>
				</div>
				<div class="causes-item">
					<div class="causes-img">
						<img src="img/causess-11.jpg" alt="Image">
					</div>
					<div class="causes-progress">
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="70"
								aria-valuemin="0" aria-valuemax="100">
								<span>70%</span>
							</div>
						</div>
						<div class="progress-text">
							<p>
								<strong>Raised:</strong> $70000
							</p>
							<p>
								<strong>Goal:</strong> $100000
							</p>
						</div>
					</div>
					<div class="causes-text">
						<h3>NGO's Collab Support</h3>
						<p>We support and collaborate with NGOs to amplify impact and
							drive positive change.</p>
					</div>
					<div class="causes-btn">
						<a class="btn btn-custom">Learn More</a> <a class="btn btn-custom">Donate
							Now</a>
					</div>
				</div>
				<div class="causes-item">
					<div class="causes-img">
						<img src="img/causes-3.jpg" alt="Image">
					</div>
					<div class="causes-progress">
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="85"
								aria-valuemin="0" aria-valuemax="100">
								<span>85%</span>
							</div>
						</div>
						<div class="progress-text">
							<p>
								<strong>Raised:</strong> $85000
							</p>
							<p>
								<strong>Goal:</strong> $100000
							</p>
						</div>
					</div>
					<div class="causes-text">
						<h3>Child and Family Welfare</h3>
						<p>We support children and families with essential services
							and resources for a better quality of life.</p>
					</div>
					<div class="causes-btn">
						<a class="btn btn-custom">Learn More</a> <a class="btn btn-custom">Donate
							Now</a>
					</div>
				</div>
				<div class="causes-item">
					<div class="causes-img">
						<img src="img/causess-12.jpg" alt="Image">
					</div>
					<div class="causes-progress">
						<div class="progress">
							<div class="progress-bar" role="progressbar" aria-valuenow="73"
								aria-valuemin="0" aria-valuemax="100">
								<span>73%</span>
							</div>
						</div>
						<div class="progress-text">
							<p>
								<strong>Raised:</strong> $73000
							</p>
							<p>
								<strong>Goal:</strong> $100000
							</p>
						</div>
					</div>
					<div class="causes-text">
						<h3>Education Programs</h3>
						<p>We provide educational resources and support to enhance
							learning opportunities for all.</p>
					</div>
					<div class="causes-btn">
						<a class="btn btn-custom">Learn More</a> <a class="btn btn-custom">Donate
							Now</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Causes End -->


	<!-- Donate Start -->
	<div class="donate" data-parallax="scroll"
		data-image-src="img/donate.jpg">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-7">
					<div class="donate-content">
						<div class="section-header">
							<p>Donate Now</p>
							<h2>Let's donate to needy people for better lives</h2>
						</div>
						<div class="donate-text">
							<p>Your contribution can make a profound difference in the
								lives of those in need. By donating today, you are helping
								provide essential resources and support to individuals and
								communities facing challenges.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-5">
					<div class="donate-form">
						<form>

							<div>
								<button class="btn btn-custom" type="submit">
									<a href="#main-content">Donate Now</a>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Donate End -->


	<!-- Event Start -->
	<div class="event">
		<div class="container">
			<div class="section-header text-center">
				<p>Upcoming Events</p>
				<h2>Be ready for our upcoming charity events</h2>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="event-item">
						<img src="img/event-1.jpg" alt="Image">
						<div class="event-content">
							<div class="event-meta">
								<p>
									<i class="fa fa-calendar-alt"></i>06-Nov-2024
								</p>
								<p>
									<i class="far fa-clock"></i>8:00 - 10:00
								</p>
								<p>
									<i class="fa fa-map-marker-alt"></i>Hyderabad
								</p>
							</div>
							<div class="event-text">
								<h3>Heroes for Humanity Event</h3>
								<p>Heroes for Humanity Event: A celebration of compassion
									and action to support global causes and make a difference.</p>
								<a class="btn btn-custom" href="">Join Now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="event-item">
						<img src="img/event-2.jpg" alt="Image">
						<div class="event-content">
							<div class="event-meta">
								<p>
									<i class="fa fa-calendar-alt"></i>07-Nov-2024
								</p>
								<p>
									<i class="far fa-clock"></i>8:00 - 10:00
								</p>
								<p>
									<i class="fa fa-map-marker-alt"></i>Hyderabad
								</p>
							</div>
							<div class="event-text">
								<h3>Classroom Challenge Event</h3>
								<p>A student-led initiative to support local communities
									through classroom-based charity events and fundraising
									activities.</p>
								<a class="btn btn-custom" href="">Join Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Event End -->


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
							<img src="img/Teams-2.jpg" alt="Team Image">
						</div>
						<div class="team-text">
							<h2>Shivasai Prasad</h2>
							<p>Founder & CEO</p>
							<div class="team-social">
								<a href=""><i class="fab fa-twitter"></i></a> <a href=""><i
									class="fab fa-facebook-f"></i></a> <a href=""><i
									class="fab fa-linkedin-in"></i></a> <a href=""><i
									class="fab fa-instagram"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="team-item">
						<div class="team-img">
							<img src="img/Teams-2.jpg" alt="Team Image">
						</div>
						<div class="team-text">
							<h2>Narender</h2>
							<p>Chef Executive</p>
							<div class="team-social">
								<a href=""><i class="fab fa-twitter"></i></a> <a href=""><i
									class="fab fa-facebook-f"></i></a> <a href=""><i
									class="fab fa-linkedin-in"></i></a> <a href=""><i
									class="fab fa-instagram"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="team-item">
						<div class="team-img">
							<img src="img/Teams-2.jpg" alt="Team Image">
						</div>
						<div class="team-text">
							<h2>Dinesh Kumar</h2>
							<p>Chef Advisor</p>
							<div class="team-social">
								<a href=""><i class="fab fa-twitter"></i></a> <a href=""><i
									class="fab fa-facebook-f"></i></a> <a href=""><i
									class="fab fa-linkedin-in"></i></a> <a href=""><i
									class="fab fa-instagram"></i></a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="team-item">
						<div class="team-img">
							<img src="img/Teams-2.jpg" alt="Team Image">
						</div>
						<div class="team-text">
							<h2>Shivam</h2>
							<p>Advisor</p>
							<div class="team-social">
								<a href=""><i class="fab fa-twitter"></i></a> <a href=""><i
									class="fab fa-facebook-f"></i></a> <a href=""><i
									class="fab fa-linkedin-in"></i></a> <a href=""><i
									class="fab fa-instagram"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Team End -->


	<!-- Volunteer Start -->
	<div class="volunteer" data-parallax="scroll"
		data-image-src="img/volunteer.jpg">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-5">
					<div class="volunteer-form">
						<form>
							<div class="control-group">
								<input type="text" class="form-control" placeholder="Name"
									required="required" />
							</div>
							<div class="control-group">
								<input type="email" class="form-control" placeholder="Email"
									required="required" />
							</div>
							<div class="control-group">
								<textarea class="form-control"
									placeholder="Why you want to become a volunteer?"
									required="required"></textarea>
							</div>
							<div>
								<button class="btn btn-custom" type="submit">Become a
									volunteer</button>
							</div>
						</form>
					</div>
				</div>
				<div class="col-lg-7">
					<div class="volunteer-content">
						<div class="section-header">
							<p>Become A Volunteer</p>
							<h2>Let’s make a difference in the lives of others</h2>
						</div>
						<div class="volunteer-text">
							<p>Lorem ipsum dolor sit amet elit. Phasellus nec pretium mi.
								Curabitur facilisis ornare velit non. Aliquam metus tortor,
								auctor id gravida, viverra quis sem. Curabitur non nisl nec nisi
								maximus. Aenean convallis porttitor. Aliquam interdum at lacus
								non blandit.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Volunteer End -->


	<!-- Testimonial Start -->
	<div class="testimonial">
		<div class="container">
			<div class="section-header text-center">
				<p>Grateful Voices</p>
				<h2>What people are talking about our charity activities</h2>
			</div>
			<div class="owl-carousel testimonials-carousel">
				<div class="testimonial-item">
					<div class="testimonial-profile">
						<img src="img/testimonial-1.jpg" alt="Image">
						<div class="testimonial-name">
							<h3>Person Name</h3>
							<p>Profession</p>
						</div>
					</div>
					<div class="testimonial-text">
						<p>Lorem ipsum dolor sit amet elit. Phasel preti mi facilis
							ornare velit non vulputa. Aliqu metus tortor, auctor id gravid
							vivera quis</p>
					</div>
				</div>
				<div class="testimonial-item">
					<div class="testimonial-profile">
						<img src="img/testimonial-2.jpg" alt="Image">
						<div class="testimonial-name">
							<h3>Person Name</h3>
							<p>Profession</p>
						</div>
					</div>
					<div class="testimonial-text">
						<p>Lorem ipsum dolor sit amet elit. Phasel preti mi facilis
							ornare velit non vulputa. Aliqu metus tortor, auctor id gravid
							vivera quis</p>
					</div>
				</div>
				<div class="testimonial-item">
					<div class="testimonial-profile">
						<img src="img/testimonial-3.jpg" alt="Image">
						<div class="testimonial-name">
							<h3>Person Name</h3>
							<p>Profession</p>
						</div>
					</div>
					<div class="testimonial-text">
						<p>Lorem ipsum dolor sit amet elit. Phasel preti mi facilis
							ornare velit non vulputa. Aliqu metus tortor, auctor id gravid
							vivera quis</p>
					</div>
				</div>
				<div class="testimonial-item">
					<div class="testimonial-profile">
						<img src="img/testimonial-4.jpg" alt="Image">
						<div class="testimonial-name">
							<h3>Person Name</h3>
							<p>Profession</p>
						</div>
					</div>
					<div class="testimonial-text">
						<p>Lorem ipsum dolor sit amet elit. Phasel preti mi facilis
							ornare velit non vulputa. Aliqu metus tortor, auctor id gravid
							vivera quis</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Testimonial End -->


	<!-- Contact Start -->
	<div class="contact">
		<div class="container">
			<div class="section-header text-center">
				<p>Get In Touch</p>
				<h2>Contact for any query</h2>
			</div>
			<div class="contact-img">
				<img src="img/contact.jpg" alt="Image">
			</div>
			<div class="contact-form">
				<div id="success"></div>
				<form name="sentMessage" id="contactForm" novalidate="novalidate"
					method="post" action="HomeContactServlet">
					<div class="control-group">
						<input type="text" class="form-control" id="name" name="name"
							placeholder="Your Name" required="required"
							data-validation-required-message="Please enter your name" />
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group">
						<input type="email" class="form-control" id="email" name="email"
							placeholder="Your Email" required="required"
							data-validation-required-message="Please enter your email" />
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group">
						<input type="text" class="form-control" id="subject"
							name="subject" placeholder="Subject" required="required"
							data-validation-required-message="Please enter a subject" />
						<p class="help-block text-danger"></p>
					</div>
					<div class="control-group">
						<textarea class="form-control" id="message" name="message"
							placeholder="Message" required="required"
							data-validation-required-message="Please enter your message"></textarea>
						<p class="help-block text-danger"></p>
					</div>
					<div>
						<button class="btn btn-custom" type="submit"
							id="sendMessageButton">Send Message</button>
					</div>
				</form>

			</div>
		</div>
	</div>
	<!-- Contact End -->


	<!-- Blog Start -->
	<div class="blog">
		<div class="container">
			<div class="section-header text-center">
				<p>Our Blog</p>
				<h2>Latest news & articles directly from our blog</h2>
			</div>
			<div class="row">
				<div class="col-lg-4">
					<div class="blog-item">
						<div class="blog-img">
							<img src="img/blog-1.jpg" alt="Image">
						</div>
						<div class="blog-text">
							<h3>
								<a href="#">Lorem ipsum dolor sit</a>
							</h3>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
						</div>
						<div class="blog-meta">
							<p>
								<i class="fa fa-user"></i><a href="">Admin</a>
							</p>
							<p>
								<i class="fa fa-comments"></i><a href="">15 Comments</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog-item">
						<div class="blog-img">
							<img src="img/blog-2.jpg" alt="Image">
						</div>
						<div class="blog-text">
							<h3>
								<a href="#">Lorem ipsum dolor sit</a>
							</h3>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
						</div>
						<div class="blog-meta">
							<p>
								<i class="fa fa-user"></i><a href="">Admin</a>
							</p>
							<p>
								<i class="fa fa-comments"></i><a href="">15 Comments</a>
							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4">
					<div class="blog-item">
						<div class="blog-img">
							<img src="img/blog-3.jpg" alt="Image">
						</div>
						<div class="blog-text">
							<h3>
								<a href="#">Lorem ipsum dolor sit</a>
							</h3>
							<p>Lorem ipsum dolor sit amet elit. Neca pretim miura bitur
								facili ornare velit non vulpte liqum metus tortor</p>
						</div>
						<div class="blog-meta">
							<p>
								<i class="fa fa-user"></i><a href="">Admin</a>
							</p>
							<p>
								<i class="fa fa-comments"></i><a href="">15 Comments</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Blog End -->


	 <!-- Footer -->

    <footer>
      <div class="footer-container">
        <div class="footer-section">
          <h3 class="name"><i class="fa-solid fa-link"></i>Manaakitanga</h3>
          <p>
            We’re curious, passionate, and committed to helping nonprofits learn
            and grow. Donate now!
          </p>
          <!-- <button class="donate-btn"><a href="signin">DONATE NOW </a><span>&#x2665;</span></button> -->
        </div>
        <div class="footer-section">
          <h3>CONTACTS</h3>
          <p><i class="fas fa-map-marker-alt"></i>Hyderabad, Telangana</p>
          <p><i class="fas fa-envelope"></i> manaakitanga@mail.com</p>
          <p><i class="fas fa-phone-alt"></i> +91 9807645123</p>
          <div class="social-icons">
            <i class="fab fa-twitter"></i>
            <i class="fab fa-facebook-f"></i>
            <i class="fab fa-pinterest"></i>
            <i class="fab fa-instagram"></i>
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
          Copyright © 2024 BigHearts by <a href="#">WebGeniusLab</a>. All Rights
          Reserved.
        </p>
      </div>
    
    </footer>
	<!-- Footer End -->

	<!-- Back to top button -->
	<a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

	<!-- Pre Loader -->
	<div id="loader" class="show">
		<div class="loader"></div>
	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script src="lib/easing/easing.min.js"></script>
	<script src="lib/owlcarousel/owl.carousel.min.js"></script>
	<script src="lib/waypoints/waypoints.min.js"></script>
	<script src="lib/counterup/counterup.min.js"></script>
	<script src="lib/parallax/parallax.min.js"></script>

	<!-- Contact Javascript File -->
	<script src="mail/jqBootstrapValidation.min.js"></script>
	<script src="mail/contact.js"></script>

	<!-- Template Javascript -->
	<script src="js/main.js"></script>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script>
    document.addEventListener('DOMContentLoaded', function () {
        $('#carouselExampleIndicators').on('slide.bs.carousel', function () {
            let typingTexts = document.querySelectorAll('.typing-text');
            typingTexts.forEach(text => {
                text.style.animation = 'none';
                void text.offsetWidth; // Trigger reflow
                text.style.animation = '';
            });	
        });
    });
</script>
</body>
</html>