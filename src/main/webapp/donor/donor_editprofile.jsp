<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="portal.dbtask.* "%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Profile</title>
<link rel="stylesheet" href="/LifeLinePortal/css/customstyle.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>
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


String strsql ="select * from donor where donor_id=?";
ResultSet rs=DonorTask.getData(strsql,userid);
if(rs.next()){
	String donor_name=rs.getString("name");
	String donor_email=rs.getString("email");
	String blood_group=rs.getString("bloodgroup");
	String city_name=rs.getString("city");
	String donor_phone=rs.getString("phone");
	
	%>
	<form class="needs-validation" novalidate action="/LifeLinePortal/EditProfile" method="post">
	<div class="card ms-3 mt-5" style="width: 18rem;">
  <div class="card-header">
    Your Details
  </div>
  <ul class="list-group list-group-flush ">
    <li class="list-group-item">Name:<%=donor_name %></li>
  <div> <li class="list-group-item">Email:  <input type="email" value="<%=donor_email %>" name="txtemail"></li>
  </div>  
   <div class="invalid-feedback">
		Email ID Required</div>
    <li class="list-group-item">Blood Group:<%=blood_group %></li>
     <li class="list-group-item">City <input type="text" value="<%=city_name %>" name="txtcity"></li>
     <div class="invalid-feedback">
	City Name Required</div>
    <li class="list-group-item"> Phone :<input type="text" value="<%=donor_phone %>" name="txtphone"></li>
    <div class="invalid-feedback">
	phone no is required</div>
  </ul>
</div>
<button type="submit">Submit</button>
	</form>
<%
rs.close();
DbConnection.closeConnection();}

}
%>






		
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
<script src="/LifeLinePortal/javaScript/customvalidation.js"></script>
</body>
</html>