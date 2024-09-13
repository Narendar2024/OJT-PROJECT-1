package donarPackage;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;

@WebServlet("/FetchPostalAgenciesServlet")
public class FetchPostalAgenciesServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        // Get pin code from request
        String pinCode = request.getParameter("pin_code");

        // Set response content type
        response.setContentType("application/json");
        PrintWriter out = response.getWriter();

        // API URL and token for APYHub
        String apiUrl = "https://api.apyhub.com/validate/postcodes/in";
        String apiToken = "APY0IRgnkaCbMlbpDKEKqpPZhF0LHYJ8NqfBIHnTfGT5YoQjAoLPIoYAVZpTXoNcuizHIMY9kI6";
        
        try {
            // Build the request using Java HttpClient
            HttpClient client = HttpClient.newHttpClient();
            HttpRequest apiRequest = HttpRequest.newBuilder()
                .uri(URI.create(apiUrl))
                .POST(HttpRequest.BodyPublishers.ofString("{\"postcode\":\"" + pinCode + "\"}"))
                .setHeader("Content-Type", "application/json")
                .setHeader("apy-token", apiToken)
                .build();

            // Send the request and get the response
            HttpResponse<String> apiResponse = client.send(apiRequest, HttpResponse.BodyHandlers.ofString());

            // Check if the request was successful
            if (apiResponse.statusCode() == 200) {
                // Parse JSON response
                JSONObject jsonResponse = new JSONObject(apiResponse.body());

                // Send the response back to the client (JSP)
                out.print(jsonResponse.toString());
            } else {
                // If request failed, send an error message
                out.print("{\"error\": \"Failed to fetch postal agencies\"}");
            }
        } catch (Exception e) {
            e.printStackTrace();
            out.print("{\"error\": \"Exception occurred while fetching postal agencies\"}");
        } finally {
            out.flush();
        }
    }
}
