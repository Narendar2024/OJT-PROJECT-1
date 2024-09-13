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
import jakarta.mail.*;
import jakarta.mail.internet.*;
import java.util.Properties;

@WebServlet("/FoodDonateServlet")
public class FoodDonateServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    // JDBC driver name and database URL
    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/manaakitanga";

    // Database credentials
    private static final String USER = "root";
    private static final String PASS = "root"; // Change this to your MySQL password

    // Email configuration
    private static final String SMTP_HOST = "smtp.gmail.com"; // Change to your SMTP server
    private static final String SMTP_PORT = "587"; // Change to your SMTP port
    private static final String EMAIL_USERNAME = "prasadshivasai22@gmail.com"; // Change to your SMTP username
    private static final String EMAIL_PASSWORD = "seff utnw cxyh gjdz"; // Change to your SMTP password

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // Set response content type
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form data
        String donorName = request.getParameter("donor_name");
        String foodType = request.getParameter("food_type");
        String foodName = request.getParameter("food_name");
        String foodQuantity = request.getParameter("food_quantity");
        String expiryDate = request.getParameter("expiry_date");
        String donorEmail = request.getParameter("donor_email");
        String donorPhone = request.getParameter("donor_phone");
        String pinCode = request.getParameter("pin_code");
        String postOffice = request.getParameter("post_office");
        String donorAddress = request.getParameter("donor_address");

        // JDBC code to insert data into database
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            // Register JDBC driver
            Class.forName(JDBC_DRIVER);

            // Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // Create SQL insert statement
            String sql = "INSERT INTO Food_donors (donor_name, food_type, food_name, food_quantity, expiry_date, donor_email, donor_phone, pin_code, post_office, donor_address) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, donorName);
            pstmt.setString(2, foodType);
            pstmt.setString(3, foodName);
            pstmt.setString(4, foodQuantity);
            pstmt.setString(5, expiryDate);
            pstmt.setString(6, donorEmail);
            pstmt.setString(7, donorPhone);
            pstmt.setString(8, pinCode);
            pstmt.setString(9, postOffice);
            pstmt.setString(10, donorAddress);

            // Execute the statement
            pstmt.executeUpdate();

            // Send invoice email
            sendInvoiceEmail(donorName, foodType, foodName, foodQuantity, expiryDate, donorEmail, donorPhone, pinCode, postOffice, donorAddress);

            // Respond with an alert and redirect to the form
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Thank you for your donation! An invoice has been sent to your email.');");
            out.println("window.location.href = 'home.jsp';");
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

    private void sendInvoiceEmail(String donorName, String foodType, String foodName, String foodQuantity, String expiryDate, String donorEmail, String donorPhone, String pinCode, String postOffice, String donorAddress) {
        // Set up email server properties
        Properties props = new Properties();
        props.put("mail.smtp.host", SMTP_HOST);
        props.put("mail.smtp.port", SMTP_PORT);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        // Create a session with an authenticator
        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(EMAIL_USERNAME, EMAIL_PASSWORD);
            }
        });

        try {
            // Create a default MimeMessage object
            Message message = new MimeMessage(session);

            // Set From: header field
            message.setFrom(new InternetAddress(EMAIL_USERNAME));

            // Set To: header field
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(donorEmail));

            // Set Subject: header field
            message.setSubject("Food Donation Invoice");

            // Set the actual message
            String emailContent = "<html><body>"
                + "<h3>Food Donation Invoice</h3>"
                + "<p>Dear " + donorName + ",</p>"
                + "<p>Thank you for your generous donation. Here are the details of your donation:</p>"
                + "<ul>"
                + "<li><strong>Food Type:</strong> " + foodType + "</li>"
                + "<li><strong>Food Name:</strong> " + foodName + "</li>"
                + "<li><strong>Quantity:</strong> " + foodQuantity + " kg</li>"
                + "<li><strong>Expiration Date:</strong> " + expiryDate + "</li>"
                + "<li><strong>Phone Number:</strong> " + donorPhone + "</li>"
                + "<li><strong>Pin Code:</strong> " + pinCode + "</li>"
                + "<li><strong>Nearest Post Office:</strong> " + postOffice + "</li>"
                + "<li><strong>Donor Address:</strong> " + donorAddress + "</li>"
                + "</ul>"
                + "<p>Thank you once again for your support!</p>"
                + "<p>Best regards,<br>The Charity Team</p>"
                + "</body></html>";

            message.setContent(emailContent, "text/html");

            // Send message
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}