<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Your View</title>

<link rel="stylesheet" href="/LifeLinePortal/css/customstyle.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<% String userid=(String)session.getAttribute("sessionKey");

if(userid==null)
{
	request.setAttribute("errorMessage", "Unauthorised Access");// set the value in request scope
	RequestDispatcher rd = request.getRequestDispatcher("/jsp/login.jsp"); // it returns the reference of
																			// RequestDispatcher
	rd.forward(request, response);

	
}
else{%>

<%@include file="/donor/donornavbar.html" %>


<%
String msg=(String)request.getAttribute("message");
if(msg!=null)
{
%>


<div class="alert alert-warning alert-dismissible fade show text-center" role="alert">
  <strong><%=msg %>!</strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%} %>
<form class="needs-validation"  action="/LifeLinePortal/YourView" method="get">
<div  class="card container col-md-5 text-center bg-light" style="margin-left:25%;margin-top: 5%">
<h1>Your Views</h1>

<div>
<textarea placeholder="Enter your views" class="mb-3" name="txtview" style="width:60%" required="required"></textarea>
  <div class="invalid-feedback">
			Your Views Required
 </div>
 </div>

<div class="text-center">
<button class="btn btn-success mb-3">Post</button></div></div>
</form>

<%}
%>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
<script src="/LifeLinePortal/javaScript/customvalidation.js"></script>
</body>
</html>