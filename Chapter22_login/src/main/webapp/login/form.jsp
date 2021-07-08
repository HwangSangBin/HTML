<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1>login page</h1>
	<form action="/login/login.do" method="post">
		<table>
			<caption>:::login:::</caption>
			<tr>
				<th>아이디</th>
				<td>
					<input name="id">
				</td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<input name="pwd" type="password">
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="로그인">
					<input type="reset" value="취소">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>