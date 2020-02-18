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
import javax.servlet.http.HttpSession;


//Beanに格納されているデータをDBのCUSTOMER TABLEに登録


@WebServlet("/Account_entry2")
public class Account_entry2 extends HttpServlet {
	private final String URL = "jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST";
	private static final String DB_NAME   = "webapp2019_OCSshop";
//	//家用
	private static final String HOST_NAME = "localhost:3306";
	private static final String  USER_NAME = "root";
	//private static final String USER_PASS = "";
	//青木用
	private static final String USER_PASS = "root";
	//学校用
//	private static final String HOST_NAME = "10.15.121.37:3306";
//	private static final String USER_NAME = "user_OCSshop";
//	private static final String USER_PASS = "OCSshop";

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		UserBean bean = (UserBean) session.getAttribute("account_entry");

		String user_id = bean.getUser_id();
		String name1 = bean.getName1();
		String name2 = bean.getName2();
		String zip31 = bean.getZip31();
		String zip32 = bean.getZip32();
		System.out.println(zip31+zip32);
		String addr31 = bean.getAddr31();
		String phoneNo = bean.getPhoneNo();
		String mail_address = bean.getMail_address();
		String password = bean.getPassword();

		int ret = 0;
		try {
		String sql = "INSERT INTO CUSTOMER VALUES(NULL,?,?,?,?,?,?,?)";
		//MySQL用
		Class.forName("com.mysql.cj.jdbc.Driver");
		//学校用
		//Class.forName("org.mariadb.jdbc.Driver");
		Connection con = DriverManager.getConnection(URL,USER_NAME, USER_PASS);
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1,user_id);
		stmt.setString(2,mail_address);
		stmt.setString(3,password);
		stmt.setString(4,phoneNo);
		stmt.setString(5,zip31+zip32);
		stmt.setString(6,addr31);
		stmt.setString(7,name1+name2);
		ret = stmt.executeUpdate();
		System.out.println(ret);
		if(ret==1) {
			session.invalidate();
			response.sendRedirect("entry_complete.jsp");
		}else {
			System.out.println("error");
		}
		}catch(Exception ex) {
			String msg = "ドライバのロードに失敗しました";
			System.out.println(ex);
			ex.printStackTrace();
		}
	}
}
