<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#main{
		margin:auto
	}
</style>
</head>
<body>
	<div id="main">
		<input id="search" type="text" />
		<button id="bang" onclick="bang()">bang</button>
		<select id="lang">
			<option value="en">Enlish</option>
			<option value="zh">简体中文</option>
		</select>
	</div>
	<script type="text/javascript">
		function bang(){
			var text = document.getElementById("search");
			var lang = document.getElementById("lang");
			if(text&&lang){
				if(text.value){
					window.location = "http://localhost:8080/WikiBang/search.jsp?query="+text.value+"&lang="+lang.value;
				}
			}
		}
	</script>
</body>
</html>