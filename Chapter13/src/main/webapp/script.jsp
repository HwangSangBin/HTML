<%-- jsp주석 --%>	<!-- html주석 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%!
	// 이곳은 선언문 영역, 실제 서블릿으로 파생될 때 그 서블릿의 필드 영역이다.
	String sayHello = "안녕하세요?";
	
	public int sum(int a, int b){
		return a + b;
	}
%>

<%
	// 이곳은 스크립트 영역, servlet() 메서드의 지역 영역이다.
	request.setCharacterEncoding("utf-8");
	String msg = request.getParameter("msg");
	
	response.setContentType("text/html; charset=utf-8");
	response.getWriter().println("메세지" + msg);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	스크립트요소 스터디<br>
	<%= sayHello %>
	<%= sum(10, 20) %>
</body>
</html>