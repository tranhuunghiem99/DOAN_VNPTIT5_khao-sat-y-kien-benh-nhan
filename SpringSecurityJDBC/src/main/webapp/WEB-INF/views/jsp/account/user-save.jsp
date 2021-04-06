<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<html>
<head>
<title>Helo Spring MVC + JDBC</title>
<meta http-equiv="Content-Type" content="text/html"; charset="UTF-8" />
</head>
<body>
	<a href="<c:url value="/admin" />" >List User</a><br />

	<h1>Add new User:</h1>
	<c:url value="/saveuser" var="saveuser"/>
	<form:form action="${saveuser}" method="POST"
		modelAttribute="user">
    	Name: <form:input path="name" /> <br/> <br/>
    	Address: <form:input path="address" /> <br/> <br/>
    	Phone: <form:input path="phone" /> <br/> <br/>
    	Age: <form:input type="number" min="1" max="100" path="age" /> <br/> <br/>
    	Email:<form:input path="email" /> <br/> <br/>
    	Roles:<form:radiobutton path="role" value="1"/></br>
    	
    	Enabled:<form:checkbox path="enabled" value="1"/>
    	Username:<form:input path="username"/>
    	Password:<form:password path="password"/>
		<button type="submit">Submit</button>
	</form:form>

</body>
</html>