<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@page import="portal.dbtask.*,java.sql.*,portal.beans.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Donor</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>
<body>
<%-- <%@include file="/common/navbar.html" %> --%>

<%String ct=request.getParameter("donor_city"); 
String strsearch ="select * from donor where city=?";
  ArrayList<Donor> donorlist= DonorTask.cityWiseDonors(strsearch,ct);

%>
<table class="table">
  <thead>
    <tr>
      <th scope="col">DonorName</th>
      <th scope="col">Email</th>
      <th scope="col">Phone</th>
      <th scope="col">BloodGroup</th>
      <th scope="col">City </th>
      <th scope="col">Age</th>
      
    </tr>
  </thead>
  <tbody>
   <%
   for(Donor d:donorlist)
   {
   
   %>
   <tr>
   <th ><%=d.getName() %></th>
     <th><%=d.getEmail() %></th>
       <th><%=d.getPhone()%></th>
         <th><%=d.getBloodgroup()%></th>
           <th><%=d.getCity()%></th>
         <th><%=d.getAge() %></th>
       
   </tr>
   <%} %>
  </tbody>
</table>





<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>

</body>
</html>