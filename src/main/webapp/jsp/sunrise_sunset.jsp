<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Sunrise and Sunset</title>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<script>
	$(document).ready(function()
			{
		$("#btnsunset").click(function() 
		{
			$("#img1").fadeOut(8000);
		}		
		
		);
		$("#btnsunrise").click(function() 
				{
					$("#img1").fadeIn(5000);
				}		
				
				);
			});
	
	
	
	</script>
</head>
<body>
	<img src="https://images6.alphacoders.com/386/386236.jpg" id="img1" 
		style="width: 1500px; height: 500px;display: none;">
		<div>
	<button id="btnsunrise">sunrise</button>
	<button id="btnsunset">sunset</button>
</div>
</body>
</html>