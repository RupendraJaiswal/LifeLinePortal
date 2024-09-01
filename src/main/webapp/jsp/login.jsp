<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Form</title>
<link rel="stylesheet" href="/LifeLinePortal/css/customstyle.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body>
<%
String id="";
String pass="";
Cookie[]ck=request.getCookies();//it will read data from cookie
String data="";
if(ck.length>1)
{
	for(int i=0;i<ck.length;i++) 
	{
		Cookie c=ck[i];
		String name=c.getName();
		if(name.equalsIgnoreCase("customcookie"))
		{
			data=c.getValue();
			break;
		}
	}
	String[]data_arr=data.split("@");
	id=data_arr[0];
	pass=data_arr[1];
}
%>


<%@include file="/common/navbar.html" %>
<%
String msg=(String)request.getAttribute("errorMessage");//downcasting or narrow-casting
if(msg!=null)
{
%>


<div class="alert alert-warning alert-dismissible fade show text-center" role="alert">
  <strong><%=msg %>!</strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%} %>

	<h1 style="color: red; text-align: center">Login Form</h1>

	<div class="row">
		<div class="col-4">
			<img src="/LifeLinePortal/images/b4.jpg"
				style="width: 250px; height: 200px">
		</div>
		<div class="col-4">
			<form method="post" action="/LifeLinePortal/Login"  class="needs-validation" novalidate>
				<div class="mb-3">
					<label for="UserID" class="form-label">User ID</label> 
					<input type="text" class="form-control" id="txtuserid" name="txtuserid" required="required" placeholder="Enter  your ID here" value="<%=id %>">
			<div class="invalid-feedback">
			UserId Required</div>
			
				</div>
				 <div class="mb-3">
    <label for="UserPassword" class="form-label">Password</label>
    <input type="password" class="form-control" id="txtuserpass" name="txtuserpass" required="required" placeholder="Enter  your Password here"  value="<%=pass%>">
    	<div class="invalid-feedback">
			Password Required</div>
			
				</div>
  </div>
  	</div>
  	Remember Me<input type="checkbox" value="yes" name="checkbox">
  	<div class="text-center">
  <button type="submit" class="btn btn-primary">Submit</button>
		
	</div> 	
	
		</form>
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