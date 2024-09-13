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

@WebServlet("/NGODonationServlet")
public class NGODonationServlet extends HttpServlet {
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
        String donorPhone = request.getParameter("donor_phone");
        String donorEmail = request.getParameter("donor_email");
        String donorAddress = request.getParameter("donor_address");
        String ngoType = request.getParameter("ngo_type");
        String ngoName = request.getParameter("ngo_name");
        String donationType = request.getParameter("donation_type");
        String donationAmount = request.getParameter("donation_amount");
        String additionalInfo = request.getParameter("additional_info");

        // JDBC code to insert data into database
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            // Register JDBC driver
            Class.forName(JDBC_DRIVER);

            // Open a connection
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            // Create SQL insert statement
            String sql = "INSERT INTO NGO_donors (donor_name, donor_phone, donor_email, donor_address, ngo_type, ngo_name, donation_type, donation_amount, additional_info) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, donorName);
            pstmt.setString(2, donorPhone);
            pstmt.setString(3, donorEmail);
            pstmt.setString(4, donorAddress);
            pstmt.setString(5, ngoType);
            pstmt.setString(6, ngoName);
            pstmt.setString(7, donationType);
            pstmt.setString(8, donationAmount);
            pstmt.setString(9, additionalInfo);

            // Execute the statement
            pstmt.executeUpdate();

            // Send invoice email
            sendInvoiceEmail(donorName, donorPhone, donorEmail, donorAddress, ngoType, ngoName, donationType, donationAmount, additionalInfo);

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

    private void sendInvoiceEmail(String donorName, String donorPhone, String donorEmail, String donorAddress, String ngoType, String ngoName, String donationType, String donationAmount, String additionalInfo) {
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
            message.setSubject("NGO Donation Invoice");

            // Set the actual message
            String emailContent = "<html><body>"
                + "<h3>NGO Donation Invoice</h3>"
                + "<p>Dear " + donorName + ",</p>"
                + "<p>Thank you for your generous donation. Here are the details of your donation:</p>"
                + "<ul>"
                + "<li><strong>NGO Type:</strong> " + ngoType + "</li>"
                + "<li><strong>NGO Name:</strong> " + ngoName + "</li>"
                + "<li><strong>Donation Type:</strong> " + donationType + "</li>"
                + "<li><strong>Donation Amount:</strong> " + donationAmount + "</li>"
                + "<li><strong>Phone Number:</strong> " + donorPhone + "</li>"
                + "<li><strong>Donor Address:</strong> " + donorAddress + "</li>"
                + "<li><strong>Additional Information:</strong> " + additionalInfo + "</li>"
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