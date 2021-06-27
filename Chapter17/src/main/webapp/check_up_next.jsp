<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.Date" %>
<%
	pageContext.setAttribute("date", new Date());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<c:if test="${param.Language == '한국어'}">
		${param.name }님 안녕하세요 오늘은 
		<fmt:formatDate type="date" pattern="yyyy/MM/dd/" value="${date }"/>
	</c:if>
	<c:if test="${param.Language == '영어'}">
		${param.name }님 안녕하세요 오늘은 
		<fmt:formatDate type="date" pattern="dd, MM, yyyy" value="${date }"/>
	</c:if>
	<c:if test="${param.Language == '불어'}">
		${param.name }님 안녕하세요 오늘은 
		<fmt:formatDate type="date" pattern="dd, MM, yyyy" value="${date }"/>
	</c:if>
	<c:if test="${param.Language == '독일어'}">
		${param.name }님 안녕하세요 오늘은 
		<fmt:formatDate type="date" pattern="dd. MM. yyyy" value="${date }"/>
	</c:if>
	<c:if test="${param.Language == '태국어'}">
		${param.name }님 안녕하세요 오늘은 
		<fmt:formatDate type="date" pattern="dd MM yyyy" value="${date }"/>
	</c:if>
</body>
</html> 