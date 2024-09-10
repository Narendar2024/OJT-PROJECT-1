package com.Manaakitanga;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DBUtil {

    public static Connection getConnection() throws Exception {
        String url = "jdbc:mysql://localhost:3306/manaakitanga";
        String username = "root";
        String password = "root";
        Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, username, password);
    }

    public static void saveUser(String firstname, String lastname, String email, String mobile, String location, String password) {
        try (Connection con = getConnection()) {
            String query = "INSERT INTO users (firstname, lastname, email, mobile, location, password) VALUES (?, ?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, email);
            ps.setString(4, mobile);
            ps.setString(5, location);
            ps.setString(6, password);
            int result = ps.executeUpdate();
            
            // Debugging: Print to confirm successful insertion
            if (result > 0) {
                System.out.println("User inserted successfully into the database.");
            } else {
                System.out.println("User not inserted into the database.");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static boolean validateUser(String email, String password) {
        try (Connection con = getConnection()) {
            String query = "SELECT * FROM users WHERE email = ? AND password = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            return rs.next();  // Return true if user exists
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }
    
    public static String getUserFirstNameByEmail(String email) {
        String firstname = null;
        try (Connection con = getConnection()) {
            String query = "SELECT firstname FROM users WHERE email = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                firstname = rs.getString("firstname");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return firstname;
    }
}
