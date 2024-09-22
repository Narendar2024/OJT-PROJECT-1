package com.Manaakitanga;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DBUtil {

	// Method to establish a connection to the database
//	public static Connection getConnection() throws Exception {
//		String url = "jdbc:mysql://localhost:3306/manaakitanga"; // Database URL
//		String username = "root"; // MySQL username
//		String password = "root"; // MySQL password
//		Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL JDBC driver
//		Connection con = DriverManager.getConnection(url, username, password);
//
//		// Test the connection
//		if (con != null) {
//			System.out.println("Connection successful!");
//		} else {
//			System.out.println("Connection failed!");
//		}
//		return con;
//	}

	public static Connection getConnection() throws SQLException {
		String url = "jdbc:mysql://localhost:3306/manaakitanga"; // Database URL
		String username = "root"; // MySQL username
		String password = "root"; // MySQL password
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); // MySQL JDBC driver
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			throw new SQLException("JDBC Driver not found.", e);
		}
		return DriverManager.getConnection(url, username, password);
	}

	// Method to save a new user to the database
	public static void saveUser(String firstname, String lastname, String email, String mobile, String location,
			String password) {
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

			if (result > 0) {
				System.out.println("User inserted successfully into the database.");
			} else {
				System.out.println("User not inserted into the database.");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// Method to validate user credentials during login
	public static boolean validateUser(String email, String password) {
		try (Connection con = getConnection()) {
			String query = "SELECT * FROM users WHERE email = ? AND password = ?";
			PreparedStatement ps = con.prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			ps.setString(1, email);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			return rs.next(); // Return true if user exists
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	// Method to fetch the user's first name using their email
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

	// Method to fetch all user details from the database
	public static ArrayList<User> getAllUsers() {
		ArrayList<User> userList = new ArrayList<>();
		try (Connection con = getConnection()) {
			String query = "SELECT * FROM users";
			PreparedStatement ps = con.prepareStatement(query, ResultSet.TYPE_SCROLL_INSENSITIVE,
					ResultSet.CONCUR_READ_ONLY);
			ResultSet rs = ps.executeQuery();

			rs.last();
			int rowCount = rs.getRow();
			System.out.println("Rows returned: " + rowCount);
			rs.beforeFirst();

			while (rs.next()) {
				User user = new User();
				user.setId(rs.getInt("id"));
				user.setFirstName(rs.getString("firstname"));
				user.setLastName(rs.getString("lastname"));
				user.setEmail(rs.getString("email"));
				user.setMobile(rs.getString("mobile"));
				user.setLocation(rs.getString("location"));

				userList.add(user);
			}

			System.out.println("Total users fetched: " + userList.size());
		} catch (Exception e) {
			System.err.println("Error fetching users: " + e.getMessage());
			e.printStackTrace();
		}
		return userList;
	}

	// Method to get user details by ID
	// Example: Updated getUserById method
	public static User getUserById(int id) throws SQLException {
		User user = null;
		try (Connection con = getConnection()) {
			String query = "SELECT * FROM users WHERE id = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();

			if (rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setFirstName(rs.getString("firstname"));
				user.setLastName(rs.getString("lastname"));
				user.setEmail(rs.getString("email"));
				user.setMobile(rs.getString("mobile"));
				user.setLocation(rs.getString("location"));
			}
		} catch (SQLException e) {
			// Log or handle the SQLException specifically
			System.err.println("SQL Exception: " + e.getMessage());
			throw e; // Rethrow to handle in the calling method
		} catch (Exception e) {
			// Handle other exceptions
			System.err.println("Unexpected error: " + e.getMessage());
		}
		return user; // Return null if user not found or an error occurs
	}

	// Method to update user details
	public static void updateUser(int id, String firstname, String lastname, String email, String mobile,
			String location) throws SQLException {
		// Database logic here
		try (Connection conn = getConnection();
				PreparedStatement stmt = conn.prepareStatement(
						"UPDATE users SET firstname = ?, lastname = ?, email = ?, mobile = ?, location = ? WHERE id = ?")) {

			stmt.setString(1, firstname);
			stmt.setString(2, lastname);
			stmt.setString(3, email);
			stmt.setString(4, mobile);
			stmt.setString(5, location);
			stmt.setInt(6, id);

			stmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
			throw e; // Make sure the SQLException is thrown back to the servlet
		}
	}

	// Method to delete user by ID
	public static boolean deleteUserById(int id) throws Exception {
		boolean isDeleted = false;
		try (Connection con = getConnection()) {
			String query = "DELETE FROM users WHERE id = ?";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, id);
			int rowsAffected = ps.executeUpdate();
			isDeleted = rowsAffected > 0; // Check if rows were affected
		}
		return isDeleted; // Return true if deletion was successful
	}

	// Method to log user activity
	public static void logUserActivity(int userId, String activity) {
		try (Connection con = getConnection()) {
			String query = "INSERT INTO user_activity_log (user_id, activity, timestamp) VALUES (?, ?, NOW())";
			PreparedStatement ps = con.prepareStatement(query);
			ps.setInt(1, userId);
			ps.setString(2, activity);
			ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
