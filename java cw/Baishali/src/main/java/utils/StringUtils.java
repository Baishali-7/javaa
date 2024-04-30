package utils;

public class StringUtils {

	// Start: DB Connection
	public static final String DRIVER_NAME = "com.mysql.cj.jdbc.Driver";
	public static final String LOCALHOST_URL = "jdbc:mysql://localhost:3306/p";
	public static final String LOCALHOST_USERNAME = "root";
	public static final String LOCALHOST_PASSWORD = "";
	// End: DB Connection

	// Start: Queries
	public static final String QUERY_ADD_CART = "INSERT INTO cart ("
			+ "product_name, unit_price, product_quantity) "
			+ "VALUES (?, ?, ?)";

	public static final String PRODUCT_NAME = "product_name";
	public static final String UNIT_PRICE = "unit_price";
	public static final String PRODUCT_QUANTITY = "product_quantity";


	// Start: Validation Messages
	// Register Page Messages
	public static final String MESSAGE_SUCCESS_REGISTER = "Successfully Registered!";
	public static final String MESSAGE_ERROR_REGISTER = "Please correct the form data.";
	public static final String MESSAGE_ERROR_USERNAME = "Username is already registered.";
	public static final String MESSAGE_ERROR_EMAIL = "Email is already registered.";
	public static final String MESSAGE_ERROR_PHONE_NUMBER = "Phone number is already registered.";
	public static final String MESSAGE_ERROR_PASSWORD_UNMATCHED = "Password is not matched.";
	public static final String MESSAGE_ERROR_INCORRECT_DATA = "Please correct all the fields.";

	// Login Page Messages
	public static final String MESSAGE_SUCCESS_LOGIN = "Successfully LoggedIn!";
	public static final String MESSAGE_ERROR_LOGIN = "Either username or password is not correct!";
	public static final String MESSAGE_ERROR_CREATE_ACCOUNT = "Account for this username is not registered! Please create a new account.";

	// Other Messages
	public static final String MESSAGE_ERROR_SERVER = "An unexpected server error occurred.";
	public static final String MESSAGE_SUCCESS_DELETE = "Successfully Deleted!";
	public static final String MESSAGE_ERROR_DELETE = "Cannot delete the user!";

	public static final String MESSAGE_SUCCESS = "successMessage";
	public static final String MESSAGE_ERROR = "errorMessage";
	// End: Validation Messages

	// Start: JSP Route
	public static final String PAGE_URL_INDEX = "/index.jsp";
	public static final String PAGE_URL_P= "/pages/p.jsp";
	public static final String PAGE_URL_PRO = "/pages/pro.jsp";
	public static final String PAGE_URL_MAX = "pages/max.jsp";
	public static final String PAGE_URL_HEADER = "pages/header.jsp";
	public static final String URL_LOGIN = "/login.jsp";
	public static final String URL_INDEX = "/index.jsp";
	// End: JSP Route

	// Start: Servlet Route
	public static final String SERVLET_URL_LOGIN = "/login";
	public static final String SERVLET_URL_REGISTER = "/uploadCart";
	public static final String SERVLET_URL_LOGOUT = "/logout";
	// End: Servlet Route

	// Start: Normal Text
	public static final String USER = "user";
	public static final String SUCCESS = "success";
	public static final String TRUE = "true";
	public static final String JSESSIONID = "JSESSIONID";
	public static final String LOGIN = "Login";
	public static final String LOGOUT = "Logout";
	public static final String STUDENT_MODEL = "studentModel";
	
	public static final String INSERT_USER = "INSERT INTO register_table"
			+ "(firstName, lastName, email, password)"
			+ "VALUES (?, ?, ?, ?)";
	
	public static final String GET_LOGIN_USER_INFO = "SELECT * from register_table where email = ? AND password = ?";
	
	
	public static final String First_Name = "firstName";
	public static final String Last_Name = "lastName";
	public static final String Email = "email";
	public static final String Password = "password";
	
	
	public static final String SUCCESS_REGISTER_MESSAGE = "Successfully Registered!";
	public static final String ERROR_REGISTER_MESSAGE = "Please enter correct data!";
	public static final String SERVER_ERROR_MESSAGE = "Unexpected server error occured.";
	public static final String SUCCESS_MESSAGE = "successMessage";
	public static final String ERROR_MESSAGE = "errorMessage";
	
	
	public static final String LOGIN_PAGE = "/pages/login.jsp";
	public static final String REGISTER_PAGE = "/pages/register.jsp";
	
	
	public static final String REGISTER_SERVLET = "/RegisterServlet";
	// End: Normal Text
}