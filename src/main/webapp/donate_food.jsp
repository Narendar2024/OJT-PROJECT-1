<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

 <head>
    <title>Donate Food Form</title>
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
 .container {
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.1);
        }

        h2 {
            text-align: center;
            color: #333;
        }

        input[type="text"], input[type="email"], input[type="date"], input[type="number"], textarea {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px 0;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        select {
            width: 100%;
            padding: 10px;
            margin: 5px 0 20px 0;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #218838;
        }

        /* Responsive Design */
        @media (max-width: 768px) {
            .navbar {
                padding-left: 15px;
                padding-right: 15px;
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
    
    <div class="container">
    <h2>Donate Food</h2>
    <form action="FoodDonateServlet" method="POST">
        <label for="donor_name">Donor Name:</label>
        <input type="text" id="donor_name" name="donor_name" required>
                

            <label for="food_type">Food Type:</label>
            <select id="food_type" name="food_type" required>
                <option value="dry">Dry</option>
                <option value="fruit">Fruit</option>
                <option value="vegetable">Vegetable</option>
                <option value="canned">Canned</option>
                <option value="other">Other</option>
            </select><br><br>

        <label for="food_name">Food Name:</label>
        <input type="text" id="food_name" name="food_name" required>

        <label for="food_quantity">Quantity (in kg):</label>
        <input type="number" id="food_quantity" name="food_quantity" required>

        <label for="expiry_date">Expiration Date:</label>
        <input type="date" id="expiry_date" name="expiry_date" required>

        <label for="donor_email">Donor Email:</label>
        <input type="email" id="donor_email" name="donor_email" required>

        <label for="donor_phone">Donor Phone Number:</label>
        <input type="text" id="donor_phone" name="donor_phone" required>
        
        
            <label for="pin_code">Pin Code:</label>
            <input type="text" id="pin_code" name="pin_code" required>
            <button type="button" onclick="fetchNearestPostOffice()">Find Nearest Post Office</button><br><br>
            
            <label for="post_office">Nearest Post Office:</label>
            <input type="text" id="post_office" name="post_office" readonly><br><br>

        <label for="donor_address">Donor Address:</label>
        <textarea id="donor_address" name="donor_address" rows="4" required></textarea>

        <input type="submit" value="Donate Now">
    </form>
</div>


    <!-- Footer -->
    <footer class="footer text-center py-3">
        <p>&copy; 2024 Donation Drive. All rights reserved.</p>
        
    </footer>

    <!-- Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        function fetchNearestPostOffice() {
            var pinCode = document.getElementById('pin_code').value;
            if (pinCode) {
                var apiUrl = `https://indian-new-pincode-api.p.rapidapi.com/api/Indian-Pincode-Details/?pincode=${500044}`;
                
                fetch(apiUrl, {
                    method: 'GET',
                    headers: {
                        'x-rapidapi-key': 'bf4623de4bmsh6817c331df527cdp1aaa57jsn86da3b39987a',
                        'x-rapidapi-host': 'indian-new-pincode-api.p.rapidapi.com'
                    }
                })
                .then(response => response.json())
                .then(data => {
                    if (data && data.data && data.data.length > 0 && data.data[0].PostOfficeName) {
                        document.getElementById('post_office').value = data.data[0].PostOfficeName;
                    } else {
                        document.getElementById('post_office').value = 'No post office found';
                    }
                })
                .catch(error => console.error('Error fetching post office data:', error));
            } else {
                alert('Please enter a pin code.');
            }
        }
    </script>

 
  </body>
</html>