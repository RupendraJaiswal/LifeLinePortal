<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>If Uses</title>
</head>
<body>
	<h:set var="age" value="17"></h:set>
	<h:set var="name" value="shubham"></h:set>
	<h3>
		Hello
		<h:out value="${name}"></h:out>
		You are
		<h:out value="${age}"></h:out>
		Years old.
	</h3>
	<h4>
		<h:if test="${age ge 18}">
			<h:out value="You are able to do registration."></h:out>
		</h:if>
		<h:if test="${age lt 18}">
			<h:out value="You are not able to do registration."></h:out>
		</h:if>
	</h4>
</body>
</html>