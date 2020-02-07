<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注文確認</title>
</head>
<body>
<h1>OCS shop</h1>
<p>支払い方法</p>
<select name=”money”>
<option value=”kureka”>クレジットカード</option>
<option value=”gen”>現金</option>
</select>
<center><img src="image/step1.png" width="700" height="119" ></center>
<center>購入商品一覧
<table border="3">
<tr>
<td width="400" height="200"></td>
</tr>
</center>
</table>
<p>間違いはないでしょうか。</p>
<input type="submit" value="次へ" />
</body>
</html>