
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="ocs.UserBean"%>
    <%
    UserBean bean = (UserBean) session.getAttribute("account_entry");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<% String name2;

System.out.println(session);
name2 =  (String)session.getAttribute("name2");
System.out.println(name2);%>
<title>入力確認</title>
</head>
<body>

<p>ユーザID:<%=bean.getUser_id() %></p>
<p>名前<%=bean.getName1()%> <%=bean.getName2() %></p>
<br>
<h2>郵便番号</h2>
<br>
<h2>都道府県</h2>
<br>
<h2>国名</h2>
<br>
<h2>住所</h2>
<br>
<h2>電話番号</h2>
<br>
<h2>メールアドレス</h2>
<br>
<h2>パスワード</h2>
<br>
<center><input type="submit" value="以下の内容で登録" /></center>
<br>
<center><input type="submit" value="入力画面に戻る。" /></center>
</body>
</html>