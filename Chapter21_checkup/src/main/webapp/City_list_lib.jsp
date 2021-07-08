<%@page import="org.json.simple.JSONArray"%>
<%@page import="vo.CityVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<CityVo> CityList = new ArrayList<>();
	
	CityVo vo1 = new CityVo();
	vo1.setCity("서울");
	CityList.add(vo1);
	
	CityVo vo2 = new CityVo();
	vo2.setCity("경기");
	CityList.add(vo2);
	
	CityVo vo3 = new CityVo();
	vo3.setCity("부산");
	CityList.add(vo3);
	
	CityVo vo4 = new CityVo();
	vo4.setCity("도쿄");
	CityList.add(vo4);
	
	CityVo vo5 = new CityVo();
	vo5.setCity("오사카");
	CityList.add(vo5);
	
	CityVo vo6 = new CityVo();
	vo6.setCity("삿포로");
	CityList.add(vo6);
	
	CityVo vo7 = new CityVo();
	vo7.setCity("상하이");
	CityList.add(vo7);
	
	CityVo vo8 = new CityVo();
	vo8.setCity("베이징");
	CityList.add(vo8);
	
	CityVo vo9 = new CityVo();
	vo9.setCity("톈진");
	CityList.add(vo9);
	
	out.print(JSONArray.toJSONString(CityList));
%>