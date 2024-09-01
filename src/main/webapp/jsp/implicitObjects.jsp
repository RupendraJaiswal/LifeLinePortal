<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Implicit Object</title>
</head>
<body>
<h1>
<% out.println("Hello Browser");%></h1>
<%String name="Dev";
out.println("Hello "+name);


%>
<br>
Hello <%=name %>
</body>
</html>