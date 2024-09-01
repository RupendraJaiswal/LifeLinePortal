<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="icon" href="/LifeLinePortal/images/favicon.png">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<title>Blood Group</title>
</head>
<body
	style="background-image: linear-gradient(to left, rgba(210, 135, 185, 0.5), rgba(254, 249, 215, 0.5));">
	<div class="row justify-content-center">
		<div class="col-4">
			<form action="/LifeLinePortal/jstl/switch_choose.jsp" method="post">
				<div class="mb-3">
					<label for="Blood-group" class="form-label">Select Blood
						Group</label> <select class="form-select" aria-label="select city"
						required="required" name="cmbgroup" id="cmbgroup">
						<option selected disabled>Please Select Your Blood
							Group.....</option>
						<option value="AB+">AB+</option>
						<option value="A+">A+</option>
						<option value="B+">B+</option>
						<option value="O+">O+</option>
						<option value="AB-">AB-</option>
						<option value="A-">A-</option>
						<option value="B-">B-</option>
						<option value="O-">O-</option>
					</select>
					<div class="invalid-feedback">Please Select Valid Blood
						Group.....</div>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
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