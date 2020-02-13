<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="ocs.UserBean"%>
<%
	UserBean bean = (UserBean) session.getAttribute("account_entry");
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="homepage.css" type="text/css" />
<meta charset="UTF-8">
<title>入力確認</title>
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
		<form action="Account_entry2" method="post">
			<a>
				ユーザID:<%=bean.getUser_id()%></a>
			<p>
				名前:<%=bean.getName1()%>
				<%=bean.getName2()%></p>
			<p>
				郵便番号:<%=bean.getZip31()%>-<%=bean.getZip32()%></p>
			<p>
				都道府県:<%=bean.getPref31()%></p>
			<p>
				住所:<%=bean.getAddr31()%></p>
			<p>
				電話番号:<%=bean.getPhoneNo()%></p>
			<p>
				メールアドレス:<%=bean.getMail_address()%></p>
			<p>パスワード:•••••••••</p>
			<center>
				<input type="submit" value="以下の内容で登録" />
			</center>
			<br>
			<center>
				<input type="submit" value="入力画面に戻る。" />
			</center>
	</div>
	</form>
</body>
</html>