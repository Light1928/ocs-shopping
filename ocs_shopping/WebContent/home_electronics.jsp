<%@page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- セッションがなかったらログイン画面へ戻る　全てのページにこれを追加することでURLからの飛び込み防止可能 -->
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
<title>OCSshop</title>
</head>
<body>
<%-- <%String username;
	UserBean bean = (UserBean) session.getAttribute("account_entry");
	String name = bean.getName1()+bean.getName2();
%> --%>
	<div id="outer1">
		<div id="header1">
			<div class="header-inner">
				<h1>OCSshop</h1>
				<font size="4" color="#000000">　　ようこそ、<%=name%>さん</font></td>
			</div>
		</div>
	</div>
	<div id="outer2">
		<div id="outer">
			<div id="inner">
				<button class="button" type="button"
					onclick="location.href='./logout.jsp'">ログアウト</button>
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
		<div id="content">
			<div class="inner">
				<h2>商品一覧</h2>
				<div style="position: absolute; top: 190px;">
					<p><a href=/ocs_shopping/Goods_select?Goods_ID=1>
					<img src="image/electronics1.jpg" width="100" height="100\" align="middle"></a>
						掃除機
					</p>
				</div>
				<br>
				<div style="position: absolute; top: 310px;">
					<p><a href=/ocs_shopping/Goods_select?Goods_ID=2>
						<img src="image/electronics2.jpg" width="100" height="100\" align="middle"></a>
						テレビ
					</p>
				</div>
			</div>
		</div>
		<div id="left">
			<div class="left-title">カテゴリー</div>
			<div class="link">
				<ul>
					<li><a href="home_book.jsp">書籍</a></li>
					<li><a href="home_electronics.jsp">家電</a></li>
					<li><a href="home_game.jsp">ゲーム</a></li>

				</ul>
			</div>
		</div>
	</div>
</body>
</html>
