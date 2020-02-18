<%@page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String username = null;
	HttpSession session = request.getSession(false);
	if (session == null) {
		response.sendRedirect("login.jsp");
	} else {
		username = (String) session.getAttribute("username");
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
				<a2>ようこそ、<%=username%>さん</a2>
			</div>
		</div>
	</div>
	<div id="outer2">
		<div id="outer">
			<div id="inner">
				<button class="button" type="button"
					onclick="location.href='./logout.jsp'">ログアウト</button>
				<button class="button" type="button"
					onclick="location.href='./setsumeisyo.jsp'">説明書</button>
				<form style="display: inline" action=CartSelect method="post">
					<button class="button" type="submit">カート</button>
				</form>
			</div>
		</div>
		<h1>ここにワードで作った画像でもはろうかなと思います</h1>
	</div>
</body>
</html>
