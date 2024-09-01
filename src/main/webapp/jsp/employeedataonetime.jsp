<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="portal.beans.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Data</title>
</head>
<body>

<jsp:useBean id="emp1" class="portal.beans.Employee" scope="request"></jsp:useBean>// it is use to create object of the class,//scope="page/request/session/application"
<jsp:setProperty property="*" name="emp1" />

<jsp:forward page="/jsp/showemployee_detailsonetime.jsp"></jsp:forward>

</body>
</html>