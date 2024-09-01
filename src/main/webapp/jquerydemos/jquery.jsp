<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>jQuery Demo</title>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script type="text/javascript">
$(document).ready(function()
		{
	//alert("Hello Jquery");
	$("#btnhide").click(function()
			{
		$("#p1").hide();
			}
	);  //hide function close
$("#btnshow").click(function()
		{
	$("#p1").show();
		}
);
	);//show function close
   

</script>
</head>
<body>
<p id="p1"> Rupendra Jaiswal</p>
<button  id="btnshow">show </button>
<button   id="btnhide"> hide</button>
</body>
</html>