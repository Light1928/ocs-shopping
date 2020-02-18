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
	private final String URL = "jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST";
	private static final String DB_NAME = "webapp2019_OCSshop";
	// 家用
	private static final String HOST_NAME = "localhost:3306";
	private static final String USER_NAME = "root";
	private static final String USER_PASS = "";

	// 学校用
	//	public static final String HOST_NAME = "10.15.121.37:3306";
	//	public static final String USER_NAME = "user_OCSshop";
	//	public static final String USER_PASS = "OCSshop";

	CartInfoBean cartInfoBean = new CartInfoBean();

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {

			String sql = "SELECT Goods_Name,Price,Quantity" +
					"     FROM GOODS a JOIN CART b ON a.Goods_id = b.Goods_ID" +
					"     JOIN GOODS_DETAILS c ON a.Goods_ID  = c.Goods_ID" +
					"     WHERE Quantity >= 1";

			//	Class.forName("com.mysql.jdbc.Driver");
			// MySQL用
			Class.forName("org.mariadb.jdbc.Driver");
			// 家用
			Connection con = DriverManager.getConnection(URL, USER_NAME, USER_PASS);
			// 学校用
			PreparedStatement stmt = con.prepareStatement(sql);

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
		HttpSession session = request.getSession(false);
		session.setAttribute("cartInfoBean",cartInfoBean);
		getServletContext().getRequestDispatcher("/order1.jsp")
		.forward(request, response);

	}

}