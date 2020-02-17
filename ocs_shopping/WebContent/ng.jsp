<%@page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>認証失敗</title>
<link rel="stylesheet" href="homepage.css" type="text/css" />
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
		<br> <br>
		<center>
			<div
				style="display: inline-block; background: #fcfcff; padding: 15px; border: 1px solid #3b5998; border-radius: 10px; word-break: break-all;">
				<h1>認証に失敗しました</h1>
				<br>
				<center>
						<input type="button" value="戻る"
					onclick="location.href='./login.jsp'">
				</center>
			</div>
		</center>
	</div>
</body>
</html>