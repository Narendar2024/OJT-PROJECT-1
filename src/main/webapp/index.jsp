<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Manaakitanga NGO</title>
    <link rel="stylesheet" href="./css/navbar.css" />
    <link rel="stylesheet" href="./css/carousel.css" />
    <link rel="stylesheet" href="./css/features-section.css" />
    <link rel="stylesheet" href="./css/helping-section.css" />
    <link rel="stylesheet" href="./css/footer.css" />
    <link rel="stylesheet" href="./css/accordion-section.css" />

    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" />
  </head>
  <body>
    <!-- Navbar -->
    <nav class="navbar">
      <div class="logo">
        <a href="#"><i class="fa-solid fa-link"></i>Manaakitanga</a>
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

    <!-- Carousel Section -->
    <section class="carousel">
      <div class="carousel-container">
        <div class="carousel-slide">
          <img
            src="./images/carousel-1.jpg"
            alt="Slide 1"
            class="background-image" />
            
          <div class="overlay">
            <img
              src="./images/overlay-1.png"
              class="overlay-img"
              alt="Overlay" />
          </div>
          <div class="carousel-text">
            <h2>
              Manaakitanga means nurturing relationships, showing respect, and
              creating a sense of belonging.
            </h2>
          </div>
        </div>
        <div class="carousel-slide">
          <img
            src="./images/carousel-2.jpg"
            alt="Slide 2"
            class="background-image" />
          <div class="overlay">
            <img
              src="./images/overlay-2.png"
              class="overlay-img"
              alt="Overlay" />
          </div>
          <div class="carousel-text">
            <h2>
              Through Manaakitanga, we extend compassion and support to those in
              need, no matter where they are.
            </h2>
          </div>
        </div>
        <div class="carousel-slide">
          <img
            src="./images/carousel-6.jpg"
            alt="Slide 3"
            class="background-image" />
          <div class="overlay">
            <img
              src="./images/overlay-3.png"
              class="overlay-img"
              alt="Overlay" />
          </div>
          <div class="carousel-text">
            <h2>
              Donate food, clothes, books, or money to help those affected by
              floods in southern India.
            </h2>
          </div>
        </div>
        <div class="carousel-slide">
          <img
            src="./images/carousel-4.jpg"
            alt="Slide 4"
            class="background-image" />
          <div class="overlay">
            <img
              src="./images/overlay-1.png"
              class="overlay-img"
              alt="Overlay" />
          </div>
          <div class="carousel-text">
            <h2>
              Manaakitanga embraces the act of giving, even to temples, to
              support almsgiving practices.
            </h2>
          </div>
        </div>
        <div class="carousel-slide">
          <img
            src="./images/carousel-5.jpg"
            alt="Slide 5"
            class="background-image" />
          <div class="overlay">
            <img
              src="./images/overlay-2.png"
              class="overlay-img"
              alt="Overlay" />
          </div>
          <div class="carousel-text">
            <h2>
              Our platform connects donors to organizations, making it easier to
              support education, shelter, and sustenance.
            </h2>
          </div>
        </div>
      </div>
      <a class="prev" onclick="moveSlide(-1)">&#10094;</a>
      <a class="next" onclick="moveSlide(1)">&#10095;</a>
      <div class="carousel-dots">
        <span class="dot" onclick="currentSlide(1)"></span>
        <span class="dot" onclick="currentSlide(2)"></span>
        <span class="dot" onclick="currentSlide(3)"></span>
        <span class="dot" onclick="currentSlide(4)"></span>
        <span class="dot" onclick="currentSlide(5)"></span>
      </div>
    </section>

    <!-- Features-Section -->
    <section class="nonprofit-section">
      <div class="nonprofit-container">
        <div class="left-content">
          <h2>Connects Nonprofits, Donors, & Companies in Every Country</h2>
          <button class="donate-now-btn">DONATE NOW</button>
        </div>
        <div class="right-content">
          <div class="service-box">
            <img src="./assets/food.png" alt="Healthy Food" />
            <div class="service-box-text">
              <h3>Healthy Food</h3>
              <p>
                We help local nonprofits access the funding, tools, training,
                and support they need to become more.
              </p>
            </div>
          </div>

          <div class="service-box">
            <img src="./assets/water.png" alt="Healthy Food" />
            <div class="service-box-text">
              <h3>Clean Water</h3>
              <p>
                We help local nonprofits access the funding, tools, training,
                and support they need to become more.
              </p>
            </div>
          </div>

          <div class="service-box">
            <img src="./assets/medical.png" alt="Healthy Food" />
            <div class="service-box-text">
              <h3>Medical Help</h3>
              <p>
                We help local nonprofits access the funding, tools, training,
                and support they need to become more.
              </p>
            </div>
          </div>

          <div class="service-box">
            <img src="./assets/education.png" alt="Healthy Food" />
            <div class="service-box-text">
              <h3>Education</h3>
              <p>
                We help local nonprofits access the funding, tools, training,
                and support they need to become more.
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Helping-Section -->
    <!-- Helping Section -->
    <section class="helping-section">
      <div class="helping-container">
        <div class="image-side">
          <img
            src="./images/helping-section-image.png"
            alt="Children in Africa" />
          <div class="image-overlay">
            <img src="./images/helping-section-overlay.png" alt="Overlay" />
          </div>
          <div class="inner-text">
            <h3>255 300+ Children in <br />Africa Need School</h3>
            <a href="#" class="volunteer-btn">Become a Volunteer</a>
          </div>
        </div>
        <div class="text-side">
          <h4>Safe + Easy Donations</h4>
          <h2>Helping Today. Helping Tomorrow</h2>
          <p>
            BigHearts is the largest global crowdfunding community connecting
            nonprofits, donors, and companies in nearly every country. We help
            nonprofits from Afghanistan to Zimbabwe (and hundreds of places in
            between) access the tools, training, and support they need to be
            more effective and make our world a better place.
          </p>
          <div class="action-buttons">
            <a href="#" class="learn-more-btn">Learn More</a>
            <a href="#" class="volunteers-btn">Our Volunteers</a>
          </div>
        </div>
      </div>
    </section>

    <!-- Accordion Section -->
    <section>
      <div class="container">
        <div class="accordion-wrapper">
          <div class="accordion-image">
            <img src="./images/accordion-image.jpg" alt="Accordion Image" />
          </div>
          <div class="accordion-content-wrapper">
            <h2>Frequently Asked Questions</h2>
            <div class="accordion">
              <div class="accordion-item">
                <button id="accordion-button-1" aria-expanded="false">
                  <span class="accordion-title"
                    >1. Why are donations essential for nonprofits?</span
                  >
                  <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                  <p>
                    Donations provide the necessary funds that allow nonprofits
                    to carry out their missions. Whether it’s supporting
                    education, providing medical aid, or helping those in need
                    after natural disasters, nonprofits rely on donations to
                    cover costs like staff, equipment, and outreach. Without
                    donations, many charitable organizations wouldn’t be able to
                    function effectively.
                  </p>
                </div>
              </div>
              <div class="accordion-item">
                <button id="accordion-button-2" aria-expanded="false">
                  <span class="accordion-title"
                    >2. How does my donation make a difference?</span
                  >
                  <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                  <p>
                    Every donation, no matter how small, contributes to real
                    change. Your support helps fund projects that directly
                    impact communities in need. For example, a small donation
                    can help provide clean drinking water, supply educational
                    materials to children, or fund life-saving treatments for
                    individuals in underserved areas.
                  </p>
                </div>
              </div>
              <div class="accordion-item">
                <button id="accordion-button-3" aria-expanded="false">
                  <span class="accordion-title"
                    >3. What percentage of my donation goes directly to the
                    cause?</span
                  >
                  <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                  <p>
                    Reputable nonprofit organizations strive to ensure that a
                    large portion of your donation goes directly to the cause
                    they are supporting. Typically, organizations aim for at
                    least 70-80% of donations to fund programs, while the
                    remaining percentage covers administrative costs and further
                    fundraising efforts. It's always good to research and choose
                    organizations that offer transparency in how donations are
                    allocated.
                  </p>
                </div>
              </div>
              <div class="accordion-item">
                <button id="accordion-button-4" aria-expanded="false">
                  <span class="accordion-title"
                    >4. Why should I donate regularly instead of one-time?</span
                  >
                  <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                  <p>
                    Regular donations provide nonprofits with a stable and
                    predictable income stream, allowing them to plan and execute
                    long-term projects. Monthly or annual donations help
                    organizations plan effectively and sustain their programs.
                    It also means that you are continuously making an impact
                    over time, allowing nonprofits to maintain consistent
                    support for those they serve.
                  </p>
                </div>
              </div>
              <div class="accordion-item">
                <button id="accordion-button-5" aria-expanded="false">
                  <span class="accordion-title"
                    >5. Can small donations really make a difference?</span
                  >
                  <span class="icon" aria-hidden="true"></span>
                </button>
                <div class="accordion-content">
                  <p>
                    Absolutely! Small donations, when pooled together, can
                    create substantial impact. Many nonprofit projects rely on
                    the collective power of smaller contributions. Even a
                    donation as little as $10 can provide a week’s worth of
                    meals for a family, or buy essential school supplies for a
                    child in need. It’s not about how much you give, but how
                    collectively, small actions can create big changes.
                  </p>
                </div>
              </div>
            </div>
          </div>
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
          <button class="donate-btn">DONATE NOW <span>&#x2665;</span></button>
        </div>
        <div class="footer-section">
          <h3>CONTACTS</h3>
          <p><i class="fas fa-map-marker-alt"></i> 92 Bowery St., NY 10013</p>
          <p><i class="fas fa-envelope"></i> bighearts@mail.com</p>
          <p><i class="fas fa-phone-alt"></i> +1 800 123 456 789</p>
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
      <div class="back-to-top">
        <i class="fas fa-arrow-up"></i>
      </div>
    </footer>

    <script src="./js/navbarScript.js"></script>
    <script src="./js/carouselScript.js"></script>
    <script src="./js/accordion-section.js"></script>
  </body>
</html>
