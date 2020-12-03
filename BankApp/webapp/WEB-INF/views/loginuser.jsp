<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Internal Bank</title>
<link href="${pageContext.request.contextPath }/resources/css/forms.css" rel="stylesheet">
</head>
<body>
<form:form action="loginuser" method="post" modelAttribute="user">
<center>
<h3>WELCOME TO ONLINE BANKING</h3>
	<table>
		<tr>
			<td>Enter username</td>
			<td><form:input path="username" /></td>
		</tr>
		<tr>
			<td>Enter password</td>
			<td><form:input path="password" /></td>
		</tr>
	
		<tr>
			<td><input type="submit"></td>
		</tr>
	</table>
</center>
</form:form>
</body>
</html>