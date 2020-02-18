<%@page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- セッションがなかったらログイン画面へ戻る　全てのページにこれを追加することでURLからの飛び込み防止可能 -->
<%
	String username = null;
	HttpSession session = request.getSession(false);
	if (session == null) {
		response.sendRedirect("login.jsp");
	} else {
		username = (String) session.getAttribute("username");
	}
%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="homepage.css" type="text/css" />
<meta charset="UTF-8">
<title>OCSshop</title>
</head>
<body>

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
		<div id="content">
			<div class="inner">
				<h2>商品一覧</h2>
				<div style="position: absolute; top: 190px;">
					<a href=/ocs_shopping/Goods_select?Goods_ID=1> <img
						src="image/game1.jpg" width="100" height="100\" align="middle">
						Nintendo Switch
					</a>
				</div>
				<br>
				<div style="position: absolute; top: 310px;">
					<p>
						<a href=/ocs_shopping/Goods_select?Goods_ID=2> <img
							src="image/game2.jpg" width="100" height="100\" align="middle">
							PlayStation
						</a>
					</p>
				</div>
				<br>
				<div style="position: absolute; top: 430px;">
					<p>
						<a href=/ocs_shopping/Goods_select?Goods_ID=3> <img
							src="image/book1.jpg" width="100" height="100\" align="middle">
							FE_Text
					</p>
				</div>
				<br>
				<div style="position: absolute; top: 550px;">
					<p>
						<a href=/ocs_shopping/Goods_select?Goods_ID=4> <img
							src="image/book2.jpg" width="100" height="100\" align="middle">
							AP_Text
					</p>
				</div>
				<br>
				<div style="position: absolute; top: 670px;">
					<p>
						<a href=/ocs_shopping/Goods_select?Goods_ID=5> <img
							src="image/electronics1.jpg" width="100" height="100\"
							align="middle"> dyson
					</p>
				</div>
				<br>
				<div style="position: absolute; top: 790px;">
					<p>
						<a href=/ocs_shopping/Goods_select?Goods_ID=6> <img
							src="image/electronics2.jpg" width="100" height="100\"
							align="middle"> TV
					</p>
				</div>

			</div>
		</div>
	</div>
</body>
</html>
