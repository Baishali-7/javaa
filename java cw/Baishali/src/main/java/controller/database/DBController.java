package controller.database;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.CartModel;
import model.RegisterModel;
import utils.StringUtils;

public class DBController {

	/**
	 * Establishes a connection to the database using pre-defined credentials and driver information.
	 * 
	 * @return A `Connection` object representing the established connection to the database.
	 * @throws SQLException if a database access error occurs.
	 * @throws ClassNotFoundException if the JDBC driver class is not found.
	 */
	public Connection getConnection() throws SQLException, ClassNotFoundException {

	    // Load the JDBC driver class specified by the StringUtils.DRIVER_NAME constant
	    Class.forName(StringUtils.DRIVER_NAME);

	    // Create a connection to the database using the provided credentials
	    return DriverManager.getConnection(StringUtils.LOCALHOST_URL, StringUtils.LOCALHOST_USERNAME,
	                                      StringUtils.LOCALHOST_PASSWORD);
	}


	/**
	 * This method attempts to register a new student in the database.
	 * 
	 * @param student A `StudentModel` object containing the student's information.
	 * @return An integer value indicating the registration status:
	 *         - 1: Registration successful
	 *         - 0: Registration failed (no rows affected)
	 *         - -1: Internal error (e.g., ClassNotFound or SQLException)
	 * @throws SQLException if a database access error occurs.
	 * @throws ClassNotFoundException if the JDBC driver class is not found.
	 */
	public int addToCart(CartModel cart) {

	    try {
	        // Prepare a statement using the predefined query for student registration
	        PreparedStatement stmt = getConnection()
	        		.prepareStatement(StringUtils.QUERY_ADD_CART);

	        // Set the student information in the prepared statement
	        stmt.setString(1, cart.getProductName());
	        stmt.setString(2, cart.getUnitPrice());
	        stmt.setString(3, cart.getProductQuantity());
	        

	        // Execute the update statement and store the number of affected rows
	        int result = stmt.executeUpdate();

	        // Check if the update was successful (i.e., at least one row affected)
	        if (result > 0) {
	            return 1; // Registration successful
	        } else {
	            return 0; // Registration failed (no rows affected)
	        }

	    } catch (ClassNotFoundException | SQLException ex) {
	        // Print the stack trace for debugging purposes
	        ex.printStackTrace();
	        return -1; // Internal error
	    }
	}
	
	public int addUser(RegisterModel registerModel) {
		try (Connection con = getConnection()){
			PreparedStatement st = con.prepareStatement(StringUtils.INSERT_USER);
			
			st.setString(1, registerModel.getFirstName());
			st.setString(2, registerModel.getLastName());
			st.setString(3, registerModel.getEmail());
			st.setString(4, registerModel.getPassword());
			
			int result = st.executeUpdate();
			return result > 0 ? 1 : 0;
		} catch (ClassNotFoundException | SQLException ex) {
			ex.printStackTrace();
			return -1;
		}
			
		}
	
	public int getUserLoginInfo(String email, String password) {
	    try (Connection con = getConnection()) {
	        PreparedStatement st = con.prepareStatement(StringUtils.GET_LOGIN_USER_INFO);
	        st.setString(1, email);
	        st.setString(2, password);

	        ResultSet rs = st.executeQuery();
	        if (rs.next()) {
	            // Check if the retrieved password matches the provided password
	            String retrievedPassword = rs.getString("password");
	            if (password.equals(retrievedPassword)) {
	                return 1; // Login successful
	            } else {
	                return 0; // Incorrect password
	            }
	        } else {
	            return 0; // User not found
	        }
	    } catch (ClassNotFoundException | SQLException ex) {
	        ex.printStackTrace();
	        return -1; // Error occurred
	    }
	}
	
	/**
	 * This method attempts to validate a student login by checking the username 
	 * and password against a database.
	 * 
	 * @param username The username provided by the user attempting to log in.
	 * @param password The password provided by the user attempting to log in.
	 * @return An integer value indicating the login status:
	 *         - 1: Login successful
	 *         - 0: Username or password mismatch
	 *         - -1: Username not found in the database
	 *         - -2: Internal error (e.g., SQL or ClassNotFound exceptions)
	 * @throws SQLException if a database access error occurs.
	 * @throws ClassNotFoundException if the JDBC driver class is not found.
	 */
	
	
	public Boolean checkEmailIfExists(String email) {
	    // TODO: Implement logic to check if the provided email address exists in the database
	    // This method should likely query the database using DBController and return true if the email exists, false otherwise.
	    return false;
	}

	public Boolean checkNumberIfExists(String number) {
	    // TODO: Implement logic to check if the provided phone number exists in the database
	    // This method should likely query the database using DBController and return true if the phone number exists, false otherwise.
	    return false;
	}

	public Boolean checkUsernameIfExists(String username) {
	    // TODO: Implement logic to check if the provided username exists in the database
	    // This method should likely query the database using DBController and return true if the username exists, false otherwise.
	    return false;
	}

}