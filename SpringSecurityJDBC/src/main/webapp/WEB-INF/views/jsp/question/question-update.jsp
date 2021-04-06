<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>
</head>
<body>
	<a href="<c:url value="/admin" />">ListQuestions</a>
	<br />

	<h1>Edit Question:</h1>
	<c:url value="/updatequestion" var="updatequestion" />
	<form:form action="${updatequestion}" method="POST" modelAttribute="question">
	    Id: <form:input path="id" readonly="true" /> <br/> <br/>
    	Noidung: <form:input path="question" /> <br/> <br/>
    	Loai: <form:input path="loai" /> <br/> <br/>
    
    	
		<button type="submit">Submit</button>
	</form:form>

</body>
</html>