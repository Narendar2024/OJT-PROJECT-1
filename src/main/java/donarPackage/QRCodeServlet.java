package donarPackage;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.qrcode.QRCodeWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.client.j2se.MatrixToImageWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;

@WebServlet("/GenerateQRCodeServlet")
public class QRCodeServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        String amount = request.getParameter("amount");

        if (amount == null || amount.isEmpty()) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Amount is required");
            return;
        }

        try {
            // Create payment URL with the amount parameter
            String paymentUrl = "https://yourpaymentgateway.com/pay?amount=" + amount;
            
            // Generate QR Code
            QRCodeWriter qrCodeWriter = new QRCodeWriter();
            BitMatrix bitMatrix = qrCodeWriter.encode(paymentUrl, BarcodeFormat.QR_CODE, 250, 250);

            // Convert BitMatrix to BufferedImage
            BufferedImage bufferedImage = MatrixToImageWriter.toBufferedImage(bitMatrix);

            // Set response type
            response.setContentType("image/png");

            // Write the image to the response output stream
            OutputStream os = response.getOutputStream();
            javax.imageio.ImageIO.write(bufferedImage, "PNG", os);
            os.flush();
        } catch (WriterException e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error generating QR code");
        }
    }
}
