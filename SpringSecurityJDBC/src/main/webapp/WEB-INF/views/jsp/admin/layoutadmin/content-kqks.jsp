<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<title>Insert title here</title>
<br>
<h3 class="alert-heading">Danh Sách Người Dùng Thực Hiện Khảo Sát</h3>
<c:url value="/survey-save" var="urlSave" />
<c:url value="/survey-update" var="urlUpdate" />
<c:url value="/surveyDelete" var="urlDelete" />
<c:url value="/cautraloi-view" var="urlView" />
<!-- tao cau hoi -->
<div class="main-body-content w-100 ets-pt">
	<div class="table-responsive bg-light">

<div class="row align-items-start">
		<c:if test="${not empty listks}">
			<c:forEach var="form" items="${listks}">
				<div class="col-4" style="padding: 8px;">
					<div class="card text-white bg-info mb-3">
						<div class="card-header">
						<a  class="btn btn-dark"
								href="${urlView}/${form.loaikhaosat}"><span class="lnr lnr-eye">
										View</span></a><br>
							Tên Bệnh Nhân:${form.tenbenhnhan}
							

						</div>
						<div class="card-body">
							<h5 class="card-title">Mã Bảo Hiểm: ${form.mabh} </h5>
							<p class="text">Tên Bệnh Viện${form.tenbenhvien}</p>
							
							<p class="card-text">
								<p class="card-text">Date: ${form.ngay} </p>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>




































		<%-- <h1>List Question:</h1>
		
		<table class="table table-hover table-inverse ">
			<thead class="thead-inverse">
				<tr>
					<th>Loai</th>
					<th>Ten benh nhan</th>
					<th>ma bao hiem</th>
					<th>tenbenhvien</th>
					<th>Ten khao sat</th>


					<th>Cau hoi</th>
					<th>Cau Tra loi</th>
				</tr>
			</thead>
			<c:if test="${not empty listkq}">
				<c:forEach var="kq" items="${kq}">
					<tr style="border: 1px black solid">
					
						<td>${kq.loai}</td>
						<td>${kq.tenbenhnhan}</td>
						<td>${kq.mabh}</td>
						<td>${kq.name}</td>
						<td>${kq.question}</td>
						<td>${kq.dapanradio}</td>

					</tr>
				</c:forEach>
			</c:if>
		</table> --%>
	</div>
</div>