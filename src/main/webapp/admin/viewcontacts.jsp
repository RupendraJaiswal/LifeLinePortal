<%@page import="portal.dbtask.AdminTask"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Contacts</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="icon" href="/LifeLinePortal/images/favicon.png">
<link rel="stylesheet" href="/LifeLinePortal/css/customstyle.css">
</head>
<body
	style="background-image: radial-gradient(circle, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);">
	<div class="container-fluid bg-warning" style="margin: 0px;">
		<h3
			style="text-align: center; font-family: Comic Sans Ms; color: maroon; margin: 0px;">View
			All Questions Asked By Visitors.....</h3>
	</div>
	<%@include file="/admin/adminnavbar.html"%>
	<div>
		<table class="table">
			<thead>
				<tr class="table">
					<th scope="col">Name</th>
					<th scope="col">Email</th>
					<th scope="col">Phone</th>
					<th scope="col">Question</th>
				</tr>
			</thead>
			<tbody>
				<%
				String strsql = "select * from contact";
				ResultSet rs = AdminTask.viewContact(strsql);
				while (rs.next()) {
					String name = rs.getString("name");
					String email = rs.getString("email");
					String phone = rs.getString("phone");
					String question = rs.getString("question");
				%>
				<tr>
					<td><%=name%></td>
					<td><%=email%></td>
					<td><%=phone%></td>
					<td><%=question%></td>
				</tr>
				<%
				}
				rs.close();
				%>
			</tbody>
		</table>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.min.js"
		integrity="sha384-7VPbUDkoPSGFnVtYi0QogXtr74QeVeeIs99Qfg5YCF+TidwNdjvaKZX19NZ/e6oz"
		crossorigin="anonymous"></script>
</body>
</html>