<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="homepage.css" type="text/css" />
<head>
<meta charset="UTF-8">
<title>注文確認</title>
</head>
<body>
	<div id="outer1">
		<div id="header1">
			<div class="header-inner">
				<h1>OCSshop</h1>
			</div>
		</div>
	</div>
	<div id="outer2">
		<a>支払い方法</a>
		<select name=”money”>
			<option value=”kureka”>クレジットカード</option>
			<option value=”gen”>現金</option>
		</select>
		<center>
			<img src="image/step3.png" width="700" height="119">
		</center>
		<center>
			購入商品一覧
			<table border="3">
				<tr>
					<td width="400" height="200"></td>
				</tr>
			</table>
		</center>
		<p>間違いはないでしょうか。</p>
		<input type="submit" value="次へ" />
	</div>
</body>
</html>