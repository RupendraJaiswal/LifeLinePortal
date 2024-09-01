<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Understand request response</title>
</head>
<body>

<form action="/LifeLinePortal/jsp/userinfo_response.jsp" method="post"><!-- <!-- //address/URL of server side page(jsp/servlet) --> 
<input type="text" name="txtname" placeholder="Enter your name">
<br>
<br>
<input  type="text" name="txtcourse" placeholder="Enter course name">
<br><br>
<button type="submit">Submit</button>

</form>
</body>
</html>