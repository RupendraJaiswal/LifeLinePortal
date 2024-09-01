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
<% String nm=request.getParameter("name") ;
String em=request.getParameter("email") ;
String ph=request.getParameter("phone") ;
%>
<jsp:useBean id="emp" class="portal.beans.Employee" scope="request"></jsp:useBean>// it is use to create object of the class,//scope="page/request/session/application"
<jsp:setProperty property="name" name="emp" value="<%=nm %>"/>
<jsp:setProperty property="phone" name="emp" value="<%=ph %>"/>
<jsp:setProperty property="email" name="emp" value="<%=em %>"/>
<jsp:forward page="/jsp/showemployee_details.jsp"></jsp:forward>

</body>
</html>