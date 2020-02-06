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
//okと表示される
System.out.println(session_check);
if(session_check != null){
	check =   "<h1>メインメニュー</h1>"
			+ "<button class=\"log_out\" type=\"button\""
			+ "onclick=\"location.href='./login.jsp'\">ログアウト</button>"
			+ "<a href=\"login.jsp\"><img src=\"image/test.jpg\"  width=\"100\" height=\"100\"></a>";
}else {
	check = "<script>location.href='./login.jsp'</script>";
}
%>
<title>メインメニュー</title>
</head>
<body>
<p><%=check %></p>

<jsp:useBean id="login" class="ocs.Ocs_Bean" scope="request" />
こんにちは、<jsp:getProperty name="login" property="name" />さん
</body>
</html>