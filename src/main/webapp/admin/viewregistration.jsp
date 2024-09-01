<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="m" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Feedback</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<link rel="icon" href="/LifeLinePortal/images/favicon.png">
<link rel="stylesheet" href="/LifeLinePortal/css/customstyle.css">
</head>
<body>
	<m:catch var="exp">
		<m:set var="strsql" value="select * from feedback"></m:set>
		<s:query var="records" dataSource="${applicationScope.dbcon}"
			sql="${strsql}"></s:query>
		<table class="table">
			<thead>
				<tr>
					<th scope="col">id</th>
					<th scope="col">name</th>
					<th scope="col">email</th>
					<th scope="col">feedback </th>
					<th scope="col">rating</th>
				</tr>
			</thead>
			<tbody>
				<m:forEach var="rowdata" items="${records.rows}">
					<tr>
						<th scope="row"><m:out value="${rowdata.id}"></m:out></th>
						<th scope="row"><m:out value="${rowdata.name}"></m:out></th>
						<th scope="row"><m:out value="${rowdata.email}"></m:out></th>
						<th scope="row"><m:out value="${rowdata.feedback}"></m:out></th>
						<th scope="row"><m:out value="${rowdata.rating}"></m:out></th>
					</tr>
				</m:forEach>
			</tbody>
		</table>
	</m:catch>
	<m:if test="${exp!=null}">
	<m:out value="${exp}"></m:out>
	</m:if>
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