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

//カテゴリー別のページを生成するためのデータ抽出


@WebServlet("/Category_select")
public class Category_select extends HttpServlet {
	private  final String URL = "jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST";
	private static final String DB_NAME   = "webapp2019_OCSshop";
	//家用
//	private  static final String HOST_NAME = "localhost:3306";
//	private  static final String  USER_NAME = "root";
//	private  static final String USER_PASS = "";
	//学校用
	private static final String HOST_NAME = "10.15.121.37:3306";
	private static final String USER_NAME = "user_OCSshop";
	private static final String USER_PASS = "OCSshop";

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		int category_id = Integer.parseInt(request.getParameter("Category_ID"));
		int select_category_id = 0;
		try {
			String sql = "SELECT * FROM GOODS WHERE Category_ID = ?";
			//MySQL用
			//Class.forName("com.mysql.cj.jdbc.Driver");
			//学校用
			Class.forName("org.mariadb.jdbc.Driver");

			//学校用
			Connection con = DriverManager.getConnection(URL,USER_NAME, USER_PASS);
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, category_id);;
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				select_category_id = rs.getInt("Category_ID");

				System.out.println(select_category_id);
			}
		} catch (Exception ex) {
			String msg = "ドライバのロードに失敗しました";
			System.out.println(ex);

		}
		request.setAttribute("category_id",select_category_id);
		RequestDispatcher dispatch = request.getRequestDispatcher("home_category.jsp");
		dispatch.forward(request, response);

	}

}
