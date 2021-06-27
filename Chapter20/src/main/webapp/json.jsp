<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script>
	/*
		class Test{
			int number = 10;
			String name = "안녕하세요";
			
			int sum(int a, int b){
				return a + b;
			}
	}
	*/
	var jsonObject = {
			"number" : 10, "name" : "안녕하세요",
			"sum" : function(a, b) {return a + b}
	}
	console.log(jsonObject.number);
	console.log(jsonObject["name"]);
	console.log(jsonObject.sum(10,30));
	
	var jsonArr = [
		{"name" : "정도전", "IQ" : 200},
		{"name" : "이방원", IQ : 150}
	];
	console.log("이방원의 아이큐: " + jsonArr[1].IQ);
	
	var jsonObject2 = {
			"FruitArr" : ["apple", "banana", "orange"],
			"CityObj" : {"name" : "Osan", "region" : "Gyeonggi-do",
						myObj : {"num" : 10}
			}
	}
	console.log("세번째 과일: " + jsonObject2.FruitArr[2]);
	console.log("오산시가 속한 지역: " + jsonObject2.CityObj.region);
	console.log(jsonObject2.CityObj.myObj.num);
</script>
</head>
<body>

</body>
</html>