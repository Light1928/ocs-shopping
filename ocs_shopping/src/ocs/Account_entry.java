package ocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Account_entry
 */
@WebServlet("/Account_entry")
public class Account_entry extends HttpServlet {

	public static final String HOST_NAME = "10.15.121.37:3306";
	public static final String DB_NAME   = "webapp2019_184040";
	public static final String USER_NAME = "user_184040";
	public static final String USER_PASS = "184040";
	
	@Override
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			int a = Integer.parseInt(request.getParameter(""));
			String b = request.getParameter("");
			String c = request.getParameter("");
			String d = request.getParameter("");
			String e = request.getParameter("");
			String f = request.getParameter("");
			String g = request.getParameter("");
			String h = request.getParameter("");
			int ret = 0;
			try {
				Class.forName("org.mariadb.jdbc.Driver");
			}catch(Exception ex) {
				ex.printStackTrace();
			}
			try(Connection conn = DriverManager.getConnection(
					"jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST",
					USER_NAME, USER_PASS);
					Statement stmt = conn.createStatement()){
					 ret = stmt.executeUpdate("INSERT INTO CUSTOMER"
							+" VALUES("+ a +",'"+ b +"',"+ c +" , '"+ d +"')");
			}catch (Exception ex) {
				ex.printStackTrace();
			}
			
		}
		

	}