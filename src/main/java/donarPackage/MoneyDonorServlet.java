package donarPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Properties;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.mail.*;
import jakarta.mail.internet.*;

@WebServlet("/MoneyDonorServlet")
public class MoneyDonorServlet extends HttpServlet {
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
		double amount = Double.parseDouble(request.getParameter("amount"));
		String donorPhoneNumber = request.getParameter("donor_phone_number");
		String donorEmail = request.getParameter("donor_email");
		String donorAddress = request.getParameter("donor_address");
		String donationMode = request.getParameter("donation_mode"); // Retrieve donation mode

		// Server-side validation
		if (donorPhoneNumber.length() != 10) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Donor Phone Number must be exactly 10 digits.');");
			out.println("window.location.href = 'donate_money.jsp';");
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

			// Create SQL insert statement, including the donation mode
			String sql = "INSERT INTO Money_donors (donor_name, amount, donation_mode, donor_phone_number, donor_email, donor_address) VALUES (?, ?, ?, ?, ?, ?)";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, donorName);
			pstmt.setDouble(2, amount);
			pstmt.setString(3, donationMode); // Store donation mode
			pstmt.setString(4, donorPhoneNumber);
			pstmt.setString(5, donorEmail);
			pstmt.setString(6, donorAddress);

			// Execute the statement
			pstmt.executeUpdate();

			// Send a thank you email
			sendThankYouEmail(donorName, donorPhoneNumber, donorEmail, amount, donorAddress);

			// Respond with an alert and redirect to the form
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Thank you for your donation! An invoice has been sent to your email.');");
			out.println("window.location.href = 'donate_money.jsp';");
			out.println("</script>");
		} catch (SQLException | ClassNotFoundException e) {
			e.printStackTrace();
			out.println("<html><body><h3>Error recording donation.</h3></body></html>");
		} finally {
			// Clean-up environment
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (SQLException se) {
				se.printStackTrace();
			}
		}
	}

	private void sendThankYouEmail(String donorName, String donorPhoneNumber, String donorEmail, double amount,
			String donorAddress) {
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
			message.setSubject("Thank You for Your Donation!");

			// Set the actual message
			String emailContent = "<html><body>" + "<h3>Donation Receipt</h3>" + "<p>Dear " + donorName + ",</p>"
					+ "<p>Thank you for your generous donation of Rs. " + amount + ". Here are the details:</p>"
					+ "<ul>" + "<li><strong>Donor Phone Number:</strong> " + donorPhoneNumber + "</li>"
					+ "<li><strong>Donor Address:</strong> " + donorAddress + "</li>" + "</ul>"
					+ "<p>We appreciate your support!</p>" + "<p>Best regards,<br>The Charity Team</p>"
					+ "</body></html>";

			message.setContent(emailContent, "text/html");

			// Send message
			Transport.send(message);
		} catch (MessagingException e) {
			e.printStackTrace();
		}
	}
}
