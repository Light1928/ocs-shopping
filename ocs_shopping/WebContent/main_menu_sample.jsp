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
			+ "onclick=\"location.href='./log_in_sample.jsp'\">ログアウト</button>";
}else {
	check = "<script>location.href='./log_in_sample.jsp'</script>";
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