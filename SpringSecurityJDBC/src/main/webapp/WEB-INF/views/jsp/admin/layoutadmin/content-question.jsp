<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<title>Insert title here</title>
<br>
<h3 class="alert-heading">List Question</h3>

<!-- tao cau hoi -->
<div class="main-body-content w-100 ets-pt">
	<div class="table-responsive bg-light">
		<c:url value="/question-save" var="urlSave" />
		<!--<c:url value="/user-view" var="urlView" />-->
		<c:url value="/question-update" var="urlUpdate" />
		<c:url value="/questionDelete" var="urlDelete" />
		<h1>List Question:</h1>
		<a href="${urlSave}" class="btn btn-success"><span
			class="lnr lnr-plus-circle"> Thêm</span></a> <br /> <br />
		<table class="table table-hover table-inverse ">
			<thead class="thead-inverse">
				<tr>
					<th>Thứ Tự</th>
					<th>Nội Dung</th>
					<th>Loại</th>
					<th>Thuộc Khảo Sát</th>

					<th>Edit</th>
					<th>Delete</th>
				</tr>
			</thead>
			<c:if test="${not empty listquestion}">
				<c:forEach var="question" items="${listquestion}">
					<tr style="border: 1px black solid">
						<td>${question.id}</td>
						<td>${question.question}</td>
						<td>${question.loai}</td>
						<td>${question.name}</td>

						<td><a class="btn btn-info"
							href="${urlUpdate}/${question.id}"><span
								class="lnr lnr-pencil">Edit</span></a></td>
						<td><a href="${urlDelete}/${question.id}" class="btn btn-danger"
							onclick="return confirm('Bro có chắc là muốn xóa id=${question.id} không ?');">
								<span class="lnr lnr-trash">Delete</span>
						</a></td>
					</tr>
				</c:forEach>
			</c:if>
		</table>
	</div>
</div>