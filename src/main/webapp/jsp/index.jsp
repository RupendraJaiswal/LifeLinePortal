<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page import="portal.dbtask.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Main</title>
<!-- <link href="/LifeLinePortal/css/customstyle.css" rel="stylesheet">
 -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js"
	integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT"
	crossorigin="anonymous">
<style>
body.bg {
	background-image: linear-gradient(to top, #fcc5e4 0%, #fda34b 15%, #ff7882 35%, #c8699e
		52%, #7046aa 71%, #0c1db8 87%, #020f75 100%);
}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$("#btnsearch").click(function() {
			var cityname = $("#txtsearch").val();
		/* 	alert(cityname); */
			$.get("/LifeLinePortal/common/searchDonor.jsp", {

				donor_city : cityname,
			//nm:name
			}, function(response_data, status) {
			/* 	alert(response_data + status) */

				$("#donor_list").html(response_data)

			});
		});

	})
</script>
<style type="text/css">
.w-100 {
	width: 100%;
	height: 50vh; /* viewport height */
}
</style>

</head>
<body>
	<c:catch var="exp">
		<s:setDataSource driver="com.mysql.cj.jdbc.Driver"
			url="jdbc:mysql://localhost:3306/lifeline_db" user="root"
			password="root" var="dbcon" scope="application" />


	</c:catch>

	<div class="row bg-success">
		<div class="col-8">
			<h2 class="text-warning"
				style="text-align: center; margin-bottom: 0px;">LifeLine Portal
				Welcomes You</h2>
		</div>
		<div class="col-4">
			<div class="row">
				<div class="col-8">
					<input class="form-control me-2" type="search" placeholder="Search"
						aria-label="Search" id="txtsearch">
				</div>
				<div class="col-4">
					<button class="btn btn-outline-info bg-info text-dark"
						type="button" id="btnsearch">Search</button>
				</div>


			</div>
		</div>
	</div>
	<%@include file="/common/navbar.html"%>



	<!-- carousel code start here -->
	<div id="carouselExampleCaptions" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleCaptions"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="/LifeLinePortal/images/calb4.jpg" class="d-block w-100"
					alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>First slide label</h5>
					<p>Some representative placeholder content for the first slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="/LifeLinePortal/images/i2.jpg" class="d-block w-100"
					alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>Second slide label</h5>
					<p>Some representative placeholder content for the second
						slide.</p>
				</div>
			</div>
			<div class="carousel-item">
				<img src="/LifeLinePortal/images/vaccinimg.jfif"
					class="d-block w-100" alt="...">
				<div class="carousel-caption d-none d-md-block">
					<h5>Third slide label</h5>
					<p>Some representative placeholder content for the third slide.</p>
				</div>
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Previous</span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden">Next</span>
		</button>
	</div>


	<!-- carousel code ends here -->
	<div class="container-fluid bg-info">
		<marquee onmouseover="this.stop()" onmouseout="this.start()">
			<ul style="list-style-type: none;">
				<%
				String strsql = "select * from notice";
				ResultSet rs = AdminTask.viewNotice(strsql);
				while (rs.next()) {
					String msg = rs.getString("message");
					String id = rs.getString("noticeid");
				%>
				<li style="display: inline; color: blue;"><a
					href="/LifeLinePortal/jsp/notice_details.jsp?noteid=<%=id%>"> <%=msg%>
				</a></li>
				<%
				}
				%>
			</ul>
		</marquee>
	</div>
	<br>

	<%
	String sql = "select * from views  order by date desc limit 4";
	ResultSet rs1 = DonorTask.donor_views(sql);
	while (rs1.next()) {
		String rem = rs1.getString("remarks");
		String date = rs1.getString("date");
		String id = rs1.getString("donor_id");
	%>

	<div class="card text-bg-danger mb-3"
		style="max-width: 18rem; margin-left: 20px; float: left;">
		<div class="card-header">
			views shared by
			<%=id%></div>
		<div class="card-body">
			<h5 class="card-title"><%=date%></h5>
			<p class="card-text"><%=rem%></p>
		</div>
	</div>
	<%
	}
	%>

	<div id="donor_list" class="container-fluid bg-primary "></div>


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