<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html>
  <head>
    <title>Book Donor Information Form</title>

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
    <style>
      /* Basic reset */
      body,
      h2,
      form,
      input,
      textarea {
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

      input[type="text"],
      input[type="number"],
      input[type="email"],
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

      input[type="submit"]:hover {
        background-color: #45a049;
      }

      @media (max-width: 768px) {
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
        <a class="navbar-brand d-flex align-items-center" href="#">
          <i class="fa-brands fa-fedora"></i>
          <span class="ms-2">Manaakitanga</span>
        </a>

        <!-- Toggler for mobile view -->
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarContent"
          aria-controls="navbarContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Navbar content -->
        <div
          class="collapse navbar-collapse justify-content-between"
          id="navbarContent"
        >
          <!-- Centered Links -->
          <ul class="navbar-nav mx-auto">
            <li class="nav-item">
                        <li class="nav-item"><a class="nav-link" href="index.jsp">Home</a></li>
            
              <a class="nav-link active" aria-current="page" href="#">Donation</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
            <li class="nav-item">
              <a class="nav-link" href="contact.jsp">Contact</a>
            </li>
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

    <div class="container">
      <h2>Donate a Book</h2>
      <form id="donorForm" action="DonorServlet" method="post">
        <label for="donor_name">Donor Name:</label>
        <input type="text" name="donor_name" id="donor_name" required />

        <label for="book_name">Book Name:</label>
        <input type="text" name="book_name" id="book_name" required />

        <label for="book_author">Book Author:</label>
        <input type="text" name="book_author" id="book_author" required />

        <label for="book_year">Book published Year:</label>
        <input type="number" name="book_year" id="book_year" required />

        <label for="book_quantity">Book Quantity:</label>
        <input type="number" name="book_quantity" id="book_quantity" required />

        <label for="donor_phone_number">Donor Phone Number:</label>
        <input
          type="text"
          name="donor_phone_number"
          id="donor_phone_number"
          required
        />
               <label for="donor_email">Donor Email:</label>
        <input
          type="email"
          name="donor_email"
          id="donor_email"
          required
        />

        <label for="donor_address">Donor Address:</label>
        <textarea
          name="donor_address"
          id="donor_address"
          rows="4"
          required
        ></textarea>

        <input type="submit" value="Donate" />
      </form>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <script>
      document
        .getElementById("donorForm")
        .addEventListener("submit", function (event) {
          let phone = document.getElementById("donor_phone_number").value;
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
    </script>
  </body>
</html>
