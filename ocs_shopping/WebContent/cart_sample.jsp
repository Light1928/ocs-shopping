<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import= "ocs.CartRecordBean" import = "java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id = "cartInfoBean" class = "ocs.CartInfoBean" scope = "session"/>
<h1>カート一覧</h1>
<%
ArrayList<CartRecordBean> crtRecordArray  = cartInfoBean.getCartlistArray();
for(CartRecordBean rcd : crtRecordArray){
	out.println(rcd.getGoodsname()+rcd.getPrice() + rcd.getQuantity());
}
%>
</body>
</html>