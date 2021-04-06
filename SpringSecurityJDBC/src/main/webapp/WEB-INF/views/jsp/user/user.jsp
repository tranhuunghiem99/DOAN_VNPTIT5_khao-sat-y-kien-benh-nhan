<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>User Page</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<h1 class="text-center text-danger">KHẢO SÁT NỘI TRÚ</h1>
	<h2>Welcome: ${pageContext.request.userPrincipal.name}</h2>

	<a href="<c:url value="/admin" />">Admin Page</a>
	<br />

	<form action="<c:url value="/j_spring_security_logout" />"
		method="post">
		<input type="hidden" name="${_csrf.parameterName}"
			value="${_csrf.token}" /> <input type="submit" value="Logout" />
	</form>
	<div class="container">
		<div class="form-group row">
			<h2 for="example-text-input" class="col-12 text-primary">THÔNG
				TIN NHẬP VIỆN</h2>

		</div>
		<div class="form-group row">
			<label for="example-text-input" class="col-2 col-form-label">Tên
				bệnh viện</label>
			<div class="col-10">
				<input class="form-control" type="text" placeholder="Artisanal kale"
					id="example-text-input">
			</div>
		</div>
		<div class="form-group row">
			<label for="example-search-input" class="col-2 col-form-label">Ngày
				điền phiếu</label>
			<div class="col-10">
				<input class="form-control" type="text"
					placeholder="How do I shoot web" id="example-search-input">
			</div>
		</div>
		<div class="form-group row">
			<label for="example-email-input" class="col-2 col-form-label">Tên
				khoa điều trị trước khi ra viện</label>
			<div class="col-10">
				<input class="form-control" type="email"
					placeholder="bootstrap@example.com" id="example-email-input">
			</div>
		</div>
		<div class="form-group row">
			<label for="example-date-input" class="col-2 col-form-label">Ngày
				ra viện</label>
			<div class="col-10">
				<input class="form-control" type="date" placeholder="2011-08-19"
					id="example-date-input">
			</div>
		</div>
		<div class="form-group row">
			<h2 for="example-text-input" class="col-12 text-primary">THÔNG
				TIN BỆNH NHÂN</h2>

		</div>
		<div class="form-group row">
			<label for="example-text-input" class="col-2 col-form-label">Họ
				và tên</label>
			<div class="col-10">
				<input class="form-control" type="text" placeholder="Artisanal kale"
					id="example-text-input">
			</div>
		</div>
		<div class="form-group row">
			<label for="example-text-input" class="col-2 col-form-label">Giới
				tính</label>
			<div class="col-10">
				<input class="form-control" type="text" placeholder="Artisanal kale"
					id="example-text-input">
			</div>
		</div>
		<div class="form-group row">
			<label for="example-tel-input" class="col-2 col-form-label">Số
				di động</label>
			<div class="col-10">
				<input class="form-control" type="tel" placeholde="1-(555)-555-5555"
					id="example-tel-input">
			</div>
		</div>
		<div class="form-group row">
			<label for="example-datetime-local-input"
				class="col-2 col-form-label">Tổng số ngày nằm viện</label>
			<div class="col-10">
				<input class="form-control" type="number" placeholder=""
					id="example-datetime-local-input">
			</div>
		</div>
		<div class="form-group row">
			<label for="example-date-input" class="col-2 col-form-label">Sử
				dụng thẻ bảo hiểm y tế</label>
			<div class="col-10">

				<input type="radio" name="yes_no" checked>Có </input> <input
					type="radio" name="yes_no">Không</input>
			</div>
		</div>
		<div class="main-body-content w-100 ets-pt">
			<div class="table-responsive bg-light">
				<!-- <c:url value="/user-save" var="urlSave" />
				<c:url value="/user-view" var="urlView" />
				<c:url value="/user-update" var="urlUpdate" />
				<c:url value="/userDelete" var="urlDelete" /> -->
				<h1>Câu Hỏi Nội Trú</h1>
				<a href="${urlSave}">Thêm</a> <br /> <br />
				<table class="table table-hover table-inverse ">
					<thead class="thead-inverse">
						<tr>
							<th>Thứ</th>
							<th>Nội Dung</th>
							<th>Rất không hài lòng</th>
							<th>Không hài lòng</th>
							<th>Bình thường</th>
							<th>Hài lòng</th>
							<th>Rất hài lòng</th>

						</tr>
					</thead>
					<c:if test="${not empty listquestion}">
						<c:forEach var="question" items="${listquestion}">
							<tr style="border: 1px black solid">
								<td>${question.id}</td>
								<td>${question.question}</td>
								<td>
									<div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="option1">
										<label class="form-check-label" for="inlineRadio1">1</label>
									</div>
								</td>
								<td><div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="option1">
										<label class="form-check-label" for="inlineRadio1">2</label>
									</div></td>
								<td><div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="option1">
										<label class="form-check-label" for="inlineRadio1">3</label>
									</div></td>
								<td><div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="option1">
										<label class="form-check-label" for="inlineRadio1">4</label>
									</div></td>
								<td><div class="form-check form-check-inline">
										<input class="form-check-input" type="radio"
											name="inlineRadioOptions" id="inlineRadio1" value="option1">
										<label class="form-check-label" for="inlineRadio1">5</label>
									</div></td>
							</tr>
						</c:forEach>
					</c:if>
				</table>
			</div>
		</div>
<div class="container">
	<div class="container">
		
		<div class="row align-items-start">
			<c:if test="${not empty listsurvey}">
				<c:forEach var="survey" items="${listsurvey}">
					<div class="col-4" style="padding: 8px;">
						<div class="card text-white bg-info mb-3">
							<div class="card-header">
							
	
							</div>
							<div class="card-body">
								<h5 class="card-title">${survey.name}</h5>
								<p class="card-text">Đánh giá chất lượng nơi khám chửa bệnh </p>
								<p class="card-text">
									<small class="text-muted">${survey.times}</small>
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
			</c:if>
		</div>	
</div>

		<!-- Optional JavaScript -->
		<!-- jQuery first, then Popper.js, then Bootstrap JS -->
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
			  <script type="text/javascript">


        //Thêm Bảng
        $(document).ready(function () {
            $('[data-toggle="tooltip"]').tooltip();
            var actions = $("table td:last-child").html();
            // Append table with add row form on add new button click
            $(".add-new").click(function () {
                $(this).attr("disabled", "disabled");
                var index = $("table tbody tr:last-child").index();
                var row = '<tr>' +
                    '<td><input type="text" class="form-control" name="name" id="name" placeholder="Nhập Tên"></td>' +
                    '<td><input type="text" class="form-control" name="gioitinh" id="gioitinh" placeholder="Nhập Giới Tính"></td>' +
                    '<td><input type="text" class="form-control" name="namsinh" id="namsinh" value="" placeholder="Nhập Ngày Sinh"></td>' +
                    '<td><input type="text" class="form-control" name="diachi" id="diachi" value="" placeholder="Nhập Địa Chỉ"></td>' +
                    '<td><input type="text" class="form-control" name="chucvu" id="chucvu" value="" placeholder="Nhập Chức Vụ"></td>' +
                    '<td>' + actions + '</td>' +
                    '</tr>';
                $("table").append(row);
                $("table tbody tr").eq(index + 1).find(".add, .edit").toggle();
                $('[data-toggle="tooltip"]').tooltip();
            });
            //Add Hàng
           
    </script>
</body>
</html>
