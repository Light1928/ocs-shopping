package ocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/CartAdd")
public class CartAdd extends HttpServlet {
	private static final long serialVersionUID = 1L;

	//家用
		//public static final String HOST_NAME = "localhost:3306";
		public static final String DB_NAME   = "webapp2019_OCSshop";
		//public static final String  USER_NAME = "root";
		//public static final String USER_PASS = "";
		
		//学校用
		public static final String HOST_NAME = "10.15.121.37:3306";
		public static final String USER_NAME = "user_OCSshop";
		public static final String USER_PASS = "OCSshop";
		private final String URL = "jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST";
		
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int Sid = Integer.parseInt(request.getParameter("sid"));
		int Su = Integer.parseInt(request.getParameter("su"));
		
		
		try{
			int insert = 0;
			String sql = "select * from  CUSTOMER  where User_ID = ? and Password = ?";
			//MySQL用
			Class.forName("org.mariadb.jdbc.Driver");
			//学校用
		
			//Connection con = DriverManager.getConnection(URL,"root","");
			//家用
			Connection con = DriverManager.getConnection(URL,USER_NAME,USER_PASS);
			//学校用
			PreparedStatement stmt = con.prepareStatement("");
			
			insert = stmt.executeUpdate("INSERT INTO CART"
					+ " VALUES("+ Sid +", "+Su+")");
			System.out.println("成功");
			
		}catch(Exception ex) {
			ex.printStackTrace();
		}
		
		
	}

}
