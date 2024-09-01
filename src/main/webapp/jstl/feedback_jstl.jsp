<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="m" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Feedback</title>
</head>
<body>
	<m:set var="name" value="${param.txtname}"></m:set>
	<m:set var="email" value="${param.txtemail}"></m:set>
	<m:set var="feedback" value="${param.txtfeedback}"></m:set>
	<m:set var="rating" value="${param.cmbrating}"></m:set>
	<s:setDataSource driver="com.mysql.cj.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/lifeline_db" user="root"
		password="root" var="dbcon"/>
	<s:update dataSource="${dbcon}">
		insert into feedback(name,email,feedbacktext,ratings) values(?,?,?,?)
		<s:param value="${name}"></s:param>
		<s:param value="${email}"></s:param>
		<s:param value="${feedback}"></s:param>
		<s:param value="${rating}"></s:param>
		</s:update>
		<m:out value="Feedback Submitted Successfully..."></m:out>
</body>
</html>