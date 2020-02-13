<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "ocs.CartRecordBean" import = "java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="homepage.css" type="text/css" />
</head>
<body>

<jsp:useBean id = "cartInfoBean" class = "ocs.CartInfoBean" scope = "session"/>
<div id="outer1">
		<div id="header1">
			<div class="header-inner">
				<h1>OCSshop</h1>
			</div>
		</div>
	</div>
	<div id="outer2">
	<h1>カート一覧</h1>
	
	<table>
	<tr>
	<th>商品名</th>
	<th>値段</th>
	<th>数量</th>
	</tr>
<%
ArrayList<CartRecordBean> crtRecordArray  = cartInfoBean.getCartlistArray();
for(CartRecordBean rcd : crtRecordArray){
	out.println("<tr><td>"+rcd.getGoodsname()+"</td><td>"+rcd.getPrice()+"</td><td>" + rcd.getQuantity()+"</td></tr>");
}
%></div>
</table>
</body>
</html>