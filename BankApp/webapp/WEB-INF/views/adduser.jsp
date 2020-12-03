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
<form:form action="adduser.do" method="post" modelAttribute="user">
	<form:hidden path="id" value="0"/>
	<table>
		<tr>
			<td>Enter username</td>
			<td><form:input path="username"/><form:errors path="username" class="error"/></td>
		</tr>
		<tr>
			<td>Enter password</td>
			<td><form:input path="password"/><form:errors path="password" class="error"/></td>
		</tr>
		
		<tr>
			<td>Select user type</td>
			<td><form:select path="userType" items="${userTypes}"/></td>
		</tr>
		
		<tr>
			<td><input type="submit"></td>
		</tr>
	</table>
</form:form>
</body>
</html>