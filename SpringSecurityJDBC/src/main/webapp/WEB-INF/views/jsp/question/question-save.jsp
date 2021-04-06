<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title>Helo Spring MVC + JDBC</title>
</head>
<body>
	<a href="<c:url value="/admin" />">List Question</a>
	<br />

	<h1>Add new Questions:</h1>
	<c:url value="/savequestion" var="savequestion" />
	<form:form action="${savequestion}" method="POST"
		modelAttribute="question">
		<%-- ID: <form:input path="id" /> <br/> <br/> --%>
    	Nội Dung Câu Hỏi: <form:input path="question" />
		<br />
		<br />
    	Loai: <form:select path="loai">
			<form:option value="1">Khảo Sát Nội Trú</form:option>
			<form:option value="2">Khảo Sát Ngoại Trú</form:option>
		</form:select>
		<br />
		<br />



		<button type="submit">Submit</button>
	</form:form>


</body>
</html>