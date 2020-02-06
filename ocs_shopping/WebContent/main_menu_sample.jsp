<!--  セッションの自動生成を停止 -->
<%@page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<!--  cssの反映-->
<link rel="stylesheet" href="${pageContext.request.contextPath}/homepage.css">
<%
String username;
String check;
//セッションがなければnullを返す
HttpSession session= request.getSession(false);
System.out.println(session);
if(session != null){

	username = (String)session.getAttribute("userid");
	check =   "<h1>メインメニュー</h1>"
			+ "<button class=\"log_out\" type=\"button\""
			//+ "onclick=\"location.href='./login.jsp'\">ログアウト</button>"
			+ "ようこそ、<b>" + username + "</b>さん<br>"
			+ "<a href=\"login.jsp\"><img src=\"image/test.jpg\"  width=\"100\" height=\"100\"></a>";

}else {

	check = "<script>location.href='./login.jsp'</script>";

}
%>

<title>メインメニュー</title>
</head>
<body>
<p><%=check %></p>
<button class="button" type="button" onclick="location.href='./login.jsp'">遷移</button>
</body>
</html>