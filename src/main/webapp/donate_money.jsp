<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Donate Money</title>
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	rel="stylesheet" />
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
	rel="stylesheet" />

<!-- Include Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
	rel="stylesheet" />

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
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
	background-color: #f8f9fa;
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
	max-width: 700px;
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
	min-height: 400px; /* Ensure the form container has a minimum height */
}

h2 {
	text-align: center;
	color: #333;
	margin-bottom: 20px;
	font-size: 1.5rem;
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

input[type="text"], input[type="email"], input[type="number"], textarea
	{
	width: 100%;
	padding: 12px; /* Adjust padding for better spacing */
	margin-bottom: 15px;
	border: 1px solid #ddd;
	border-radius: 4px;
	box-sizing: border-box;
	min-height: 40px; /* Ensure a minimum height for input fields */
}

textarea {
	resize: vertical;
	min-height: 80px; /* Set a minimum height for the textarea */
}

input[type="submit"] {
	background-color: #4caf50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	margin-top: 10px; /* Add margin to separate from other elements */
}

input[type="submit"]:hover {
	background-color: #45a049;
}

.qr-code {
	text-align: center;
	margin-top: 20px;
}

.qr-code img {
	max-width: 100%;
	height: auto;
}

.donor-address-container, .qr-code-container {
	display: block; /* Ensure both containers are visible initially */
}

@media ( max-width : 600px) {
	.container {
		padding: 15px;
	}
	input[type="submit"] {
		font-size: 14px;
		padding: 10px 15px;
	}
	.form-container {
		padding: 15px;
		min-height: 300px; /* Adjust minimum height for smaller screens */
	}
	
}
select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
        background-color: #f9f9f9;
        box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.1);
      }
      select:focus {
        border-color: #66afe9;
        outline: none;
        box-shadow: 0 0 8px rgba(102, 175, 233, 0.6);
      }
</style>
<script>
	// Function to toggle fields based on donation mode
	function toggleDonationMode() {
		var donationMode = document.getElementById("donation_mode").value;
		var addressField = document.getElementById("donor_address_container");
		var qrCodeContainer = document.getElementById("qr-code-container");

		if (donationMode === "Online") {
			// Hide address field for online donations
			addressField.style.display = "none";
			qrCodeContainer.style.display = "block"; // Show QR Code for online
		} else {
			// Show address field for offline donations
			addressField.style.display = "block";
			qrCodeContainer.style.display = "none"; // Hide QR Code for offline
		}
	}

	function generateQRCode() {
		var amount = document.getElementById("amount").value;
		if (amount && amount > 0) {
			var qrCodeUrl = "GenerateQRCodeServlet?amount="
					+ encodeURIComponent(amount);
			document.getElementById("qr-code").src = qrCodeUrl;
			document.getElementById("qr-code-container").style.display = "block";
		} else {
			alert("Please enter a valid amount.");
		}
	}

	document.addEventListener("DOMContentLoaded", function() {
		document.getElementById("donate-form")
				.addEventListener(
						"submit",
						function(event) {
							event.preventDefault(); // Prevent default form submission
							var donationMode = document
									.getElementById("donation_mode").value;
							if (donationMode === "Online") {
								generateQRCode(); // Generate QR code for online donation
								// Redirect to payment mode can be added here
							} else {
								// Proceed with offline donation (no QR code)
								this.submit();
							}
						});
	});
</script>

</head>
<body>
	<!-- Navbar -->
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
					<li class="nav-item"><a class="nav-link" href="#">Donations</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
					<li class="nav-item"><a class="nav-link" href="#contact">Contact</a>
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
		<div class="form-container">
			<h2>Donate Money</h2>
			<form id="donate-form" action="MoneyDonorServlet" method="post">
				<label for="donor_name">Donor Name:</label> <input type="text"
					id="donor_name" name="donor_name" required /> <label for="amount">Amount:</label>
				<input type="number" id="amount" name="amount" step="0.01" required />
				<label for="donationMode">Donation Mode:</label>
          <select id="donationMode" name="donationMode" onchange="toggleDonationMode()">
          <option value="" name="select the mode">selct the mode</option>
            <option value="Online">Online</option>
            <option value="Offline">Offline</option>
          </select>

			 <label for="donor_phone_number">Donor Phone Number:</label> <input
					type="text" id="donor_phone_number" name="donor_phone_number"
					required /> <label for="donor_email">Donor
					Email:</label> <input type="email" id="donor_email" name="donor_email"
					required />
					
						

				<!-- Donor Address, hidden for online donations -->
				<div id="donor_address_container">
					<label for="donor_address">Donor Address:</label>
					<textarea id="donor_address" name="donor_address" rows="4"></textarea>
				</div>

				<input type="submit" value="Donate" />
			</form>

			<!-- QR Code section, shown for online donations -->
			<div id="qr-code-container" class="qr-code" style="display: none">
				<h3>QR Code for Payment:</h3>
				<img id="qr-code" src="" alt="QR Code" />
			</div>
		</div>
	</div>
</body>
</html>