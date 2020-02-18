<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String name = null;
	session = request.getSession(false);
	if (session == null) {
		response.sendRedirect("login.jsp");
	} else {
		name = (String) session.getAttribute("username");
	}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="homepage.css" type="text/css" />
<meta charset="UTF-8">
<title>完了画面</title>
</head>
<body>
	<div id="outer1">
		<div id="header1">
			<div class="header-inner">
				<img src="image/OCS_logo.png">
				<a1>OCSshop</a1>
				<a2>ようこそ、<%=name%>さん</a2>
			</div>
		</div>
	</div>
	<div id="outer2">
		<!--  <div style="display:inline-block;background:#fcfcff; padding:15px;
 border:1px solid #3b5998; border-radius:10px; word-break:break-all;">-->
		<center>
			<h1>注文手続きが完了しました。</h1>
		</center>
		<br>
		<center>
			<img src="image/step4.png" width="700" height="119">
		</center>
		<br>
		<center>
				<input type="button" value="Topへ戻る"
					onclick="location.href='./home.jsp'">
		</center>
	</div>
</body>
</html>