<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="   bg-light ">
	<%
	String os1="Windows";
	String os2="Linux";
	
	String[] courseName = { "Core Java", "Advance Java" };
	%>
<label>Course name</label>
<select class="form-select" aria-label="Default select example" id="cmbcourse" name="cmbcourse"  required="required">
  
  <option selected disabled value="">---Select Your  Course----</option>
  <%for (int i=0;i<2;i++)
	  {
	  %>
  <option value="<%=courseName[i]%>"><%=courseName[i] %></option>

 <%} %>
 <br> 
 
 </select>
  <label for="Gender" class="form-label " >OS Type</label><br>
   <input class="form-check-input" type="radio" name="os" id="os"  value="F" required="required" >
  <label class="form-check-label" for="os1"> <%=os1 %></label>
  <input class="form-check-input" type="radio" name="os" id="os"  value="M">
  <label class="form-check-label" for="os2"><%=os2 %></label>
  </div>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>