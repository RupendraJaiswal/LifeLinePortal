<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>User Information is as follows</h1>
<% String name=request.getParameter("txtname");
String course=request.getParameter("txtcourse");
%>

<%
if(course.equalsIgnoreCase("java"))
{


%>
<h2>Hello <%=name %> and you have opted the course <%=course%></h2>
<%
}
else
{
	response.sendRedirect("/LifeLinePortal/jsp/courseinfo.jsp");
}
%>
</body>
</html>