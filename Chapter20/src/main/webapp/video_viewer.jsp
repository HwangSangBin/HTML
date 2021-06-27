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
		/* var url = "video_list.jsp"; */
		/* var url = "video_list_db.jsp"; */
		var url = "video_list_lib.jsp";
		var obj = {
				"url" : url,
				"data" : null,
				"method" : "POST",
				"success" : function(data){
					var VideoArr = eval(data); // eval: js코드로 인식하게 해주는 함수
					
					for(var i = 0; i < VideoArr.length; i++){
						var title = VideoArr[i].title;
						var path = VideoArr[i].path;
						
						/* var option = "<option value = '"+path+"'>" + title + "</option>";
						var select = document.getElementById("video_select");
						select.innerHTML += option; */
						var $op = $("<option>");			// jquery객체
						$op.html(title);
						$op.val(path);
						
						$("#video_select").append($op);
						console.log($("#video_select").html());
					}
				}
		}
		
		$.ajax(obj);
	});
	function video_play(){
		var path = $("#video_select").val();
		if(path == ""){
			return;
		}
		/* var video_poketmon = document.getElementById("video_poketmon");
		video_poketmon.src = path;
		video_poketmon.play();  */
		$("#video_poketmon").attr("src", path);
		$("#video_poketmon").get(0).play();
	}
</script>
</head>
<body>
	비디오 목록:
	<select id="video_select" onchange="video_play()">
		<option>:::재생할 비디오 선택:::</option>
	</select>
	<hr>
	<video id="video_poketmon" style="width:320px; height:240px;" src="" controls></video>
</body>
</html>