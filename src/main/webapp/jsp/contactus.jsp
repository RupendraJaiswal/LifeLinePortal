<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Admin</title>
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
</head>
<body
	style="background-image: linear-gradient(to right, #eea2a2 0%, #bbc1bf 19%, #57c6e1 42%, #b49fda 79%, #7ac5d8 100%);">
	<%@include file="/common/navbar.html"%>
	<div>
		<h3
			style="text-align: center; font-family: Comic Sans Ms; color: maroon">Please
			Ask Your Question & Queries.</h3>
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
			<form method="post" action="/LifeLinePortal/ContactUs" class="needs-validation"
				novalidate="novalidate">
				<div class="mb-3">
					<label for="Name" class="form-label">Your Name</label> <input
						type="text" class="form-control" id="txtname" name="txtname"
						required="required" placeholder="Enter Your Name Here.....">
					<div class="invalid-feedback">Please Enter Your Name
						Here.....</div>
				</div>
				<div class="mb-3">
					<label for="Email" class="form-label">Your Email</label> <input
						type="email" class="form-control" id="txtemail" name="txtemail"
						required="required" placeholder="Enter Your Email Here.....">
					<div class="invalid-feedback">Please Enter Valid Email.....</div>
				</div>
				<div class="mb-3">
					<label for="Phone" class="form-label">Your Phone</label> <input
						type="text" class="form-control" id="txtphone" name="txtphone"
						required="required" placeholder="Enter Your Phone Here.....">
					<div class="invalid-feedback">Please Enter Valid Contact
						Number.....</div>
				</div>
				<div class="mb-3">
					<label for="Question" class="form-label">Your Question</label>
					<textarea class="form-control" rows="3" id="txtquestion"
						name="txtquestion" required="required"
						placeholder="Enter Your Question Here....."></textarea>
					<div class="invalid-feedback">Please Enter Your Question.....</div>
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