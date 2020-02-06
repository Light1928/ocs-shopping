<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<meta charset="UTF-8">

<title>ログイン</title>
</head>
<body>
	<h1 id="title">OCSshop</h1>
<!--  <form action="Login_check" method="post">-->
		<table>
			<tr>
				<th><div id="id">ユーザID</div></th>
				<td><input type="text" name="userid" size="5" value=""></td>
			</tr>
			<tr>
				<th><div id="pass">パスワード</div>
				</th>
				<td><input type="text" name="password" size="5" value=""></td>
			</tr>
		</table>
		<div>
			<input type="submit" value="ログイン">
		</div>
	</form>
</body>
</html>