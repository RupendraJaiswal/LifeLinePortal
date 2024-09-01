<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="m" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>For Loop Uses</title>
</head>
<body>
	<m:forEach var="num" begin="1" end="20" step="2">
		<m:out value="${num}"></m:out>
		<br>
	</m:forEach>
	<m:set var="imageNames" value="vaccinimg.jfif@Ambulance2.jpg@bloodicon.png"></m:set>
	<m:forTokens items="${imageNames}" delims="@" var="picname">
		<img src="/LifeLinePortal/images/${picname}"
			style="width: 200px; height: 200px">
	</m:forTokens>
</body>
</html>