package ocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


//注文確定後CART TABLEの中身（ログインユーザ）を削除


@WebServlet("/CartDeleteAll")
public class CartDeleteAll extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String URL = "jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST";
	private static final String DB_NAME   = "webapp2019_OCSshop";
	//家用
	private static final String HOST_NAME = "localhost:3306";
	private static final String  USER_NAME = "root";
	private static final String USER_PASS = "";

	//学校用
	//			public static final String HOST_NAME = "10.15.121.37:3306";
	//			public static final String USER_NAME = "user_OCSshop";
	//			public static final String USER_PASS = "OCSshop";


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session  = request.getSession();

		String user_id = (String)session.getAttribute("userid");
		System.out.println(user_id);

		try {
			String sql ="DELETE FROM CART WHERE User_ID = '"+user_id+"'";
			//MySQL用
			//	Class.forName("com.mysql.jdbc.Driver");
			//学校用
			Class.forName("org.mariadb.jdbc.Driver");

			Connection con = DriverManager.getConnection(URL,USER_NAME, USER_PASS);

			PreparedStatement stmt = con.prepareStatement(sql);
			int count = stmt.executeUpdate();
			if(count >=1) {
				System.out.println("成功");
				CartInfoBean cartInfoBean = new CartInfoBean();
				ArrayList<CartRecordBean> crtRecordArray = cartInfoBean.getCartlistArray();
				crtRecordArray.clear();
				ServletContext context = request.getServletContext();
				RequestDispatcher rd = context.getRequestDispatcher("/order4.jsp");
				rd.forward(request, response);
			}
		}catch(Exception e) {

		}
	}

}
