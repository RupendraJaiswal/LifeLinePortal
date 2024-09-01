<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Feedback Form</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="icon" href="/LifeLinePortal/images/favicon.png">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.9.0/css/all.min.css"
	integrity="sha512-q3eWabyZPc1XTCmF+8/LuE1ozpg5xxn7iO89yfSOd5/oKvyqLngoNGsx8jq92Y8eXJ/IRxQbEC+FGSYxtk2oiw=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
body {
	background-image: linear-gradient(to right, #eea2a2 0%, #bbc1bf 19%, #57c6e1 42%, #b49fda
		79%, #7ac5d8 100%);
}

li {
	display: inline;
	color: black;
	font-size: 20px;
	font-family: "Comic Sans Ms";
	margin: 5px;
}

i {
	color: maroon;
}
</style>
</head>
<body>
	<%@include file="/common/navbar.html"%>
	<div class="container-fluid bg-info">
		<div style="width: 30px; height: 30px; float: right">
			<li><i class="fas fa-comments"></i></li>
		</div>
		<div style="width: 30px; height: 30px; float: left">
			<li><i class="fas fa-comment-alt"></i></li>
		</div>
		<h3
			style="text-align: center; font-family: Comic Sans Ms; color: maroon">Your
			Feedback is Valuable for us.</h3>
	</div>
	<%
	String msg = (String) request.getAttribute("message");//downcasting or narrowcasting
	%>
	<%
	if (msg != null) {
	%>
	<div class="alert alert-warning alert-dismissible fade show offset-3"
		role="alert" style="width: 50%;">
		<strong><%=msg%></strong>
		<button type="button" class="btn-close" data-bs-dismiss="alert"
			aria-label="Close"></button>
	</div>
	<%
	}
	%>
	<div class="row justify-content-center">
		<div class="col-4">
			<form method="post" action="/LifeLinePortal/jstl/feedback_jstl.jsp"
				class="needs-validation" novalidate="novalidate">
				<div class="mb-3">
					<label for="Name" class="form-label">Your Name</label> <input
						type="text" class="form-control" id="txtname" name="txtname"
						required="required" placeholder="Enter Your Name Here.....">
					<div class="invalid-feedback">Please Enter User ID.....</div>
				</div>
				<div class="mb-3">
					<label for="Email" class="form-label">Your Email</label> <input
						type="email" class="form-control" id="txtemail" name="txtemail"
						required="required" placeholder="Enter Your Email Here.....">
					<div class="invalid-feedback">Please Enter Valid Email.....</div>
				</div>
				<div class="mb-3">
					<label for="Feedback" class="form-label">Your Feedback</label>
					<textarea class="form-control" rows="3" id="txtfeedback"
						name="txtfeedback" required="required"
						placeholder="Enter Your Feedback Here....."></textarea>
					<div class="invalid-feedback">Please Enter Your Feedback.....</div>
				</div>
				<div class="mb-3">
					<label for="Ratings" class="form-label">Select Your Ratings</label>
					<select class="form-select" aria-label="cmbrating" id="cmbrating"
						name="cmbrating" required="required">
						<option selected disabled value="">Select Your Ratings
							Here.....</option>
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
					</select>
					<div class="invalid-feedback">Please Select Your Ratings.....</div>
				</div>
				<button type="submit" class="btn btn-success">Submit</button>
				<button type="reset" class="btn btn-danger">Reset</button>
			</form>
		</div>
	</div>
	<script src="/LifeLinePortal/js/customvalidation.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous"></script>
</body>
</html>