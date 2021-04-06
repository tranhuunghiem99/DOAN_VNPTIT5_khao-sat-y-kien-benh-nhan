<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>
</head>
<body>
	<a href="<c:url value="/admin" />">Admin Page</a>
	<br />

	<h1>Edit Survey:</h1>
	<c:url value="/updatesurvey" var="updatesurvey" />
	<form:form action="${updatesurvey}" method="POST" modelAttribute="surveys">
	  
    	Noidung: <form:input path="name" /> <br/> <br/>
    	<%-- Loai: <form:input path="maloai" /> --%> <br/> <br/>
    
    	
		<button type="submit">Submit</button>
	</form:form>

</body>
</html>