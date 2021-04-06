<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<meta charset="UTF-8">
<title>Insert title here</title>
<br>
<c:url value="/survey-save" var="urlSave" />
<c:url value="/survey-update" var="urlUpdate" />
<c:url value="/surveyDelete" var="urlDelete" />
<c:url value="/DSKSloai-view" var="urlView" />
<h3>Khảo Sát</h3>

<div class="container">
	<a href="${urlSave}" class="btn btn-success"><span
		class="lnr lnr-plus-circle"> Thêm</span></a> <br /> <br />
	<div class="row align-items-start">
		<c:if test="${not empty listsurveys}">
			<c:forEach var="surveys" items="${listsurveys}">
				<div class="col-4" style="padding: 8px;">
					<div class="card text-white bg-info mb-3">
						<div class="card-header">
							${surveys.maloai} <a  class="btn btn-dark"
								href="${urlView}/${surveys.maloai}"><span class="lnr lnr-eye">
										View</span></a>  <a class="btn btn-warning"
								href="${urlUpdate}/${surveys.maloai}"><span
								class="lnr lnr-pencil">Edit</span></a>  <a
								href="${urlDelete}/${surveys.maloai}" class="btn btn-danger"
								onclick="return confirm('Bro có chắc là muốn xóa id=${surveys.maloai} không ?');">
								<span class="lnr lnr-trash">Delete</span>
							</a>

						</div>
						<div class="card-body">
							<h5 class="card-title">${surveys.name}</h5>
							<p class="card-text">Hệ Hệ Hệ</p>
							<p class="card-text">
								<small class="text-muted">${surveys.times}</small>
							</p>
						</div>
					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>