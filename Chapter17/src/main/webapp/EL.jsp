<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = "지역변수";
	pageContext.setAttribute("msg", "pageScope 소속");
	request.setAttribute("msg", "requestScope 소속");
	session.setAttribute("msg", "sessionScope 소속");
	application.setAttribute("msg", "applicationScope 소속");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<ul>
		<li><%=msg %></li>
		<li>${msg }</li>
		<li>${param.msg })</li>
		<li>${pageScope.msg }</li>
		<li>${requestScope.msg }</li>
		<li><%=request.getAttribute("msg") %></li>
		<li>${sessionScope.msg }</li>
		<li>${application.msg }</li>
		<input type="button" value="페이지 이동" onclick="location.href='test.jsp?msg=param 소속'">
	</ul>
</body>
</html>