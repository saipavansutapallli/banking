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
<body><center>
<form:form action="addaccount.do" method="post" modelAttribute="account">
	<form:hidden path="accountId"/>
	<table>
		<tr>
			<td>Enter name</td>
			<td><form:input path="name" readonly="true"/></td>
		</tr>
		<tr>
			<td>Enter balance</td>
			<td><form:input path="balance"/></td>
		</tr>
		<tr>
			<td>Enter address</td>
			<td><form:input path="address" readonly="true"/></td>
		</tr>
		<tr>
			<td>Enter phone</td>
			<td><form:input path="phone" readonly="true"/></td>
		</tr>
		<tr>
			<td>Enter email</td>
			<td><form:input path="email" readonly="true"/></td>
		</tr>
		<tr>
			<td>Enter aadharCard</td>
			<td><form:input path="aadharCard" readonly="true"/></td>
		</tr>
		
		<tr>
			<td>Enter birthDate</td>
			<td><form:input path="birthDate" readonly="true"/></td>
		</tr>
		<tr>
			<td>Enter panNumber</td>
			<td><form:input path="panNumber" readonly="true"/></td>
		</tr>
		<tr>
			<td>Select account Type</td>
			<td><form:select path="accountType" items="${accountTypes}" readonly="true"/></td>
		</tr>
		
		<tr>
			<td><input type="submit"></td>
		</tr>
	</table></center>
</form:form>
</body>
</html>