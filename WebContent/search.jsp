<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String query = request.getParameter("query");
	String lang  = request.getParameter("lang");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" href="css/bootstrap.min.css" rel="stylesheet"/>
<style type="text/css">
	#header{
		width: 100%;
		height: 20px;
		background-color: #2D2D2D;
		text-align:right;
		padding:5px;
		color:#ffffff;
	}
	#home{
		float:left;
	}
	#search{
		height:16px;
		margin-top: -3px;
	}
	#bang{
		height: 16px;
		margin-top: -12px;
	}
	#canvas{
		width: 100%;
		height: 90%;
		margin-top:40px;
		background-color: #ffffff;
	}
	.node{
		
	}
	#footer{
		float:bottom;
		width: 100%;
		height: 20px;
		background-color: #2D2D2D;
		text-align:center;
		color:#ffffff;
	}
	#hidden{
		display:none;
	}
</style>
</head>
<body>
	<!-- Header bar -->
	<div id="header" class="container navbar-fixed-top">
		<a href="http://localhost:8080/WikiBang" id="home">WikiBang</a>
		<input type="text" id="search" /><span>&nbsp</span><div class="btn" id="bang" onclick="bang()">Bang!</div>
	</div>
	
	
	<!-- canvas -->
	<div id="canvas">
		<div class="node init btn"><%=query %></div>
	</div>
	
	
	<!-- Footer bar -->
	<div id="footer" class="container navbar-fixed-bottom">
		Copyright© 2012 Lv Xiang. All Rights Reserved.
	</div>
	
	<!-- Hidden div -->
	<div class="hidden" id="hidden">
		<div id="hidden_lang"><%=lang %></div>
		<div id="hidden_query"><%=query %></div>
	</div>
	
	
	<!-- JavaScripts -->
	<script type="text/javascript" src="js/jquery1.8.2.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript">
		var _lang  = $('#hidden_lang').html();
		var _query = $('#hidden_query').html();
	
		/// search for new topical 
		function bang(){
			var text = $('#text').val();
		}
		
		/// find articles related to the query
		function span(q){
			$.ajax({
				url: 'http://localhost:8080/WikiBanag/SearchServlet',
				data: {query: escape(q), lang: _lang},
				type: 'POST'
			}).done(function(data){
				
			});
		}
		span("apple");
	</script>
</body>
</html>