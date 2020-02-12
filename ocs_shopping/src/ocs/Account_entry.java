package ocs;

import java.io.IOException;

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

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String user_id = request.getParameter("user_id");
        String name1 = request.getParameter("name1");
        String name2 = request.getParameter("name2");
        String name3 = request.getParameter("name3");
        String zip31 = request.getParameter("zip31");
        String zip32 = request.getParameter("zip32");
        String pref31 = request.getParameter("pref31");
        String addr31 = request.getParameter("addr31");
        String phone_number = request.getParameter("phoneNo");
        String mail_address = request.getParameter("mail_address");
        String password = request.getParameter("password");

        UserBean account_entry = new UserBean(user_id,name1,name2,name3,zip31,zip32,
        		 pref31,addr31,phone_number,mail_address,password);

        HttpSession session = request.getSession();
        session.setAttribute("account_entry", account_entry);

        RequestDispatcher dispatcher = request.getRequestDispatcher("account_entry2.jsp");
        dispatcher.forward(request, response);
	}

}