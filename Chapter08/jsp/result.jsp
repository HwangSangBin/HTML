<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>:: 닉네임 생성기 ::</title>
</head>
<body>
    <%
        String name1 = request.getParameter("first_name");
        String name2 = request.getParameter("second_name");
        String num = request.getParameter("random_int");
    %>

    <%= name1 %><%= name2 %><%= num %>
</body>
</html>