<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
String check;
String pagePath = "log_in_sample.jsp";
String session_check = (String)session.getAttribute("login");
if(session_check != null){
	check = "<h1>メインメニュー</h1>"
			  + "<button class=\"log_out\" type=\"button\""
			  +"onclick=\"location.href='./log_in_sample.jsp'\">ログアウト</button>";
}else {
	check = "<script>alert(\"不正な操作です。\")</script>"
		  + "<script>location.href='./log_in_sample.jsp'</script>";
}
%>

<title>メインメニュー</title>
</head>
<body>
	<p><%= check %></p>
</body>
</html>