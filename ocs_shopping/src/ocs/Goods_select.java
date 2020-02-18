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


//商品画像をクリック後商品詳細ページを生成する際のデータ抽出


@WebServlet("/Goods_select")
public class Goods_select extends HttpServlet {
	private  final String URL = "jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST";
	private static final String DB_NAME   = "webapp2019_OCSshop";
	//家用
	private  static final String HOST_NAME = "localhost:3306";
	private  static final String  USER_NAME = "root";
	private  static final String USER_PASS = "";
	//学校用
//	private static final String HOST_NAME = "10.15.121.37:3306";
//	private static final String USER_NAME = "user_OCSshop";
//	private static final String USER_PASS = "OCSshop";

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	int id = Integer.parseInt(request.getParameter("Goods_ID"));
	String details = null;
	String goods_name = null;
	try {
		String sql = "SELECT * FROM GOODS_DETAILS WHERE Goods_ID = ?";
		//MySQL用
		Class.forName("com.mysql.cj.jdbc.Driver");
		//学校用
		//Class.forName("org.mariadb.jdbc.Driver");

		//学校用
		Connection con = DriverManager.getConnection(URL,USER_NAME, USER_PASS);
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setInt(1, id);;
		ResultSet rs = stmt.executeQuery();
		if (rs.next()) {
			goods_name = rs.getString("Goods_Name");
			details = rs.getString("Goods_Text");
			System.out.println(goods_name);
		} else {
			System.out.println("doesn't exist ID/PASSWORD pattern.");

		}
	} catch (Exception ex) {
		String msg = "ドライバのロードに失敗しました";
		System.out.println(ex);

	}
	request.setAttribute("goods_id",id);
	request.setAttribute("goods_name",goods_name);
	request.setAttribute("details", details);
	RequestDispatcher dispatch = request.getRequestDispatcher("goods_details.jsp");
	dispatch.forward(request, response);
	}
}
