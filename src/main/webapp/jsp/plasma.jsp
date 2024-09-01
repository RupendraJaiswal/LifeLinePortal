<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Plasma</title>
<link rel="stylesheet" href="/LifeLinePortal/css/customstyle.css">
<link rel="icon" href="/LifeLinePortal/images/favicon.jpg">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<style >
div.d1 {
	width: 400px;
	height: 400px;
	background-color: pink;
	float: left;
	margin-left: 65px;
	margin-top:30px;
   margin-right:20px;
   margin-bottom: 20px;
   border-right-style: outset;
    font-family:sans-serif;
    padding-top: 5px;
    padding-bottom: 5px;
}
p.content {
text-align: center;
}
h1.heading {
text-align: center;
font-family: monospace;
}

body {
	background-image: url("/LifeLinePortal/images/background img6.jpg ");
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-position: center;
	background-size: 100% 100%;
}
</style>


</head>
<body>
<%@include file="/common/navbar.html" %>

<div class="container-fluid  bg-secondary" style="margin-top: 5px;   padding-top: 5px;padding-bottom: 5px; ">
<h2 class="text-warning" style="text-align: center;">TYPES OF DONATION</h2>
<p>The human body contains five liters of blood, which is made of several useful components i.e. Whole blood, Platelet, and Plasma.

Each type of component has several medical uses and can be used for different medical treatments. your blood donation determines the best donation for you to make.

For plasma and platelet donation you must have donated whole blood in past two years.</p>

<div  class="d1">
<h1 class="heading">What is it?</h1>
<p class="content">The straw-coloured liquid in which red blood cells, white blood cells, and platelets float in.Contains special nutrients which can be used to create 18 different type of medical products to treat many different medical conditions..</p>
<h1 class="heading">Who can donate?</h1>
<p class="content">You need to be 18-70 (men) or 20-70 (women) years old, weigh 50kg or more and must have given successful whole blood donation in last two years.</p>
</div>
<div class="d1">
<h1 class="heading">User For?</h1>
<p class="content">Immune system conditions, pregnancy (including anti-D injections), bleeding, shock, burns, muscle and nerve conditions, haemophilia, immunisations.</p>
<h1 class="heading">Lasts For?</h1>
<p class="content">Plasma can last up to one year when frozen.</p>
</div>
<div class="d1">
<h1 class="heading">How does it work?</h1>
<p class="content">We collect your blood, keep plasma and return rest to you by apheresis donation</p>
<h1 class="heading">How long does it take?</h1>
<p class="content">15 minutes to donate.</p>
<h1 class="heading">How often can I donate?</h1>
<p class="content">Every 2-3 weeks.</p>
</div>


</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>

</body>
</html>