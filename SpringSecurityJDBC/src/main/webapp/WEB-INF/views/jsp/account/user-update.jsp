<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<html>
<head>
<title>Helo Spring MVC + JDBC</title>
</head>
<body>
	<a href="<c:url value="/admin" />">List Customer</a>
	<br />

	<h1>Edit User:</h1>
	<c:url value="/updateuser" var="updateuser" />
	<form:form action="${updateuser}" method="POST" modelAttribute="user">
	    Id: <form:input path="id" readonly="true" /> <br/> <br/>
    	Name: <form:input path="name" /> <br/> <br/>
    	Address: <form:input path="address" /> <br/> <br/>
    	phone: <form:input path="phone" /> <br/> <br/>
    	Age: <form:input path="age" /> <br/> <br/>
    	Email:<form:input path="email" /> <br/> <br/>
    	Username:<form:input path="username"/>
    	Password:<form:password path="password"/>
		<button type="submit">Submit</button>
	</form:form>

</body>
</html>