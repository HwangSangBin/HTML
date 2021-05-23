<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Calendar" %>
<%@ page session ="true" %>
<%@ page buffer="8kb" %>
<%@ page isThreadSafe="true" %>
<%@ page info="page 지시어 실습" %>
<%@ page errorPage="error.jsp" %>
<%
	Calendar c = Calendar.getInstance();
	// int number = 100 / 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	잘 실행됐어요
</body>
</html>