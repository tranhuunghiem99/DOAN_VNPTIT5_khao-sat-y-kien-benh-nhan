<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Helo Spring MVC + JDBC</title>
</head>
<body>
<div classs="container" align="center" style="font-weight: bold;">
	<a href="<c:url value="/admin" />">Admin Page</a>
	<br />
	<h1>View Survey:</h1>
	Loại: ${survey.maloai}
	<br /> Tên Khảo Sát: ${survey.name}
	<br /> Ngày Tạo: ${survey.times}
	<br />
</div>	
	<hr>

<div class="alert alert-success" role="alert">
	<div class="main-body-content w-100 ets-pt">
<H1 align="center">Danh Sách Các Câu Hỏi Thuộc Khảo Sát Nội Trú</H1>
		<table class="table table-hover table-inverse ">
			<thead class="thead-inverse">
				<tr>
					<th>Id</th>
					<th>Question</th>
					
					<th>maloai</th>
					<th>Ten Khao Sat</th>
					<th>Times</th>

				</tr>
			</thead>
			<c:if test="${not empty listsurvey}">
				<c:forEach var="survey" items="${listsurvey}">
					<tr style="border: 1px black solid">
						<td>${survey.id}</td>
						<td>${survey.question}</td>
						
						<td>${survey.maloai}</td>
						<td>${survey.name}</td>
						<th>${survey.times}</th>
					</tr>
				</c:forEach>
			</c:if>
		</table>

	</div>
</div>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
</body>
</html>