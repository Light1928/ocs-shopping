<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="ocs.CartRecordBean"
	import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="homepage.css" type="text/css" />
<meta charset="UTF-8">
<title>カート一覧</title>
</head>
<body>

	<jsp:useBean id="cartInfoBean" class="ocs.CartInfoBean" scope="session" />
	<div id="outer1">
		<div id="header1">
			<div class="header-inner">
				<h1>OCSshop</h1>
			</div>
		</div>
	</div>
	<div id="outer2">
		<h1>カートの商品</h1>
		<center>
			<img src="image/step1.png" width="700" height="119"><br>
		</center>
		<center>
			購入商品一覧
			<table border="3">
				<tr>
					<th width="200">商品名</th>
					<th width="200">値段</th>
					<th width="200">数量</th>

					<%
					ArrayList<CartRecordBean> crtRecordArray = cartInfoBean.getCartlistArray();
									for (CartRecordBean rcd : crtRecordArray) {
												out.println("<tr><td align=center>" + rcd.getGoodsname() + "</td><td align=right>" + rcd.getPrice() + "</td><td align=right>"
														+ rcd.getQuantity() + "</td></tr>");
									}
					%>

				</tr>
			</table>
			<br>
		<!--ここservlet使うと思われる-->
			<button class="button" type="button"
				onclick="location.href='./home.jsp'">取引を中止する</button>
				<button class="button" type="button"
				onclick="location.href='./order2.jsp'">次へ</button>
	</center>
	</div>
</body>
</html>