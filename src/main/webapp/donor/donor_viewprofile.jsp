<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="portal.dbtask.* "%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Profile</title>
<link rel="stylesheet" href="/LifeLinePortal/css/customstyle.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
</head>
<body>
<%
String msg=(String)request.getAttribute("Message");//downcasting or narrow-casting
if(msg!=null)
{
%>
<div class="alert alert-warning alert-dismissible fade show text-center" role="alert">
  <strong><%=msg %>!</strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%} %>
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
	<div class="card ms-3 mt-5" style="width: 18rem;">
  <div class="card-header">
    Your Details
  </div>
  <ul class="list-group list-group-flush ">
    <li class="list-group-item">Name:<%=donor_name %></li>
    <li class="list-group-item">Email:<%=donor_email %></li>
    <li class="list-group-item">Blood Group:<%=blood_group %></li>
     <li class="list-group-item">City:<%=city_name %></li>
    <li class="list-group-item"> Phone :<%=donor_phone %></li>
  </ul>
</div>
	
<%
rs.close();
DbConnection.closeConnection();}

}

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