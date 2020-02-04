<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="webapp.css">
<title>メインメニュー</title>
<link rel="stylesheet" href="./webapp.css">
</head>
<body>
	<h1 class="title">メインメニュー</h1>
	<div>
		<button class="delete" type="button" >アカウント削除</button>
		<button class="data_input" type="button" onclick="location.href='./data_entry.jsp'" >データ入力</button>
		<button id="a" type="button" >新規作成</button>
		<button id="b" type="button">b</button>
		<button id="c" type="button">a</button>
		<button id="d" type="button">c</button>
		<button class="log_out" type="button" onclick="location.href='./log_in.jsp'">ログアウト</button>
	</div>
</body>
</html>