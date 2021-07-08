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
		var url = "Country_list_lib.jsp";
		var obj = {
				"url" : url,
				"data" : null,
				"method" : "POST",
				"success" : function(data){
					var CountryArr = eval(data); // eval: js코드로 인식하게 해주는 함수
					
					for(var i = 0; i < CountryArr.length; i++){
						var country = CountryArr[i].country;
						
						var $op = $("<option>");			// jquery객체
						$op.html(country);
						$op.val(country);
						
						$("#country_select").append($op);
					}
				}
		}
		
		$.ajax(obj);
	});
	function country_play(){
		var country = $("#country_select").val();
		if(country == ""){
			return;
		}
		if(country == "대한민국"){
			$('#city_select').children('option').remove();
			var url = "City_list_lib.jsp";
			var obj = {
					"url" : url,
					"data" : null,
					"method" : "POST",
					"success" : function(data){
						var CityArr = eval(data); // eval: js코드로 인식하게 해주는 함수
						
						for(var i = 0; i < 3; i++){
							var city = CityArr[i].city;
							
							var $op = $("<option>");			// jquery객체
							$op.html(city);
							$op.val(city);
							
							$("#city_select").append($op);
						}
					}
			}
			$.ajax(obj);
		}
		if(country == "일본"){
			$('#city_select').children('option').remove();
			var url = "City_list_lib.jsp";
			var obj = {
					"url" : url,
					"data" : null,
					"method" : "POST",
					"success" : function(data){
						var CityArr = eval(data); // eval: js코드로 인식하게 해주는 함수
						
						for(var i = 3; i < 6; i++){
							var city = CityArr[i].city;
							
							var $op = $("<option>");			// jquery객체
							$op.html(city);
							$op.val(city);
							
							$("#city_select").append($op);
							}
						}
			}
			$.ajax(obj);
		}
		if(country == "중국"){
			$('#city_select').children('option').remove();
			var url = "City_list_lib.jsp";
			var obj = {
					"url" : url,
					"data" : null,
					"method" : "POST",
					"success" : function(data){
						var CityArr = eval(data); // eval: js코드로 인식하게 해주는 함수
						
						for(var i = 6; i < 9; i++){
							var city = CityArr[i].city;
							
							var $op = $("<option>");			// jquery객체
							$op.html(city);
							$op.val(city);
							
							$("#city_select").append($op);
							}
						}
			}
		}
		$.ajax(obj);
	}
	function city_play(){
		var cities = $("#city_select").val();
		if(cites == ""){
			return;
		}
		if(cities == "서울"){
			$("#city_photo").attr("src", "image/서울.jpg");
		}
		if(cities == "인천"){
			$("#city_photo").attr("src", "image/인천.png");
		}
		if(cities == "부산"){
			$("#city_photo").attr("src", "image/부산.jpg");
		}
		if(cities == "도쿄"){
			$("#city_photo").attr("src", "image/도쿄.jpg");
		}
		if(cities== "오사카"){
			$("#city_photo").attr("src", "image/오사카.png");
		}
		if(cities == "삿포로"){
			$("#city_photo").attr("src", "image/삿포로.jpg");
		}
		if(cities == "상하이"){
			$("#city_photo").attr("src", "image/상하이.jpg");
		}
		if(cities == "베이징"){
			$("#city_photo").attr("src", "image/베이징.jpg");
		}
		if(cities == "톈진"){
			$("#city_photo").attr("src", "image/톈진.jpg");
		}
	}
</script>
</head>
<body>
	<select id="country_select" onchange="country_play()">
		<option>:::국가 선택:::</option>
	</select>
	<select id="city_select" onchange="city()_play">
		<option value="">::도시를 선택하세요::</option>
	</select>
	<hr>
	<img id="city_photo" style="width:320px; height:240px;" src="">
</body>
</html>