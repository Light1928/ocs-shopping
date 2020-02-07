package ocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/CartSelect")
public class CartSelect extends HttpServlet {
	// 家用
	// public static final String HOST_NAME = "localhost:3306";
	public static final String DB_NAME = "webapp2019_OCSshop";
	// public static final String USER_NAME = "root";
	// public static final String USER_PASS = "";

	// 学校用
	public static final String HOST_NAME = "10.15.121.37:3306";
	public static final String USER_NAME = "user_OCSshop";
	public static final String USER_PASS = "OCSshop";
	private final String URL = "jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST";
	
	CartInfoBean cartInfoBean = new CartInfoBean();

	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		int Sid = Integer.parseInt(request.getParameter("sid"));
		int Su = Integer.parseInt(request.getParameter("su"));

		try {
			String sql = "select Goods_Name,Price,Quantity, from  GOODS,GOODS_DETAILS,CART"
					+ " where GOODS.Goods_ID=GOODS_DETAILES.Goods_ID " + " AND GOODS.Goods_ID=CART.Goods_ID"
					+ " AND exists (select count(*) from CART)  ";
			// MySQL用
			Class.forName("org.mariadb.jdbc.Driver");
			// 学校用
			// Connection con = DriverManager.getConnection(URL,"root","");
			// 家用
			Connection con = DriverManager.getConnection(URL, USER_NAME, USER_PASS);
			// 学校用
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, Sid);
			stmt.setInt(2, Su);

			String gName;
			int price, quantity;
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				gName = rs.getString("Goods_Name");
				price = rs.getInt("Price");
				quantity = rs.getInt("Quantity");
		
				CartRecordBean cartRecordBean = new CartRecordBean();
				cartRecordBean.setGoodsname(gName);
				cartRecordBean.setPrice(price);
				cartRecordBean.setQuantity(quantity);
				
				cartInfoBean.addCartlist(cartRecordBean);

			
			}
		} catch (Exception ex) {
			ex.printStackTrace();
		}
		HttpSession session = request.getSession();
		session.setAttribute("cartInfoBean",cartInfoBean);
		getServletContext().getRequestDispatcher("")
		.forward(request, response);

	}

}
