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
<c:if test="${user.userType == 'ADMIN'}">

	</c:if>

	Welcome user ${user.username }<a href="logout">logout</a>
	<br />
	<table>
		<thead>
			<tr>
			<th>txId</th>
				<th>fromaccountId</th>
				<th>toaccountId</th>
				<th>txInfo</th>
				<th>timestamp</th>
				<th>amount</th>
				<th>txType</th>
				

			</tr>
		</thead>
		<tbody>
			<c:forEach items="${transactions}" var="transaction">
				<tr>
					
					<td>${transaction.txId}</td>
					<td>${transaction.fromaccountId.accountId}</td>
					<td>${transaction.toaccountId.accountId}</td>
					<td>${transaction.txInfo}</td>

					<td><fmt:formatDate pattern="dd/MM/yyyy HH:mm"
							value="${transaction.timestamp}" /></td>
					<td>${transaction.amount}</td>
					<td>${transaction.txType}</td>


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
		<a href="accountdetails.do">MAIN HOME</a>

	</c:if>
</body>
</html>