<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%
session.invalidate();
%>
<title>ログアウト</title>
</head>
<body>
ログアウトしました<br>
<a href="login.jsp">ログイン画面へ戻る</a>
</body>
</html>