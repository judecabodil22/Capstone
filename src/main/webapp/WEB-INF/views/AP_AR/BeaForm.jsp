<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${Vianca}</h1>
	<form:form action="APARsave" modelAttribute="modelBeaForm">
		<table>
			<tr>
				<td>user_id</td>
				<td><form:input type="text" path="user_id"/></td>
			</tr>

			<tr>
				<td>username</td>
				<td><form:input type="text" path="username"/></td>
			</tr>

			<tr>
				<td>password</td>
				<td><form:input type="password" path="password"/></td>
			</tr>
			
			<tr>
				<td colspan=2 style="text-align:center;">
					<input type="submit" value="Submit" name="Save">
					<input type="submit" value="Update" name="Update">
					<input type="submit" value="Delete" name="Delete">
					<input type="submit" value="SelectAll" name="SelectAll">
					<input type="submit" value="SelectFrom" name="SelectFrom">
				</td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			

		</table>
</form:form>

	<center>
		<table border="2" width="70%" cellpadding="2"
			style="text-align: center">

			<tr>
				<th>User ID</th>
				<th>Username</th>
				<th>Password</th>
			</tr>

			<c:forEach var="user" items="${Byangcake}">

				<tr>
					<td>${user.user_id}</td>
					<td>${user.username}</td>
					<td>${user.password}</td>

				</tr>
			</c:forEach>

		</table>
	</center>
</body>
</html>
