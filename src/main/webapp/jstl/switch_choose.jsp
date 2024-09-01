<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="m" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Switch/Choose Demo</title>
</head>
<body>
	<m:set var="bloodgroup" value="${param.cmbgroup}"></m:set>
	<m:choose>
		<m:when test="${bloodgroup eq 'A+'}">
			<m:redirect url="/html/A+.html"></m:redirect>
		</m:when>
		<m:otherwise>
			<m:redirect url="/html/allbloodgroup.html"></m:redirect>
		</m:otherwise>
	</m:choose>
</body>
</html>