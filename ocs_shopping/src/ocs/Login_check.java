package ocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login_check
 */

@WebServlet("/Login_check")
public class Login_check extends HttpServlet {
	//家用
	public static final String HOST_NAME = "localhost:3306";
	public static final String DB_NAME   = "webapp2019_OCSshop";
	public static final String  USER_NAME = "root";
	public static final String USER_PASS = "";
	private final String URL = "jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST";
	//学校用
	//public static final String HOST_NAME = "10.15.121.37:3306";
//	public static final String USER_NAME = "user_OCSshop";
//	public static final String USER_PASS = "OCSshop";


	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("userid");
		String password = request.getParameter("password");

		System.out.println("ID \t\t:[" + id + "]");

		System.out.println("PASSWORD \t:[" + password + "]");

		String pagePath = "ng.jsp";
		// check the user account.
		if (user(id, password)) {
			pagePath = "main_menu_sample.jsp";
		}

		RequestDispatcher dispatch = request.getRequestDispatcher(pagePath);
		dispatch.forward(request, response);

	}
	protected boolean user(String id, String password) {

		// nullのとき

		if (id == null) {

			System.out.println("id is null value.");
			return false;
		}
		// lengthが0のとき

		if (id.length() == 0) {
			System.out.println("id is empty.");
			return false;
		}

		if(password == null) {

			System.out.println("password is null value.");

			return false;

		}

		if (password.length() == 0) {

			System.out.println("password is empty.");

			return false;

		}

		try {

			String sql = "select * from  CUSTOMER  where User_ID = ? and Password = ?";
			//MySQL用
			Class.forName("com.mysql.cj.jdbc.Driver");
			//学校用

			Connection con = DriverManager.getConnection(URL,"root","");
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, id);

			stmt.setString(2, password);

			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				System.out.println("exist ID/PASSWORD pattern.");
				return true;
			} else {
				System.out.println("doesn't exist ID/PASSWORD pattern.");
				return false;
			}
		} catch (Exception ex) {
			String msg = "ドライバのロードに失敗しました";
			System.out.println(ex);
			return false;
		}
	}
}