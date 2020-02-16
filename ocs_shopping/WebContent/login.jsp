<%@page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<!-- セッションが残っていたらトップサイトに強制的に遷移 -->
	<%
		HttpSession session = request.getSession(false);
	if(session!=null){
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
				<h1>OCSshop</h1>
			</div>
		</div>
	</div>
	<div id="outer2">
		<form action="Login_check" method="post">
			<div id="formWrapper">
				<div id="form">
					<div class="logo"></div>
					<div class="form-item">
						<center>
							<a class="formLabel">I D</a>
						</center>
						<center>
							<input type="text" name="userid" id="userid" class="form-style"
								autocomplete="off" />
						</center>
					</div>
					<div class="form-item">
						<center>
							<p class="formLabel">P W</p>
						</center>
						<center>
							<input type="password" name="password" id="password"
								class="form-style" />
						</center>
					</div>
					<div class="form-item">
						<center>
							<p class="pull-left">
								<a href="account_entry1.jsp"><small>新規作成</small></a>
							</p>
						</center>
						<center>
							<input type="submit" value="login">
						</center>
						<div class="clear-fix"></div>
					</div>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
