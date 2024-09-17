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

<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />


</head>
<body>
<!-- Navbar -->
    <nav class="navbar">
      <div class="logo">
        <a href="sigin.jsp"><i class="fa-solid fa-link"></i>Manaakitanga</a>
      </div>
      <ul class="nav-menu">
        <li><a href="#">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropbtn">About Us</a>
          <div class="dropdown-content">
            <a href="#">Overview</a>
            <a href="#">Vision & Mission</a>
            <a href="#">Milestone & Awards</a>
            <a href="#">Our Team</a>
          </div>
        </li>
        <li><a href="#">Blog</a></li>
        <li class="dropdown">
          <a href="#" class="dropbtn">Media Corner</a>
          <div class="dropdown-content">
            <a href="#">News Letters</a>
            <a href="#">Events</a>
            <a href="#">Story of Empowerment</a>
          </div>
        </li>
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
                    <img src="images/blog-post-1.jpg" alt="Blog Image">
                    <div class="post-info">
                        <p class="post-date">Sept 10, 2018 Admin 3</p>
                        <h3 class="post-title">Hurricane Irma has devastated Florida</h3>
                        <p class="post-excerpt">A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                    </div>
                </div>
                <!-- Blog Post 2 -->
                <div class="post">
                    <img src="images/blog-post-2.jpg" alt="Blog Image">
                    <div class="post-info">
                        <p class="post-date">Sept 10, 2018 Admin 3</p>
                        <h3 class="post-title">Hurricane Irma has devastated Florida</h3>
                        <p class="post-excerpt">A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                    </div>
                </div>
                <!-- Blog Post 3 -->
                <div class="post">
                    <img src="images/blog-post-3.jpg" alt="Blog Image">
                    <div class="post-info">
                        <p class="post-date">Sept 10, 2018 Admin 3</p>
                        <h3 class="post-title">Hurricane Irma has devastated Florida</h3>
                        <p class="post-excerpt">A small river named Duden flows by their place and supplies it with the necessary regelialia.</p>
                    </div>
                </div>
                <!-- Add more blog posts as needed -->
            </div>
        </div>
    </section>
    
     <!-- Footer -->

    <footer>
      <div class="footer-container">
        <div class="footer-section">
          <h3 class="name"><i class="fa-solid fa-link"></i>Manaakitanga</h3>
          <p>
            We’re curious, passionate, and committed to helping nonprofits learn
            and grow. Donate now!
          </p>
          <button class="donate-btn"><a href="signin">DONATE NOW </a><span>&#x2665;</span></button>
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
          Copyright © 2024 Manaakitanga by <a href="#">TeamWebGenius</a>. All Rights
          Reserved.
        </p>
      </div>
    
    </footer>
    
        <script src="./js/navbarScript.js"></script>
    
</body>
</html>