<%@page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" href="homepage.css" type="text/css" />
<head>
<meta charset="UTF-8">
<title>ショッピングサイト</title>
</head>
<script src="https://ajaxzip3.github.io/ajaxzip3.js" charset="UTF-8">

</script>
<script type="text/javascript">
	function suujinomi(obj) {
		if (window.event) {
			var c = window.event.keyCode;
			if (48 <= c && c <= 57 || 96 <= c && c <= 105 || c == 37 || c == 39
					|| c == 8 || c == 45 || c == 46 || c == 36 || c == 35)
				return;
		}
		var v = obj.value;
		v = v.replace(/[^0-9]/g, '');
		v = v.replace(/[^0-9!"#$%&'\(\)]/g, '');
		obj.value = v;
	}
</script>
<body>
	<div id="outer1">
		<div id="header1">
			<div class="header-inner">
				<img src="image/OCS_logo.png">
				<a1>OCSshop</a1>
			</div>
		</div>
	</div>
	<div id="outer2">
		<form action="Account_entry" method="post">
			<div align="left">
				<br>
				<h1>アカウント作成</h1>
			</div>
			<br>
			<div align="center">
				<table class="table1">
					<tr>
						<td>ユーザID</td>
						<td><input autofocus required type="text" name='user_id'
							size="8" maxlength="8"></td>
					<tr>
						<td>名前</td>
						<td>姓 <input type="text" name="name1" size="8" maxlength="8">
							&nbsp;&nbsp;&nbsp; 名 <input type="text" name="name2" size="8"
							maxlength="8">
						</td>
					</tr>

					<tr>
						<td>フリガナ</td>
						<td><input required type="text" name="name3" size="16"
							maxlength="16"></td>
					</tr>

					<tr>
						<td>郵便番号</td>
						<td><input type="text" name="zip31" size="4" maxlength="3">
							－ <input type="text" name="zip32" size="5" maxlength="4"
							onKeyUp="AjaxZip3.zip2addr('zip31','zip32','pref31','addr31','addr31');"></td>
					</tr>
					<tr>
						<td>都道府県</td>
						<td><input type="text" name="pref31" size="20"></td>
					</tr>
					<tr>
						<td>住所</td>
						<td><input required type="text" name="addr31" size="40">
						</td>
					</tr>
					<tr>
						<td>電話番号</td>
						<td><input required type="text" value="　"
							onkeyup="suujinomi(this)" name="phoneNo" size="11" maxlength="11">
						</td>
					</tr>
					<tr>
						<td>メールアドレス</td>
						<td><input type="text" name="mail_address" maxlength="30">
						</td>
					</tr>
					<!-- required pattern="^[0-9A-Za-z]+$" -->
					<tr>
						<td>パスワード</td>
						<td><input type='password' required pattern="^[0-9A-Za-z]+$"
							name="password" size="13" maxlength="12"></td>
					</tr>
				</table>
				<br>
				<!--  <input type="button" onclick="location.href='hviehrtg.jsp?bk=1'" value="次へ" >-->
			</div>
			<br>
			<center>
				<input type="button" value="ログイン画面へ戻る"
					onclick="location.href='./login.jsp'">
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" value="確認">
			</center>
		</form>
	</div>
</body>
</html>