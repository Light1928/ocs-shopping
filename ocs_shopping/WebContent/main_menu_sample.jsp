<!--  セッションの自動生成を停止 -->
<%@page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/homepage.css">
<meta charset="UTF-8">
<!--  cssの反映-->

<%
	String username;
	String check;
	//セッションがなければnullを返す
	HttpSession session = request.getSession(false);
	System.out.println(session);
	if (session != null) {

		username = (String) session.getAttribute("userid");
		check = "<h1>メインメニュー</h1>" + "<input type=\"submit\" value=\"logout\">" + "ようこそ、<b>" + username
				+ "</b>さん<br>"
				+ "<a href=\"http://localhost:8566/ocs_shopping/hku.jsp?Goods_ID=2\"><img src=\"image/test.jpg\"  width=\"100\" height=\"100\"></a>";

	} else {

		check = "<script>location.href='./login.jsp'</script>";

	}
%>

<title>メインメニュー</title>
</head>
<body>
	<form action="Logout_Session" method="get">
		<p><%=check%></p>
		<button class="button" type="button"
			onclick="location.href='./login.jsp'">遷移</button>
	</form>
</body>
</html>