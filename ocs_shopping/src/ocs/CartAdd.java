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
		public static final String HOST_NAME = "localhost:3306";
		public static final String DB_NAME   = "webapp2019_OCSshop";
		public static final String  USER_NAME = "root";
		public static final String USER_PASS = "";

		//学校用
//		public static final String HOST_NAME = "10.15.121.37:3306";
//		public static final String USER_NAME = "user_OCSshop";
//		public static final String USER_PASS = "OCSshop";
		private final String URL = "jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String Goods = (String)request.getAttribute("details");
		int Su = Integer.parseInt(request.getParameter("quantity"));

		System.out.println(Goods);
		System.out.println(Su);

		IdSerch is = new IdSerch();
		int id = Integer.parseInt(is.IdSerchSql(Goods));
		try{
			String sql = "INSERT INTO CART VALUES("+id+","+Su+")";


			//MySQL用
			Class.forName("com.mysql.jdbc.Driver");
			//Class.forName("org.mariadb.jdbc.Driver");
			//学校用

			Connection con = DriverManager.getConnection(URL,"root","root");
			//家用
			//Connection con = DriverManager.getConnection(URL,USER_NAME,USER_PASS);


			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.executeUpdate();

			System.out.println("成功");

		}catch(Exception ex) {
			ex.printStackTrace();
		}


	}

}
