<!DOCTYPE html>
<html>
  <head>
    <title>Other Donation</title>
    <link
      href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"
      rel="stylesheet"
    />
    <link
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css"
      rel="stylesheet"
    />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <style>
      body {
        margin: 0;
        padding: 0;
        
        box-sizing: border-box;
        height: 150vh; /* Full viewport height */
        background: url("assets/image9.jpg") no-repeat center
          center fixed;
        background-size: cover;
        position: relative;
      }
      body::after {
        content: "";
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-color: rgba(0, 0, 0, 0.5);
        z-index: -1;
      }
      .navbar {
        padding: 0 142px;
        width: 100%;
        background-color: #f8f9fa;
        position: sticky;
        top: 0;
        z-index: 10; /* Sticky navbar */
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
        max-width: 800px;
        padding: auto; /* Adjust container padding */
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
      }
      .form-container {
        background: rgba(255, 255, 255, 0.8);
        padding: 15px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      }
      h2 {
        text-align: center;
        color: #333;
        margin-bottom: 15px;
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
      textarea,
      select {
        width: 100%;
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ddd;
        border-radius: 4px;
        box-sizing: border-box;
      }
      input[type="submit"] {
        background-color: #4caf50;
        color: white;
        padding: 10px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        font-size: 14px;
      }
      input[type="submit"]:hover {
        background-color: #45a049;
      }
      @media (max-width: 600px) {
        .container {
          width: 90%;
          padding: 10px;
        }
        input[type="submit"] {
          font-size: 12px;
          padding: 8px 10px;
        }
      }
    </style>
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
        <h2>Other Donation</h2>
        <form id="donate-form" action="OtherDonationServlet" method="post">
          <label for="donor_name">Donor Name:</label>
          <input type="text" id="donor_name" name="donor_name" required />
          <label for="item_description">Item Description:</label>
          <textarea
            id="item_description"
            name="item_description"
            rows="2"
            required
          ></textarea>
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
            rows="2"
            required
          ></textarea>
          <label for="donation_type">Donation Type:</label>
          <select id="donation_type" name="donation_type" required>
            <option value="">Select a type</option>
            <option value="Electronic Items">Electronic Items</option>
            <option value="Hardware Items">Hardware Items</option>
            <option value="Clothing">Clothing</option>
            <option value="Furniture">Furniture</option>
            <option value="Other items">Other Items</option>
          </select>
          <input type="submit" value="Donate" />
        </form>
      </div>
    </div>
  </body>
</html>
