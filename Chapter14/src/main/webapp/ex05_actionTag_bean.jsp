<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%
	PersonVo vo = new PersonVo();
	vo.setName("황상빈");
	vo.setAge("21");
	vo.setGender("male");
%> --%>
<jsp:useBean id="pvo" class="vo.PersonVo"></jsp:useBean>
<%-- <jsp:setProperty property="name" value="상빈" name="pvo"></jsp:setProperty>
<jsp:setProperty property="age" value="21" name="pvo"></jsp:setProperty>
<jsp:setProperty property="gender" value="male" name="pvo"></jsp:setProperty> --%>

<jsp:setProperty property="*" name="pvo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<%-- 이름:<%= vo.getName() %> --%>
	이름:<jsp:getProperty property="name" name="pvo"></jsp:getProperty>
	나이:<jsp:getProperty property="age" name="pvo"></jsp:getProperty>
	성별:<jsp:getProperty property="gender" name="pvo"></jsp:getProperty>
</body>
</html>