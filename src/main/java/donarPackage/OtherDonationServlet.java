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

@WebServlet("/OtherDonationServlet")
public class OtherDonationServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private static final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String DB_URL = "jdbc:mysql://localhost:3306/manaakitanga";
    private static final String USER = "root";
    private static final String PASS = "root"; // Replace with your MySQL password

    private static final String SMTP_HOST = "smtp.gmail.com"; // SMTP server
    private static final String SMTP_PORT = "587"; // SMTP port
    private static final String EMAIL_USERNAME = "prasadshivasai22@gmail.com"; // Your email
    private static final String EMAIL_PASSWORD = "seff utnw cxyh gjdz"; // Your email password

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        // Retrieve form data
        String donorName = request.getParameter("donor_name");
        String donorPhoneNumber = request.getParameter("donor_phone_number");
        String donorEmail = request.getParameter("donor_email");
        String donorAddress = request.getParameter("donor_address");
        String donationType = request.getParameter("donation_type");
        String quantity = request.getParameter("quantity");
        String itemDescription = request.getParameter("item_description");

        // Server-side validation
        if (donorPhoneNumber.length() != 10) {
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Donor Phone Number must be exactly 10 digits.');");
            out.println("window.location.href = 'other_donation.jsp';");
            out.println("</script>");
            return;
        }

        // JDBC code to insert data into the database
        Connection conn = null;
        PreparedStatement pstmt = null;
        try {
            Class.forName(JDBC_DRIVER);
            conn = DriverManager.getConnection(DB_URL, USER, PASS);

            String sql = "INSERT INTO other_donation (donor_name, donor_phone_number, donor_email, donor_address, donation_type, quantity, item_description) VALUES (?, ?, ?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, donorName);
            pstmt.setString(2, donorPhoneNumber);
            pstmt.setString(3, donorEmail);
            pstmt.setString(4, donorAddress);
            pstmt.setString(5, donationType);
            pstmt.setString(6, quantity);
            pstmt.setString(7, itemDescription);

            pstmt.executeUpdate();
            sendInvoiceEmail(donorName, donorPhoneNumber, donorEmail, donorAddress, donationType, quantity, itemDescription);
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Thank you for your donation! An invoice has been sent to your email.');");
            out.println("window.location.href = 'other_donation.jsp';");
            out.println("</script>");
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            out.println("<html><body><h3>Error recording donation.</h3></body></html>");
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException se) {
                se.printStackTrace();
            }
        }
    }

    private void sendInvoiceEmail(String donorName, String donorPhone, String donorEmail, String donorAddress, String donationType, String quantity, String itemDescription) {
        Properties props = new Properties();
        props.put("mail.smtp.host", SMTP_HOST);
        props.put("mail.smtp.port", SMTP_PORT);
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(EMAIL_USERNAME, EMAIL_PASSWORD);
            }
        });

        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(EMAIL_USERNAME));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(donorEmail));
            message.setSubject("Donation Invoice");

            String emailContent = "<html><body>"
                + "<h3>Donation Invoice</h3>"
                + "<p>Dear " + donorName + ",</p>"
                + "<p>Thank you for your generous donation. Here are the details:</p>"
                + "<ul>"
                + "<li><strong>Donation Type:</strong> " + donationType + "</li>"
                + "<li><strong>Quantity:</strong> " + quantity + "</li>"
                + "<li><strong>Item Description:</strong> " + itemDescription + "</li>"
                + "<li><strong>Phone Number:</strong> " + donorPhone + "</li>"
                + "<li><strong>Donor Address:</strong> " + donorAddress + "</li>"
                + "</ul>"
                + "<p>Best regards,<br>The Charity Team</p>"
                + "</body></html>";

            message.setContent(emailContent, "text/html");
            Transport.send(message);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}