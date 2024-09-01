<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Form</title>
<link rel="icon" href="/LifeLinePortal/images/favicon.jpg">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<style >
body.bg{
background-image: linear-gradient(to top, #fcc5e4 0%, #fda34b 15%, #ff7882 35%, #c8699e 52%, #7046aa 71%, #0c1db8 87%, #020f75 100%);
}
</style>
<script type="text/javascript">
$(document).ready(function() 
  		{
			$("#txtuserid").blur(function() 
			{
			var donorid=this.value;
			//alert(donorid)
			$.get("/LifeLinePortal/DonorRegistration",
			{
				
				id:donorid
				//nm:name
			},		
			function(response_data,status)
			{
				alert(response_data+status)
				
				$("#msgid").html(response_data)
				
				
			
			});
			});
        	
        	
		})
		





</script>




<script >
function showOtherCity( cityname) {
	 var city=document.getElementById("textothercity")
	if(cityname=="others")
		{
		 city.style.display="block"
		}
	else
		{
		 city.style.display="none"
		}
}
</script>
</head>
<body class="bg">
<%@include file="/common/navbar.html" %>
<%
String msg=(String)request.getAttribute("message");//downcasting or narrow-casting
if(msg!=null)
{
%>


<div class="alert alert-warning alert-dismissible fade show text-center" role="alert">
  <strong><%=msg %>!</strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%} %>
<h1 class="bg-primary" style="text-align: center"> Donor Registration Form</h1>
<div class="contain-fluid centered bg-secodary" >

<div class="row ">
	<div class="col-4 ">
	
	</div>	
		<div class="col-4 ">
			<form  class="needs-validation" novalidate action="/LifeLinePortal/DonorRegistration" method="post">
				<div class="mb-3 " >
					<label for="UserID" class="form-label">User ID</label> 
					<input type="text" class="form-control" id="txtuserid" name="txtuserid" required="required" placeholder="Enter  your ID here">
					<span id="msgid" style="color: red"></span>
				<div class="invalid-feedback">
			UserID Required</div>
				</div>
				 <div class="mb-3">
    <label for="UserPassword" class="form-label">Password</label>
    <input type="password" class="form-control" id="txtpassword" name="txtpass" required="required" placeholder="Enter  your Password here">
  <div class="invalid-feedback">
			Password Required</div>
  </div>
  
  <div class="mb-3">
    <label for="Name" class="form-label">Name</label>
    <input type="text" class="form-control" id="txtname" name="txtname" required="required" placeholder="Enter  your Name here">
    <div class="invalid-feedback">
			Name Required</div>
  </div>
  <div class="mb-3">
    <label for="Age" class="form-label">Age</label>
    <input type="number" class="form-control" id="txtage" name="txtage" required="required" placeholder="Enter  your Age here">
    
    <div class="invalid-feedback">
		Age Required</div>
  </div>
  <div class="mb-3">
    <label for="Email" class="form-label">Email</label>
    <input type="email" class="form-control" id="txtemail" name="txtemail" required="required" placeholder="Enter  your Email here">
    <div class="invalid-feedback">
			Email Required</div>
  </div>
  <div class="mb-3">
    <label for="Phone" class="form-label">Phone</label>
    <input type="number" class="form-control" id="txtphone" name="txtphone" required="required" placeholder="Enter  your Phone Number here">
      <div class="invalid-feedback">
			Phone No Required
			</div>
      </div>
    <div class="mb-3">
    <label for="Blood-group" class="form-label">Blood Group</label>
    
    <select class="form-select" aria-label="select city" required="required" name="bloodgroup">
  <option selected disabled value="">---Select Blood Group---</option>
  <option value="AB+">AB+</option>
  <option value="A+">A+</option>
  <option value="B+">B+</option>
   <option value="O+">O+</option>
  <option value="AB-">AB-</option>
  <option value="A-">A-</option>
  <option value="B-">B-</option>
   <option value="O-">O-</option>
</select>
         <div class="invalid-feedback">
			 Please Select Blood Group</div>
   </div>
    
  </div>
    <div class="mb-3">
   <label for="Gender" class="form-label " >Gender</label><br>
   <input class="form-check-input" type="radio" name="gender" id="gender"  value="F" required="required" >
  <label class="form-check-label" for="Gender"> Female</label>
  <input class="form-check-input" type="radio" name="gender" id="gender"  value="M">
  <label class="form-check-label" for="Gender">Male</label>
  <div class="invalid-feedback">
			Gender Required</div>
   </div>

  

  <div class="mb-3">
    <label for="City" class="form-label">City</label>
    
    <select class="form-select" aria-label="Default select example" id="cmbcity" name="cmbcity"  required="required" onchange="showOtherCity(this.value)">
  <option selected disabled value="">---Select City----</option>
  <option value="Agra">Agra</option>
  <option value="Bahraich">Bahraich</option>
  <option value="Gonda">Gonda</option>
  <option value="Hapur">Hapur </option>
   <option value="Hardoi">Hardoi </option>
  <option value="Kanpur">Kanpur</option>
  <option value="Lakhimpur">Lakhimpur</option>
  <option value="Sitapur">Sitapur</option>
<option value="others">Others</option>
</select>
     <div class="invalid-feedback">
			 Please Select City
			 </div>
   </div>

   <input type="text" id="textothercity" name="textothercity" class="form-control mt-3" style="display:none "placeholder="Enter Your City name Here">
  <div class="form-check mb-3">
  <input class="form-check-input" type="checkbox" value="agree" id="chkagree" name="chkagree" required="required"></input>
  <lable class="form-check-lable" for ="checkbox" >above information are correct or not ?</lable>
  <div class="invalid-feedback">
			Other City Required</div>
  </div>
  
  <button type="submit" class="btn btn-secodary btn-outline-success rounded-pill  ">Submit</button>
   <button type="reset" class="btn btn-secodary btn-outline-success rounded-pill  " >Reset</button>
		</div>
		
		
		</form>
	</div>
</div>



<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
<script src="/LifeLinePortal/javaScript/customvalidation.js"></script>
</body>
</html>