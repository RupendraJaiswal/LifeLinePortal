<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Notice Page</title>
<link rel="stylesheet" href="/LifeLinePortal/css/customstyle.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body>
<% String adminid=(String)session.getAttribute("sessionKey2");

if(adminid==null)
{
	request.setAttribute("errorMessage", "Unauthorised Access");// set the value in request scope
	RequestDispatcher rd = request.getRequestDispatcher("/admin/admin_login.jsp"); // it returns the reference of
																			// RequestDispatcher
	rd.forward(request, response);

	
}
else{%>

<%@include file="/admin/adminnavbar.html" %>


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
<div class="offset-3 mt-5  ">
<form action="/LifeLinePortal/Notice" method="get">
<div class="card  bg-light w-50 ps-3 pe-3">
<h2 class="text-center text-primary">Notice For  Camp</h2>
<label class="form-label mb-2"> Message</label>
<textarea rows="" cols="" placeholder="Enter message" class="mb-2 rounded" name="txtmessage"></textarea>
<label class="form-label mb-2"> Venue</label>
<input type="text" name="txtvenue" placeholder="Enter venue"  class="mb-2 rounded">
<label class="form-label mb-2"> Date</label>
<input type="date" name="txtdate" placeholder="Select date"  class="mb-2 rounded">
<div class="text-center">
<button type="submit" class="btn btn-success mb-2">Submit</button>
</div>
</div>
</form>
</div>
<%}
%>
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