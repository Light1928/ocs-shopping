<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%	String name = null;
 session = request.getSession(false);
if(session==null){
response.sendRedirect("login.jsp");
}else{
 name = (String)session.getAttribute("username");}

	String goods_name = (String) request.getAttribute("name");
	int goods_id = (int) request.getAttribute("goods_id");
	String details = (String) request.getAttribute("details");
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta charset="UTF-8">
<link rel="stylesheet" href="homepage.css" type="text/css" />
<title><%=name%></title>
</head>
<body>
	<form action="CartAdd" method="post">
		<div id="outer1">
			<div id="header1">
				<div class="header-inner">
					<h1>OCSshop</h1>
				</div>
			</div>
		</div>
		<div id="outer2">
			<div id="outer">
				<div id="inner">
					<button class="button" type="button"
						onclick="location.href='./Login_check.java'">ログアウト</button>
					<button class="button" type="button"
						onclick="location.href='./setsumeisyo.jsp'">説明書</button>
					<button class="button" type="button"
						onclick="location.href='./kategoribetsu.jsp'">何かしら</button>
					<button class="button" type="button"
						onclick="location.href='./account_change.jsp'">アカウント設定</button>
					<form style="display: inline" action=CartSelect method="post">
						<button class="button" type="submit">カート</button>
					</form>
				</div>
			</div>
			<div style="position: absolute; top: 250px; left: 350px">

				<script>
					var id =
				<%=goods_id%>
					;
					switch (id) {
					case 1:
						document.write('<img src="image/test.jpg" width="200" height="200">')
				<%session.setAttribute("switch", name);
				  session.setAttribute("goods_id", goods_id);%>
					break;

					case 2:
						document.write('<img src="image/test2.jpg" width="200" height="200">')
				<%session.setAttribute("switch_black", name);
				  session.setAttribute("goods_id", goods_id);%>
					break;
					}
				</script>

				<div class="content">
					<div clsss="content_item"><%=name%></div>
					<div class="content_item"><%=details%></div>
				</div>

				数量 <select name="quantity">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
				</select> 個
				<p align="center">
					<input type="submit" value="カートに入れる">

				</p>
			</div>
		</div>
	</form>
</body>
</html>