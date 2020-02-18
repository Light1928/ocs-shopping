<%@page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%
	String username = null;
	String goods_name = null;
	int goods_id = 0;
	String details = null;
	HttpSession session = request.getSession(false);
	if (session == null) {
		response.sendRedirect("login.jsp");
	} else {
		try {
			username = (String) session.getAttribute("username");
			goods_name = (String) request.getAttribute("goods_name");
			System.out.println(goods_name);
			goods_id = (int) request.getAttribute("goods_id");
			details = (String) request.getAttribute("details");
		} catch (Exception ex) {
			response.sendRedirect("home.jsp");
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta charset="UTF-8">
<link rel="stylesheet" href="homepage.css" type="text/css" />
<title><%=goods_name%></title>

<script type="text/javascript">
	function check() {

		if (window.confirm('送信してよろしいですか？')) { // 確認ダイアログを表示
			window.alert('カートに追加しました');
			return true; // 「OK」時は送信を実行

		} else { // 「キャンセル」時の処理

			window.alert('キャンセルされました'); // 警告ダイアログを表示
			return false; // 送信を中止

		}

	}
</script>
</head>
<body>

	<form action="CartAdd" method="post" onSubmit="return check()">
		<div id="outer1">
			<div id="header1">
				<div class="header-inner">
					<img src="image/OCS_logo.png">
					<a1>OCSshop</a1>
					<a2>ようこそ、<%=username%>さん</a2>
				</div>
			</div>
		</div>
		<div id="outer2">
			<div id="left">
				<div class="left-title">カテゴリー</div>
				<div class="link">
					<ul>
						<li><a href="/ocs_shopping/Category_select?Category_ID=2">書籍</a></li>
						<li><a href="/ocs_shopping/Category_select?Category_ID=3">家電</a></li>
						<li><a href="/ocs_shopping/Category_select?Category_ID=1">ゲーム</a></li>
					</ul>
				</div>
			</div>
			<br>
			<div id="outer">
				<div id="inner">
					<button class="button" type="button"
						onclick="location.href='./logout.jsp'">ログアウト</button>
					<button class="button" type="button"
						onclick="location.href='./setsumeisyo.jsp'">説明書</button>
					<form style="display: inline" action=CartSelect method="post">
						<button class="button" type="submit">カート</button>
					</form>
				</div>
			</div>
			<div style="position: absolute; top: 150px; left: 350px">

				<script>
					var id =
				<%=goods_id%>
					;
					switch (id) {
					case 1:
						document
								.write('<img src="image/game1.jpg" width="200" height="200">')
				<%session.setAttribute("goods_name", goods_name);
			session.setAttribute("goods_id", goods_id);%>
					break;

					case 2:
						document
								.write('<img src="image/game2.jpg" width="200" height="200">')
				<%session.setAttribute("goods_name", goods_name);
			session.setAttribute("goods_id", goods_id);%>
					break;

					case 3:
						document
								.write('<img src="image/book1.jpg" width="200" height="350">')
				<%session.setAttribute("goods_name", goods_name);
			session.setAttribute("goods_id", goods_id);%>
					break;

					case 4:
						document
								.write('<img src="image/book2.jpg" width="200" height="350">')
				<%session.setAttribute("goods_name", goods_name);
			session.setAttribute("goods_id", goods_id);%>
					break;

					case 5:
						document
								.write('<img src="image/electronics1.jpg" width="200" height="200">')
				<%session.setAttribute("goods_name", goods_name);
			session.setAttribute("goods_id", goods_id);%>
					break;

					case 6:
						document
								.write('<img src="image/electronics2.jpg" width="200" height="200">')
				<%session.setAttribute("goods_name", goods_name);
			session.setAttribute("goods_id", goods_id);%>
					break;

					}
				</script>

				<div class="content">
					<div clsss="content_item"><%=goods_name%></div>
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