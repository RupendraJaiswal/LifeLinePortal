<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details Showing Here</title>
</head>
<body>
<h1>Employee Details are</h1>
<jsp:useBean id="emp1" class="portal.beans.Employee" scope="request"></jsp:useBean>
<h2>Employee name is</h2>
<jsp:getProperty property="name" name="emp1"/>
<h2>Employee phone is</h2>
<jsp:getProperty property="phone" name="emp1"/>
<h2>Employee email is</h2>
<jsp:getProperty property="email" name="emp1"/>
</body>
</html>