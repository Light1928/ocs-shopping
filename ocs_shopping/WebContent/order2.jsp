<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%	String name=null;
		 session = request.getSession(false);
	if(session==null){
		response.sendRedirect("login.jsp");
		}else{
		 name = (String)session.getAttribute("username");}
	%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="homepage.css" type="text/css" />
<meta charset="UTF-8">
<title>Insert title here</title>
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
		<center>
			<h1>支払方法</h1>
			<form>
				<img src="image/step2.png" width="700" height="119"><br>
				<select name="example">
					<option value="クレジットカード">クレジットカード</option>
					<option value="現金">現金</option>
				</select>
				<br><br>
				<button class="button" type="button"
				onclick="location.href='./order1.jsp'">戻る</button>
				<!--ここservlet使うと思われる-->
				<button class="button" type="button"
				onclick="location.href='./order3.jsp'">次へ</button>
			</form>
		</center>
		</form>
	</div>
</body>
</html>