<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - NGO Team</title>
   <!-- Google Fonts -->
    <link
      href="https://fonts.googleapis.com/css?family=Roboto:400,100,300,700"
      rel="stylesheet"
    />

    <!-- Bootstrap CSS -->
    <link
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      rel="stylesheet"
    />


<!-- Include Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Font Awesome Icons -->
    <link
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
      rel="stylesheet"
    />
    <style>

body {
    margin: 0;
    padding: 0;
    overflow-x: hidden;
}

/* Navbar Styles */
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
    @media (max-width: 768px) {
        .navbar-links {
            flex-direction: column;
            display: none;
            background-color: #343a40;
            position: absolute;
            top: 60px;
            right: 20px;
            width: 200px;
            border-radius: 5px;
            padding: 10px 0;
            z-index: 1000;
        }

        .navbar-toggler {
            display: block;
        }

        .navbar-links.active {
            display: flex;
        }
    }

    .hero {
        background: url('assets/about.jpg') no-repeat center center/cover;
        height: 60vh;
        display: flex;
        align-items: center;
        justify-content: center;
        color: #fff;
        text-align: center;
        animation: fadeIn 1s ease-in-out;
    }

    .hero-title {
        font-size: 3rem;
        margin: 0;
    }

    .hero-subtitle {
        font-size: 1.5rem;
        margin-top: 10px;
    }

    .team {
        display: flex;
        justify-content: space-around;
        flex-wrap: wrap;
        padding: 50px 20px;
        background-color: #fff;
    }

    .team-member {
        max-width: 300px;
        text-align: center;
        margin: 20px;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
        border-radius: 10px;
        overflow: hidden;
        background-color: #f9f9f9;
    }

    .team-member img {
        width: 100%;
        height: auto;
        border-bottom: 5px solid #ff6b6b;
        transition: transform 0.3s ease;
    }

    .team-member:hover {
        transform: translateY(-10px);
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    }

    .team-member:hover img {
        transform: scale(1.05);
    }

    .team-member h3 {
        margin: 15px 0 5px 0;
        font-size: 1.5rem;
        color: #343a40;
    }

    .team-member p {
        font-size: 1rem;
        margin: 0 10px 15px 10px;
        color: #555;
    }

    .about-project {
        padding: 50px 20px;
        background-color: #f8f9fa;
        text-align: center;
    }

    .about-project h2 {
        font-size: 2.5rem;
        margin-bottom: 20px;
        color: #343a40;
    }

    .about-project p {
        max-width: 800px;
        margin: auto;
        font-size: 1.2rem;
        color: #555;
    }

    .footer {
        background-color: #343a40;
        color: #fff;
        text-align: center;
        padding: 20px 0;
    }

    @keyframes fadeIn {
        from { opacity: 0; }
        to { opacity: 1; }
    }
    
    </style>
</head>
<body>
    <header class="header">
    <!-- Navbar -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container">
			<!-- Logo -->
			<a class="navbar-brand d-flex align-items-center" href="#"> <!-- <img src="logo-placeholder.png" alt="Logo" style="width: 40px; height: 40px;"> -->
				<i class="fa-brands fa-fedora"></i> <span class="ms-2">Manaakitanga</span>
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
				<li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link" href="blog.jsp">Blog</a></li>
				<li class="nav-item"><a class="nav-link" href="contact.jsp">Contact</a></li>
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="about_us.jsp">About Us</a></li>
					
					
				
					
				</ul>

				<!-- Search and Donate Now buttons -->
				<div class="d-flex">
					<button class="btn btn-outline-primary me-2" type="button">
						<i class="fa-solid fa-magnifying-glass"></i>
					</button>
				</div>
			</div>
		</div>
	</nav>

    </header>

    <section class="hero">
        <div class="hero-content">
            <h1 class="hero-title">Meet Our Dedicated Team</h1>
            <p class="hero-subtitle">Together, we're making the world a better place.</p>
        </div>
    </section>

    <section class="team">
        <div class="team-member">
            <img src="images/leader-image.jpg" alt="Dinesh Kumar">
            <h3>Dinesh Kumar</h3>
            <p>Team Leader</p>
            <p>As the leader of this passionate team, Dinesh oversees all operations and ensures that our projects align with the NGO's mission to create meaningful change.</p>
        </div>
        <div class="team-member">
            <img src="images/member1-image.jpg" alt="Narender">
            <h3>Narender</h3>
            <p>Web Developer</p>
            <p>Narender is responsible for developing and maintaining the NGO's website, ensuring it remains accessible, user-friendly, and impactful.</p>
        </div>
        <div class="team-member">
            <img src="images/member2-image.jpg" alt="Shivasaiprasad">
            <h3>Shivasaiprasad</h3>
            <p>Project Manager</p>
            <p>Shivasaiprasad manages our various projects, coordinating efforts and ensuring that our initiatives are completed on time and within budget.</p>
        </div>
        <div class="team-member">
            <img src="images/member3-image.jpg" alt="Shivam">
            <h3>Shivam</h3>
            <p>Graphic Designer</p>
            <p>Shivam brings our vision to life with stunning visuals, creating compelling designs that resonate with our audience and enhance our campaigns.</p>
        </div>
    </section>

    <section class="about-project">
        <h2>About Our Project</h2>
        <p>Our NGO is committed to making a difference in the world. Through our various initiatives, we aim to provide support to those in need, raise awareness about important issues, and inspire others to join us in our mission. Our current project focuses on [Project Details], which is designed to [Purpose and Goal of the Project].</p>
    </section>

    <footer class="footer">
        <p>&copy; 2024 Our NGO. All rights reserved.</p>
    </footer>

    <script>
    document.querySelector('.navbar-toggler').addEventListener('click', function() {
        document.querySelector('.navbar-links').classList.toggle('active');
    });
    </script>

</body>
</html>