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
  font-family: Arial, sans-serif;
  background: url('img/') no-repeat center center fixed;
  background-size: cover;
  position: relative;
}

body::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.5); /* Black overlay with 50% opacity */
  z-index: -1; /* Ensure the overlay is behind the content */
}
      /* Navbar Styles */
.navbar {
  position: sticky;
  top: 0;
  z-index: 1000; /* Ensures the navbar is above all other content */
  padding-left: 142px;
  padding-right: 142px;
  width: 100%;
  background-color: #f8f9fa; /* Adjust background color if needed */
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1); /* Optional: adds a slight shadow for effect */
}

/* Responsive Navbar Padding */
@media only screen and (max-width: 768px) {
  .navbar {
    padding-left: 10px;
    padding-right: 10px;
  }
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
    /* Container Styling */

.container {
  max-width: 600px;
  margin: 30px auto;
  background-color: rgba(255, 255, 255, 0.8); /* White background with 80% opacity */
  padding: 20px;
  box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
  border-radius: 8px;
}

h2 {
  text-align: center;
  color: #333;
  margin-bottom: 20px;
  font-weight: 700;
  text-transform: uppercase;
  letter-spacing: 1px;
}

input[type="text"], input[type="email"], input[type="number"], textarea, select {
  width: 100%;
  padding: 12px;
  margin: 10px 0;
  border: 1px solid #ccc;
  border-radius: 5px;
  font-size: 16px;
  font-family: 'Roboto', sans-serif;
  transition: border-color 0.3s ease;
}

input[type="text"]:focus, input[type="email"]:focus, input[type="number"]:focus, textarea:focus, select:focus {
  border-color: #28a745;
}

input[type="submit"] {
  background-color: #28a745;
  color: white;
  padding: 12px;
  font-size: 18px;
  border: none;
  cursor: pointer;
  width: 100%;
  margin-top: 10px;
  border-radius: 5px;
  transition: background-color 0.3s ease;
}

input[type="submit"]:hover {
  background-color: #218838;
}

label {
  font-size: 14px;
  font-weight: bold;
  color: #555;
}

textarea {
  resize: vertical;
}

/* NGO results styling */
.ngo-results {
  border: 1px solid #ccc;
  padding: 10px;
  max-height: 200px;
  overflow-y: auto;
  display: none; /* Initially hidden */
  background-color: #f9f9f9;
}

.ngo-results.active {
  display: block; /* Show when results are available */
}

.ngo-results button {
  display: block;
  width: 100%;
  padding: 8px;
  margin: 2px 0;
  background-color: #f8f9fa;
  border: 1px solid #ccc;
  cursor: pointer;
  text-align: left;
}

.ngo-results button:hover {
  background-color: #e9ecef;
}

/* Footer Styling */
.footer {
  background-color: #343a40;
  color: white;
  padding: 10px;
  font-size: 14px;
}

/* Mobile Responsive Design */
@media (max-width: 768px) {
  .navbar {
    padding-left: 30px;
    padding-right: 30px;
  }

  .container {
    max-width: 100%;
    padding: 15px;
  }

  h2 {
    font-size: 1.5rem;
  }

  input[type="submit"] {
    font-size: 16px;
    padding: 10px;
  }
}

@media (max-width: 576px) {
  .navbar-brand span {
    font-size: 1rem;
  }

  .navbar-nav .nav-link {
    font-size: 14px;
  }

  input[type="submit"] {
    padding: 8px;
    font-size: 14px;
  }

  .footer {
    font-size: 12px;
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
            <li class="nav-item"><a class="nav-link" href="home.jsp">Home</a></li>
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
      <h2>NGO Donation Form</h2>
      <form action="NGODonationServlet" method="POST">
        <label for="donor_name">Donor Name:</label>
        <input type="text" id="donor_name" name="donor_name" required>

        <label for="donor_phone">Donor Phone Number:</label>
        <input type="text" id="donor_phone" name="donor_phone" required>

        <label for="donor_email">Donor Email:</label>
        <input type="email" id="donor_email" name="donor_email" required>

        <label for="donor_address">Donor Address:</label>
        <textarea id="donor_address" name="donor_address" rows="2" required></textarea>

        <label for="ngo_type">NGO Type:</label>
        <select id="ngo_type" name="ngo_type" required onchange="filterNGOs()">
          <option value="">Select NGO Type</option>
          <option value="healthcare">Healthcare</option>
          <option value="education">Education</option>
          <option value="environment">Environment</option>
          <option value="poverty_alleviation">Poverty Alleviation</option>
          <option value="other">Other</option>
        </select>

        <label for="ngo_search">Search NGO:</label>
        <input type="text" id="ngo_search" name="ngo_search" placeholder="Search NGO" onkeyup="searchNGO()">
        
        <div id="ngo_results" class="ngo-results"></div>

        <label for="ngo_name">NGO Name:</label>
        <input type="text" id="ngo_name" name="ngo_name" required>

        <label for="donation_type">Donation Type:</label>
        <select id="donation_type" name="donation_type" required>
          <option value="food">Food</option>
          <option value="money">Money</option>
          <option value="clothing">Clothing</option>
          <option value="books">Books</option>
          <option value="other">Other</option>
        </select>

        <label for="donation_amount">Donation Amount (if applicable):</label>
        <input type="number" id="donation_amount" name="donation_amount">

        <label for="additional_info">Additional Information:</label>
        <textarea id="additional_info" name="additional_info" rows="4" placeholder="About donation"></textarea>

        <input type="submit" value="Donate Now">
      </form>
    </div>

    <script>
      const ngoData = {
        healthcare: ["Helping Hand Foundation", "United Way Hyderabad", "Synergy India Foundation", "Sushena Health Foundation"],
        education: ["Teach For India", "Smile Foundation", "Pratham Education Foundation"],
        environment: ["Greenpeace India", "WWF India", "Environment Protection Society"],
        poverty_alleviation: ["ActionAid India", "Goonj", "The Akshaya Patra Foundation"]
      };

      function filterNGOs() {
        const selectedType = document.getElementById("ngo_type").value;
        const ngoResultsDiv = document.getElementById("ngo_results");
        ngoResultsDiv.innerHTML = '';  // Clear previous results

        if (selectedType && ngoData[selectedType]) {
          ngoResultsDiv.classList.add("active");  // Show the results section
          ngoData[selectedType].forEach(ngo => {
            const button = document.createElement("button");
            button.innerHTML = ngo;
            button.onclick = function() {
              document.getElementById("ngo_name").value = ngo;
              ngoResultsDiv.innerHTML = '';  // Clear results after selection
              ngoResultsDiv.classList.remove("active");  // Hide results section
            };
            ngoResultsDiv.appendChild(button);
          });
        } else {
          ngoResultsDiv.classList.remove("active");  // Hide results section if no NGO type is selected
        }
      }

      function searchNGO() {
        const searchQuery = document.getElementById("ngo_search").value.toLowerCase();
        const selectedType = document.getElementById("ngo_type").value;
        const ngoResultsDiv = document.getElementById("ngo_results");
        ngoResultsDiv.innerHTML = '';  // Clear previous results

        if (selectedType && ngoData[selectedType]) {
          const filteredNGOs = ngoData[selectedType].filter(ngo => ngo.toLowerCase().includes(searchQuery));
          filteredNGOs.forEach(ngo => {
            const button = document.createElement("button");
            button.innerHTML = ngo;
            button.onclick = function() {
              document.getElementById("ngo_name").value = ngo;
              ngoResultsDiv.innerHTML = '';  // Clear results after selection
              ngoResultsDiv.classList.remove("active");  // Hide results section
            };
            ngoResultsDiv.appendChild(button);
          });

          if (filteredNGOs.length > 0) {
            ngoResultsDiv.classList.add("active");  // Show the results section if there are matching NGOs
          } else {
            ngoResultsDiv.classList.remove("active");  // Hide results section if no matches
          }
        }
      }
    </script>


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