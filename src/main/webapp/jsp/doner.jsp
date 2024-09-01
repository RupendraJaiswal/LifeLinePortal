<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DonerDisplayData</title>
</head>
<body>
	
	<%
	String name = request.getParameter("txtname");
	int age = Integer.parseInt(request.getParameter("txtage"));

	String selectGroup = request.getParameter("cmbgroup");
	String selectgender = request.getParameter("gender");
	%>

	<h3>
		Name is
		<%=name%></h3>



	<h3>
		Blood Group is
		<%=selectGroup%></h3>
	<h3>
		Gender is
		<%=selectgender%></h3>


	<%
	if (age >= 18 && age <= 60) {
	%>


	<h3>
		Age is
		<%=age%></h3>

	<%
	} else {
	%>
	<%response.sendRedirect("/LifeLinePortal/jsp/otherpage.jsp");  %>
	
	<%
	}
	%>

</body>
</html>