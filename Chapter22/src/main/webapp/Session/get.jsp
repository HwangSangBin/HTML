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
	<c:if test="${sessionScope.msg != null }">
		<p>${sessionScope.msg }</p>
	</c:if>
	<c:if test="${sessionScope.msg == null }">
		<p>메세지가 존재하지 않습니다.</p>
	</c:if>
	
	<c:if test="${sessionScope.user != null }">
		<p>${sessionScope.user.id }</p>
		<p>${sessionScope.user.pwd }</p>
		<p>${sessionScope.user.name }</p>
	</c:if>
	<c:if test="${sessionScope.msg == null }">
		<p>.</p>
	</c:if>
</body>
</html>