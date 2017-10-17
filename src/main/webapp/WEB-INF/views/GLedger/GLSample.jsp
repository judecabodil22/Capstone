<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sample</title>
</head>
<body>
	<div>
		<h1>${b}</h1>
	</div>

	<form:form action="userlist" modelAttribute="ModelBindUser" >
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
				<td><Input type="submit" value="enter" name="gls_save"></td>
				<td><Input type="submit" value="update" name="gls_alter"></td>
				<td><Input type="submit" value="delete" name="gls_remove"></td>
				<td><Input type="submit" value="select" name="gls_get"></td>
				<td><Input type="submit" value="select2" name="gls_get2"></td>
				
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

			<c:forEach var="user" items="${c}">

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