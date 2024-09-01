<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DonerInfo</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
</head>

<body>
<%
String[]bloodGroup={"A+","AB+","B+","O+","A-","AB-","B-", "O-"};
String gender1="Male";
String gender2="Female";

%>
<div class="row ">
<h2 style="text-align: center;margin-top: 30px" class="bg-primary text-light">Doner Information</h2>



</div>
<div class="card offset-3 bg-light" style="margin-right:30%;margin-top: 5% ">
<form method="post" action="/LifeLinePortal/jsp/doner.jsp">
<div class="row">
<div class="col-10" style="margin-left: 15px;margin-top: 15px">

 <div class="mb-3">
    <label for="" class="form-label">Name</label>
    <input type="text" class="form-control" id="" name="txtname" placeholder="Enter Your Name" required="required">
</div>

<div class="mb-3">
    <label for="" class="form-label">Age</label>
    <input type="number" class="form-control" id="" name="txtage" placeholder="Enter Your Age" required="required">
</div>

   <label for="" class="form-label mb-3">Blood Group</label>
<div class="mb-3">
<select class="form-select" aria-label="Default select example" name="cmbgroup">
  <option selected>Select Group</option>
  <%
  for(int i=0;i<8;i++ )
  {  
  %>
  <option value="<%=bloodGroup[i] %>">
  <%=bloodGroup[i] %>
   </option>
   
   <%} %>
</select>
</div>
<label for="" class="form-label mb-3">Gender</label>
<div class="mb-3">
   
 <input class="form-check-input" type="radio" name="gender" id="" required="required" value="male">
  <label class="form-check-label" for="flexRadioDefault1">
   <%=gender1 %>
  </label>
  
  <input class="form-check-input" type="radio" name="gender" id="" required="required" value="female">
  <label class="form-check-label" for="flexRadioDefault1">
   <%=gender2 %>
  </label>
 </div> 
 <div class="mb-3">
<button type="submit" class="btn btn-danger offset-6">Submit</button>
</div>


</div>
</div>
</form>
</div>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
</body>
</html>