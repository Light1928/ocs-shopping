<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta charset="UTF-8">
<link rel="stylesheet" href="homepage.css" type="text/css"/>
<title>Insert title here</title>
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
<div class="global-navi">
<div class="global-inner">
<ul class="naviyoko">
<button class="button" type="button" onclick="location.href='./login.jsp'">ホーム</button>
<button class="button" type="button" onclick="location.href='./login.jsp'">利用説明</button>
<button class="button" type="button" onclick="location.href='./login.jsp'">注文</button>
<button class="button" type="button" onclick="location.href='./login.jsp'">お問い合わせ</button>
<button class="button" type="button" onclick="location.href='./login.jsp'">会社概要</button>
</ul>
</div></div>
<%String id = (String)request.getAttribute("details");
  String name = (String)request.getAttribute("name");
%>
<div style="position:absolute; top:350px; left:700px">
<img src="image/test.jpg"  width="200" height="200" ><%=name %><<br><%=id %>
数量<br>
<select name="quantity">
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
</select>
個

<p align="center"><input type="submit" value="カートに入れる"></p>
</div>

</div>
</form>
</body>
</html>