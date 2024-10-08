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

@WebServlet("/DonorServlet")
public class DonerServlet extends HttpServlet {
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
        String bookName = request.getParameter("book_name");
        String bookAuthor = request.getParameter("book_author");
        int bookYear = Integer.parseInt(request.getParameter("book_year"));
        int bookQuantity = Integer.parseInt(request.getParameter("book_quantity"));
        String donorPhoneNumber = request.getParameter("donor_phone_number");
        String donorEmail = request.getParameter("donor_email");
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
            String sql = "INSERT INTO Book_donors (donor_name, book_name, book_author, book_year, book_quantity, donor_phone_number, donor_email, donor_address) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, donorName);
            pstmt.setString(2, bookName);
            pstmt.setString(3, bookAuthor);
            pstmt.setInt(4, bookYear);
            pstmt.setInt(5, bookQuantity);
            pstmt.setString(6, donorPhoneNumber);
            pstmt.setString(7, donorEmail);
            pstmt.setString(8, donorAddress);

            // Execute the statement
            pstmt.executeUpdate();

            // Send invoice email
            sendInvoiceEmail(donorEmail, donorName, bookName, bookAuthor, bookYear, bookQuantity, donorAddress);

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

    private void sendInvoiceEmail(String toEmail, String donorName, String bookName, String bookAuthor, int bookYear, int bookQuantity, String donorAddress) {
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
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(toEmail));

            // Set Subject: header field
            message.setSubject("Donation Invoice");

            // Set the actual message
            String emailContent = "<html><body>"
                + "<h3>Donation Invoice</h3>"
                + "<p>Dear " + donorName + ",</p>"
                + "<p>Thank you for your generous donation. Here are the details of your donation:</p>"
                + "<ul>"
                + "<li><strong>Book Name:</strong> " + bookName + "</li>"
                + "<li><strong>Book Author:</strong> " + bookAuthor + "</li>"
                + "<li><strong>Book Published Year:</strong> " + bookYear + "</li>"
                + "<li><strong>Book Quantity:</strong> " + bookQuantity + "</li>"
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
