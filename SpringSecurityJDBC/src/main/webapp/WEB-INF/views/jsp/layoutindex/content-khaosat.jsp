<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<meta charset="UTF-8">
<title>Insert title here</title>
<div class="container">



	<div class="row align-items-start">
		<c:if test="${not empty listsurveys}">
			<c:forEach var="surveys" items="${listsurveys}">
				<div class="col-6" style="padding: 8px;">
					<div class="jumbotron">
						<h1 class="display-3">${surveys.name}</h1>
						<p class="lead">Đánh giá chất lượng nơi khám chửa bệnh</p>
						<hr class="my-2">
						<p>${surveys.times}</p>
						<p class="lead">
						
							<a class="btn btn-primary btn-lg"  href="<c:url value="/Khaosat-form" />"
								role="button" id="flip">Survey Now !!!!!!!</a>
						</p>

					</div>
				</div>
			</c:forEach>
		</c:if>
	</div>
	
	
</div>
