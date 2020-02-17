<%@page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- セッションが残っていたらトップサイトに強制的に遷移 -->
<%
	HttpSession session = request.getSession(false);
	if (session != null) {
		response.sendRedirect("home.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="homepage.css" type="text/css" />
<meta charset="UTF-8">
<title>OCSshop</title>
</head>
<body>
	<div id="outer1">
		<div id="header1">
			<div class="header-inner">
				<img src="image/OCS_logo.png">
				<a1>OCSshop</a1>
			</div>
		</div>
	</div>
	<div id="outer2">
	<br>
			<a href="account_entry1.jsp"><a1><u>新規作成はこちら</u></a1></a>
		<form action="Login_check" method="post">
			<div id="formWrapper">
				<div id="form">
					<div class="logo"></div>
					<div class="form-item">
						<center>
							<br> <b>I D</b>
						</center>
						<center>
							<input type="text" name="userid" id="userid" class="form-style"
								autocomplete="off" />
						</center>
					</div>
					<div class="form-item">
						<center>
							<br> <b>P W</b>
						</center>
						<center>
							<input type="password" name="password" id="password"
								class="form-style" />
						</center>
					</div>
					<div class="form-item">
						<center>
						<br>
							<input type="submit" value="login">
						</center>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
