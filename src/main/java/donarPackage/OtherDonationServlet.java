package donarPackage;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/OtherDonationServlet")
public class OtherDonationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC driver name and database URL
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/manaakitanga";

    // Database credentials
    private static final String USER = "root";
    private static final String PASS = "root"; // Replace with your MySQL password

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Set response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form data
        String donorName = request.getParameter("donor_name");
        String itemDescription = request.getParameter("item_description");
        String donorPhoneNumber = request.getParameter("donor_phone_number");
        String donorEmail = request.getParameter("donor_email");
        String donorAddress = request.getParameter("donor_address");
        String donationType = request.getParameter("donation_type");

        // Server-side validation (e.g., phone number length)
        if (donorPhoneNumber.length() != 10) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Donor Phone Number must be exactly 10 digits.');");
            out.println("window.location.href = 'home.jsp';");
            out.println("</script>");
            return; // Stop further processing
        }

        // JDBC code to insert data into the database
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            // Register JDBC driver
            Class.forName(JDBC_DRIVER);

            // Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // Create SQL insert statement
            String sql = "INSERT INTO other_donation (donor_name, item_description, donor_phone_number, donor_email, donor_address, donation_type) VALUES (?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, donorName);
            pstmt.setString(2, itemDescription);
            pstmt.setString(3, donorPhoneNumber);
            pstmt.setString(4, donorEmail);
            pstmt.setString(5, donorAddress);
            pstmt.setString(6, donationType);

            // Execute the statement
            pstmt.executeUpdate();

            // Respond with an alert and redirect to the form
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Thank you for your donation!');");
            out.println("window.location.href = 'other_donation.jsp';");
            out.println("</script>");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            out.println("<html><body><h3>Error recording donation.</h3></body></html>");
        } finally {
            // Clean-up environment
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }
}
