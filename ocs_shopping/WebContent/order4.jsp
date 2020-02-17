<%@page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%	String name=null;
		HttpSession session = request.getSession(false);
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
<title>完了画面</title>
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
		<!--  <div style="display:inline-block;background:#fcfcff; padding:15px;
 border:1px solid #3b5998; border-radius:10px; word-break:break-all;">-->
		<center>
			<h1>注文手続きが完了しました。</h1>
		</center>
		<br>
		<center>
			<img src="image/step4.png" width="700" height="119">
		</center>
		<br>
		<center>
			<button class="button" type="button"
				onclick="location.href='./home.jsp'">Topへ戻る</button>
		</center>
	</div>
</body>
</html>