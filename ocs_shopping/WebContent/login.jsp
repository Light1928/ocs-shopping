<%@page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OCSshop</title>
</head>
<body>
<form action="Login_check" method="post">
<div id="formWrapper">
<center><h1>OCSshop</h1></center>
<div id="form">
<div class="logo">

</div>
		<div class="form-item">
		<center>	<p class="formLabel">I D</p></center>
			<center><input type="text" name="userid" id="userid" class="form-style" autocomplete="off"/></center>
		</div>
		<div class="form-item">
	<center>	<p class="formLabel">P W</p></center>
		<center>	<input type="text" name="password" id="password" class="form-style" /></center>
		<center><p><a href="#" ><small>パスワードを忘れた方</small></a></p></center>
		</div>
		<div class="form-item">
		<center><p class="pull-left"><a href="#"><small>新規作成</small></a></p></center>
		<center><input type="submit" value="login"></center>
		<div class="clear-fix"></div>
		</div>
</div>
</div>
</form>
</body>
</html>
