package ocs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class IdSerch {
	//家用
	public static final String HOST_NAME = "localhost:3306";
	public static final String DB_NAME = "webapp2019_OCSshop";
	public static final String USER_NAME = "root";
	public static final String USER_PASS = "";

	//学校用
	//	public static final String HOST_NAME = "10.15.121.37:3306";
	//	public static final String USER_NAME = "user_OCSshop";
	//	public static final String USER_PASS = "OCSshop";
	private final String URL = "jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST";

	public String IdSerchSql(String goods) {
		String id = "" ;
		try{	
		//MySQL用
		Class.forName("com.mysql.jdbc.Driver");
		//Class.forName("org.mariadb.jdbc.Driver");
		//学校用
		
		Connection con = DriverManager.getConnection(URL,"root","root");
		//家用
		//Connection con = DriverManager.getConnection(URL,USER_NAME,USER_PASS);
		
		String selectSql ="SELECT Goods_ID FROM GOODS_DETAILS WHERE Goods_Name = '"+goods+"'";
		PreparedStatement stmt1 = con.prepareStatement(selectSql);
						
		
		ResultSet rs = stmt1.executeQuery();
		while(rs.next()) {
		id = rs.getString("Goods_ID");
		}
		rs.close();
		stmt1.close();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		return id;
	}
}
