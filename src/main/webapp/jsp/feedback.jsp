<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Page</title>
<link rel="icon" href="/LifeLinePortal/images/favicon.jpg">
<link rel="stylesheet" href="/LifeLinePortal/css/customstyle.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css" integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body class="bg">
<%@include file="/common/navbar.html" %>
<%
String msg=(String)request.getAttribute("feedbackMessage");//downcasting or narrow-casting
if(msg!=null)
{
%>


<div class="alert alert-warning alert-dismissible fade show text-center" role="alert">
  <strong><%=msg %>!</strong> 
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<%} %>
<div class="card bg-light offset-3 mb-3 pb-3 mt-5" style=" height: auto;width: 600px">
<div  >


<h2 style="text-align: center"><i class="fas fa-edit" style=""></i> Your feedback is valuable for us <i class="fas fa-edit" style=""></i></h2>



</div>
<div class="contain-fluid centered bg-secodary" >

<div class="row ">
	
		<div class="col-6 offset-3 ">
			<form class="needs-validation" novalidate action="/LifeLinePortal/FeedBack" method="post">
				<div class="mb-3 " >
					<label for="UserID" class="form-label">Your Name</label> 
					<input type="text" class="form-control" id="txtname" name="txtname" required="required" placeholder="Enter  your name here">
				</div>
    <div class="invalid-feedback">
			UserId Required</div>
 
  <div class="mb-3">
    <label for="Email" class="form-label">Email</label>
    <input type="email" class="form-control" id="txtemail" name="txtemail" required="required" placeholder="Enter  your Email here">
    <div class="invalid-feedback">
		Email ID Required</div>
  </div>
  
  <div class="mb-3">
    <label for="validationTextarea" class="form-label">Your Feedback</label>
     <textarea class="form-control" id="txtfeedback" rows="4" cols="4" required="required" name="txtfeedback"></textarea>
  <div class="invalid-feedback">
      Please enter a Feedback in the textarea.
    </div>
      </div>
 
  <div class="mb-3">
    <label for="City" class="form-label">Rating</label>
    
    <select class="form-select" aria-label="Default select example" id="cmbrating" name="cmbrating"  required="required">
  <option selected disabled value="">---Select Your Rating----</option>
  <option value="1">1</option>
  <option value="2">2</option>
  <option value="3">3</option>
  <option value="4">4</option>
   <option value="5">5</option>
 
   
</select>
    <div class="invalid-feedback">
		Rating Is Required</div>
  </div >
  <div class="text-center">
  <button type="submit" class="btn btn-secodary btn-outline-success rounded-pill  ">Submit</button>
   <button type="reset" class="btn btn-secodary btn-outline-success rounded-pill  " >Reset ?</button>
		</div>
		
		</div>
		</form>
	</div>
</div>
</div>




<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js" integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz" crossorigin="anonymous"></script>
<script src="/LifeLinePortal/javaScript/customvalidation.js"></script>
</body>

</html>