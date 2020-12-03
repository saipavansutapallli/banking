<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Internal Bank</title>
<link href="${pageContext.request.contextPath }/resources/css/forms.css" rel="stylesheet">
</head>
<body>
<body><center>
	<c:if test="${user.userType == 'ADMIN'}">
		
	</c:if>

	<h3>Welcome user ${user.username } <a href="logout">logout</a></h3>
	<br />
	<table cellpadding=10px>
		<thead>
			<tr>
				<th>AccountId</th>
				<th>Name</th>
				<th>Balance</th>
				<th>Address</th>
				<th>Phone</th>
				<th>Email</th>
				<th>AadharCard</th>
				<th>BirthDate</th>
				<th>PanNumber</th>
				<th>AccountType</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${accounts}" var="account">
				<tr>
					<td>${account.accountId}</td>
					<td>${account.name}</td>
					<td>${account.balance}</td>
					<td>${account.address}</td>
					<td>${account.phone}</td>
					<td>${account.email}</td>
					<td>${account.aadharCard}</td>
					<td><fmt:formatDate pattern="dd/MM/yyyy"
							value="${account.birthDate}" /></td>
					<td>${account.panNumber}</td>
					<td>${account.accountType}</td>
					<c:if test="${user.userType == 'ADMIN'}">
						<td><a href="updateaccount.do?accountId=${account.accountId}">update account</a></td>
						<td><a href="deleteaccount.do?accountId=${account.accountId}">delete account</a></td>
					</c:if>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<c:if test="${user.userType == 'ADMIN' || user.userType == 'EMPLOYEE'}">
		<a href="addaccount.do">add account</a>
	</c:if>
	<c:if test="${user.userType == 'ADMIN'}">
		<a href="adduser.do">add user</a>
		<a href="home.do">transfer</a>
		<a href="transactions.do">transactions</a>
	</c:if></center>
</body>
</html>