<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<link rel="stylesheet" href="homepage.css" type="text/css" />
<head>
<meta charset="UTF-8">

<title>ログイン</title>
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
		<!--  <form action="Login_check" method="post">-->
		<table>
			<tr>
				<th><div id="id">ユーザID</div></th>
				<td><input type="text" name="userid" size="5" value=""></td>
			</tr>
			<tr>
				<th><div id="pass">パスワード</div></th>
				<td><input type="text" name="password" size="5" value=""></td>
			</tr>
		</table>
		<div>
			<input type="submit" value="ログイン">
		</div>
	</div>
	</form>
</body>
</html>