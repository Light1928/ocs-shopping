<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta charset="UTF-8">
<link rel="stylesheet" href="homepage.css" type="text/css"/>
<title>Insert title here</title>
</head>
<body>

<% 
  final String DB_NAME   = "webapp2019_OCSshop";
//家用
  final String HOST_NAME = "localhost:3306";
  final String  USER_NAME = "root";
  final String USER_PASS = "";
  final String URL = "jdbc:mysql://" + HOST_NAME + "/" + DB_NAME + "?serverTimezone=JST";
//学校用
//private static final String HOST_NAME = "10.15.121.37:3306";
//private static final String USER_NAME = "user_OCSshop";
//private static final String USER_PASS = "OCSshop";

try {
			String sql = "SELECT * FROM GOODS_DETAILS  CUSTOMER  where User_ID = ?";
			//MySQL用
			//Class.forName("com.mysql.cj.jdbc.Driver");
			//学校用
			Class.forName("org.mariadb.jdbc.Driver");
			//家用
			//Connection con = DriverManager.getConnection(URL,"root","");
			//学校用
			
			Connection con = DriverManager.getConnection(URL,USER_NAME, USER_PASS);
			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, num1);
			

			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				System.out.println("exist ID/PASSWORD pattern.");
				return true;
			} else {
				System.out.println("doesn't exist ID/PASSWORD pattern.");
				return false;
			}
		} catch (Exception ex) {
			String msg = "ドライバのロードに失敗しました";
			System.out.println(ex);
			return false;
		}
%>

<div id="outer1">
<div id="header1">
<div class="header-inner">
<h1>OCSshop</h1>
</div>
</div>
</div>
<div id="outer2">
<div class="global-navi">
<div class="global-inner">
<ul class="naviyoko">
<button class="button" type="button" onclick="location.href='./login.jsp'">ホーム</button>
<button class="button" type="button" onclick="location.href='./login.jsp'">利用説明</button>
<button class="button" type="button" onclick="location.href='./login.jsp'">注文</button>
<button class="button" type="button" onclick="location.href='./login.jsp'">お問い合わせ</button>
<button class="button" type="button" onclick="location.href='./login.jsp'">会社概要</button>
</ul>
</div></div>
<div style="position:absolute; top:250px; left:350px">
<img src="image/test.jpg"  width="200" height="200" >
数量
<select name="example">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select>
個
<p align="center"><input type="submit" value="カートに入れる"></p>
</div>



</body>
</html>