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
        <center>
	<h3>Welcome User ${user.username } <a href="logout">logout</a></h3></center>
	<br />
	<center><table cellpadding=10px>
		<thead>
			<tr>
				<th>ID</th>
				<th>UserName</th>
				<th>Password</th>
				<th>UserType</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="userr">
				<tr>
					<td>${userr.id}</td>
					<td>${userr.username}</td>
					<td>${userr.password}</td>
					<td>${userr.userType}</td>
					<c:if test="${user.userType == 'ADMIN'}">
						<td><a href="updateuser?id=${userr.id}">update user</a></td>
						<td><a href="deleteuser?id=${userr.id}">delete user</a></td>
					</c:if>
				</tr>
			</c:forEach>
		</tbody>
	</table></center>
	<center>
	<c:if test="${user.userType == 'ADMIN' || user.userType == 'EMPLOYEE'}">
		<a href="addaccount.do">add account</a></center>
	</c:if>
	<c:if test="${user.userType == 'ADMIN'}">
		<center><a href="adduser.do">add user</a>
		
		<a href="home.do">transfer</a><br>
		<a href="transactions.do">transactions</a>
		<a href="accountdetails.do">account details</a></center>
	</c:if>
</body>
</html>