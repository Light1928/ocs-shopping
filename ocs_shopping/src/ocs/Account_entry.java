package ocs;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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


		String pagePath = null;

		String action = request.getParameter("action");
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

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String user_id = request.getParameter("user_id");
        String name1 = request.getParameter("name1");
        String name2 = request.getParameter("name2");
        String name3 = request.getParameter("name3");
        String postal_code1 = request.getParameter("postal_code1");
        String postal_code2 = request.getParameter("postal_code2");
        String prefecures = request.getParameter("prefecures");
        String address = request.getParameter("address");
        String phone_number = request.getParameter("phone_number");
        String password = request.getParameter("password");

        UserBean account_entry = new UserBean(user_id,name1,name2,name3,postal_code1,postal_code2,
        		 prefecures,address,phone_number,password);

        HttpSession session = request.getSession();
        session.setAttribute("account_entry", account_entry);

        RequestDispatcher dispatcher = request.getRequestDispatcher("account_entry2.jsp");
        dispatcher.forward(request, response);
	}


	}