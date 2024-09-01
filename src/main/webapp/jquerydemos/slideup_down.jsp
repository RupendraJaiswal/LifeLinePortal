<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
$(document).ready(function()
		{
	$("#divtop").click(function()
			{
		$("#divbottom").slideToggle(2000)
		
	}
	);
/* 	$("#divtop").click(function()
			{
		$("#divbottom").slideDown(2000)
		
	}
	); */
	/* $("#divtop").click(function()
			{
		$("#divbottom").slideUp(2000)
		
	}
	); */
		}
		);
</script>
</head>
<body>
<div class="contain-fluid bg-primary" id="divtop">


<h1 style="text-align: center;"> Seminar On Spring FrameWork</h1></div>
<div class="container bg-warning" id="divbottom" style="display: none;">
<ul>
<li>IOC</li>
<li>Dependency Injection</li>
<li>MVC Pattern</li>

</ul>
</div>


<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous"></script>
			<script src="/LifeLinePortal/javaScript/customvalidation.js"></script>
		
</body>
</html>