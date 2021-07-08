<%@page import="org.json.simple.JSONArray"%>
<%@page import="vo.CountryVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<CountryVo> CountryList = new ArrayList<>();

	CountryVo vo1 = new CountryVo();
	vo1.setCountry("대한민국");
	CountryList.add(vo1);

	CountryVo vo2 = new CountryVo();
	vo2.setCountry("일본");
	CountryList.add(vo2);

	CountryVo vo3 = new CountryVo();
	vo3.setCountry("중국");
	CountryList.add(vo3);

	out.print(JSONArray.toJSONString(CountryList));
%>