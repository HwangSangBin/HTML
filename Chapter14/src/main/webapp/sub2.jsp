<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	$(document).ready(function(){
		$("#my_P").html("서브2 페이지<%= request.getAttribute("name") %>");
	})
</script>
</head>
<body>
	<p id="my_P"></p>
</body>
</html>