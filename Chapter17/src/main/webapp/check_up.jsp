<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
	String[] LanguageArr = {"한국어", "영어", "불어", "독일어", "아랍어"};
	pageContext.setAttribute("menu", LanguageArr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<form>
		<input id="name" placeholder="이름을 입력하세요">
		<select>
			<option value="">언어 선택</option>
			<c:forEach items="${menu }" var="Language">
				<option value="${Language }">${Language}</option>
			</c:forEach>
		</select>
		<input type="button" value="확인" onclick='locaiton.href="next.jsp?N=name?L=Language"'>
	</form>
</body>
</html>