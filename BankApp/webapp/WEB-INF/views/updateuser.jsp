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
<body><center><h3>WELCOME</h3>
<form:form action="adduser.do" method="post" modelAttribute="user">
	<form:hidden path="id"/>
	<table>
		<tr>
			<td>Enter username</td>
			<td><form:input path="username" readonly="true"/></td>
		</tr>
		<tr>
			<td>Enter password</td>
			<td><form:input path="password" readonly="true"/></td>
		</tr>
		
		<tr>
			<td>Select user type</td>
			<td><form:select path="userType" items="${userTypes}"/></td>
		</tr>
		
		<tr>
			<td><input type="submit" value="Update"></td>
		</tr>
	</table></center>
</form:form>
</body>
</html>