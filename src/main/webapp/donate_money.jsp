<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
  <head>
    <title>Donate Money</title>
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
      body {
        margin: 0;
        padding: 0;
        overflow-x: hidden;
        box-sizing: border-box;
      }
        
      .navbar {
        padding-left: 142px;
        padding-right: 142px;
        width: 100%;
        background-color: #f8f9fa; /* Adjust background color if needed */
      }

    
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
      .form-container {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        margin: 20px 0;
      }
      h2 {
        text-align: center;
        color: #333;
        margin-bottom: 20px;
      }
      form {
        display: flex;
        flex-direction: column;
      }
      label {
        margin-bottom: 5px;
        font-weight: bold;
        color: #555;
      }
      input[type="text"],
      input[type="email"],
      input[type="number"],
      textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 15px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
      }
      input[type="submit"] {
        background-color: #4caf50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 16px;
      }
      input[type="submit"]:hover {
        background-color: #45a049;
      }
      .qr-code {
        text-align: center;
        margin-top: 20px;
      }
      @media (max-width: 600px) {
        .form-container {
          padding: 15px;
        }
        input[type="submit"] {
          font-size: 14px;
          padding: 10px 15px;
        }
      }
    </style>
    <script>
      function generateQRCode() {
        var amount = document.getElementById("amount").value;
        if (amount && amount > 0) {
          var qrCodeUrl =
            "GenerateQRCodeServlet?amount=" + encodeURIComponent(amount);
          document.getElementById("qr-code").src = qrCodeUrl;
          document.getElementById("qr-code-container").style.display = "block";
        } else {
          alert("Please enter a valid amount.");
        }
      }

      document.addEventListener("DOMContentLoaded", function () {
        document
          .getElementById("donate-form")
          .addEventListener("submit", function (event) {
            event.preventDefault(); // Prevent default form submission
            generateQRCode(); // Generate QR code
            // Optionally, you can add AJAX form submission here
          });
      });
    </script>
  </head>
  <body>
    <!-- Navbar -->
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
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="#">Home</a></li>
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
	
	
    <div class="container">
      <div class="form-container">
        <h2>Donate Money</h2>
        <form id="donate-form" action="MoneyDonorServlet" method="post">
          <label for="donor_name">Donor Name:</label>
          <input type="text" id="donor_name" name="donor_name" required />

          <label for="amount">Amount:</label>
          <input type="number" id="amount" name="amount" step="0.01" required />

          <label for="donor_phone_number">Donor Phone Number:</label>
          <input
            type="text"
            id="donor_phone_number"
            name="donor_phone_number"
            required
          />

          <label for="donor_email">Donor Email:</label>
          <input type="email" id="donor_email" name="donor_email" required />

          <label for="donor_address">Donor Address:</label>
          <textarea
            id="donor_address"
            name="donor_address"
            rows="4"
            required
          ></textarea>

          <input type="submit" value="Donate" />
        </form>
        <div id="qr-code-container" class="qr-code" style="display: none">
          <h3>QR Code for Payment:</h3>
          <img id="qr-code" src="" alt="QR Code" />
        </div>
      </div>
    </div>
  </body>
</html>

