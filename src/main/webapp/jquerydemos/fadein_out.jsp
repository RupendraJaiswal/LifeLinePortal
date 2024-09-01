<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Fade In Out</title>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">

$(document).ready(function() 
		{
/* 	alert("Hello"); */
 
 $("#fadeout").click(function() {
	$("#img1").fadeOut(2000);

});
 $("#fadein").click(function() {
		$("#img1").fadeIn(2000);

	});
 
 $("#fadeto").click(function() {
		$("#img1").fadeTo(2250, 0.75);

	});
}
);
</script>
</head>
<body>
<img alt="" src="/LifeLinePortal/images/Ambulance2.jpg" id="img1" style="width: 400px;height: 200px;">
<br>
<button id="fadein">Fade In</button>
<button id="fadeout">Fade out</button>
<button id="fadeto">Fade To</button>
</body>
</html>