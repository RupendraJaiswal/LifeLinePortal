<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="portal.beans.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Context demo</title>
</head>
<body>
<h2>Use of Servlet Context variable</h2>
<%=application.getInitParameter("slogan") %><br>
<%=application.getInitParameter("helpLineNumber") %>

<%AdminDetails a=(AdminDetails)application.getAttribute("admininfo") ;%>

<h1> Name is <%=a.getName() %></h1>
<h1> phone number is <%=a.getPhone()%></h1>

</body>
</html>