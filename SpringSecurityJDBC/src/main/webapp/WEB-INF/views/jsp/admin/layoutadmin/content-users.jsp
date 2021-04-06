<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#flip").click(function() {
			$("#panel").slideToggle("slow");
		});
	});
</script>
<style>
#panel, #flip {
	padding: 5px;
	text-align: center;
	
	border: solid 1px #c3c3c3;
}

#panel {
	padding: 50px;
	display: none;
}
</style>
</head>
<meta charset="UTF-8">
<title>Insert title here</title>


<br>
<h3>HOME</h3>
<p>Welcome to Admin PAge Cá Hệ Hệ hệ ;:"))</p>
</div>


<div id="user" class="container tab-pane fade">
	<br>
	<h4 class="alert-heading">List User:</h4>
	<div id="panel">
		<h1>View User:</h1>
		user ID: ${user.id} <br /> user Name: ${user.name} <br /> user
		Address: ${user.address} <br /> user Phone:${user.phone}<br /> user
		Age: ${user.age} <br /> user Email: ${user.email} <br />
	</div>
	<div class="main-body-content w-100 ets-pt">
		<div class="table-responsive bg-light">
			<c:url value="/user-save" var="urlSave" />
			<c:url value="/user-view" var="urlView" />
			<c:url value="/user-update" var="urlUpdate" />
			<c:url value="/userDelete" var="urlDelete" />

			<a href="${urlSave}" class="btn btn-success"><span
				class="lnr lnr-plus-circle"> Thêm</span></a> <br /> <br />
			<table class="table table-hover table-inverse ">
				<thead class="thead-inverse">
					<tr>
						<th>Id</th>
						<th>Name</th>
						<th>Address</th>
						<th>Phone</th>
						<th>Age</th>
						<th>Email</th>
						<th>Username</th>
						<th>Password</th>
						<th>Role</th>
						<th>Enabled</th>
						<th>View</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<c:if test="${not empty listuser}">
					<c:forEach var="user" items="${listuser}">
						<tr style="border: 1px black solid">
							<td>${user.id}</td>
							<td>${user.name}</td>
							<td>${user.address}</td>
							<td>${user.phone}</td>
							<th>${user.age}</th>s
							<th>${user.email}</th>
							<th>${user.username}</th>
							<th>${user.password}</th>
							<th>${user.role}</th>
							<th>${user.enabled}</th>

							<td><a id="flip" class="btn btn-warning"
								href="${urlView}/${user.id}"><span class="lnr lnr-eye">
										View</span></a></td>
							<td><a class="btn btn-info" href="${urlUpdate}/${user.id}"><span
									class="lnr lnr-pencil"> Edit</span></a></td>
							<td><a href="${urlDelete}/${user.id}" class="btn btn-danger"
								onclick="return confirm('Bro có chắc là muốn xóa id=${user.id} không ?');">
									<span class="lnr lnr-trash">Delete</span>
							</a></td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
		</div>
	</div>