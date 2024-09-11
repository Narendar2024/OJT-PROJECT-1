<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Book Donor Information Form</title>
    <link
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
      rel="stylesheet"
    />

    <!-- Include Font Awesome -->
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
      rel="stylesheet"
    />

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
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
              <a class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item"><a class="nav-link" href="#">Donations</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
            <li class="nav-item">
              <a class="nav-link" href="#contact">Contact</a>
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


    <!-- Footer -->
    <footer class="footer text-center py-3">
        <p>&copy; 2024 Donation Drive. All rights reserved.</p>
        
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

 
  </body>
</html>