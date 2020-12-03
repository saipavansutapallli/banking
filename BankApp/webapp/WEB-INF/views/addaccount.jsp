<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Internal Bank</title>
<link href="${pageContext.request.contextPath }/resources/css/forms.css" rel="stylesheet">
<style>

</style>
</head>
<body><center><h3>WELCOME</h3>
<form:form action="addaccount" method="post" modelAttribute="account">
	<form:hidden path="accountId" value="0"/>
	<table cellpadding=10px>
		<tr>
			<td>Enter name</td>
			<td><form:input path="name"/><form:errors path="name" class="error"/></td>
		</tr>
		<tr>
			<td>Enter balance</td>
			<td><form:input path="balance"/><form:errors path="balance" class="error"/></td>
		</tr>
		<tr>
			<td>Enter address</td>
			<td><form:input path="address"/><form:errors path="address" class="error"/></td>
		</tr>
		<tr>
			<td>Enter phone</td>
			<td><form:input path="phone"/><form:errors path="phone" class="error"/></td>
		</tr>
		<tr>
			<td>Enter email</td>
			<td><form:input path="email"/><form:errors path="email" class="error"/></td>
		</tr>
		<tr>
			<td>Enter aadharCard</td>
			<td><form:input path="aadharCard"/><form:errors path="aadharCard" class="error"/></td>
		</tr>
		
		<tr>
			<td>Enter birthDate</td>
			<td><form:input path="birthDate"/><form:errors path="birthDate" class="error"/></td>
		</tr>
		<tr>
			<td>Enter panNumber</td>
			<td><form:input path="panNumber"/><form:errors path="panNumber" class="error"/></td>
		</tr>
		<tr>
			<td>Select account Type</td>
			<td><form:select path="accountType" items="${accountTypes}"/></td>
		</tr>
		
		<tr>
			<td><input type="submit"></td>
		</tr>
	</table>
</form:form></center>

</body>
</html>