<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo JSP Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="card offset-3">
	<%
	String name = "Scott";
	int age = 20;
	%>
	<h1>
		Hello
		<%=name%>
	</h1>
	<h2>
		your age is
		<%=age%></h2>




	<%
	
	String[] studentName = { "Scott", "Smith" };
	String[] courseName = { "Core Java", "Advance Java" };
	%>
	<table border="2">

		<thead>

			<tr>
				<th>Student Name</th>

				<th>Course Name</th>
			</tr>
			<%
			for (int i = 0; i < 2; i++) {
			%>
			<tr>
				<th><%=studentName[i]%></th>
				<th><%=courseName[i]%></th>
			</tr>
			<%
			}
			%>
    <label for="City" class="form-label">Rating</label>
    
    <select class="form-select" aria-label="Default select example" id="cmbcourse" name="cmbcourse"  required="required">
  <option selected disabled value="">---Select Your  Course----</option>
  <%for (int i=0;i<2;i++)
	  {
	  %>
  <option value="<%i%>"><%=courseName[i] %></option>

 <%}%>
   
</select>
  


		</thead>



	</table>







</div>

 <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>