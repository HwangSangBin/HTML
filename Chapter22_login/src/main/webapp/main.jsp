<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<h1>main page</h1>
	<c:if test = "${sessionScope.user == null }">
		<input type ="button" value ="로그인" onclick="location.href='/login/form.do'">
	</c:if>
	<c:if test = "${sessionScope.user != null }">
		<input type ="button" value ="로그아웃" onclick="loaction.href='/login/logout.do'">
		<input type ="button" value ="갤러리" onclick="loaction.href='/photo/list.do'">
	</c:if>
</body>
</html>