<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div>
	<h1>${dis}</h1>
	</div>
	<form:form action="d_save" modelAttribute="insert" method="post">
		<table>
			<tr>
				<td>User ID:</td>
				<td><form:input type="text" path="user_id" name="id" /></td>
			</tr>

			<tr>
				<td>Username:</td>
				<td><form:input type="text" path="username" /></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><form:input type="password" path="password" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Submit" name="save"></td>
				
				<td><input type="submit" value="Update" name="update"></td>
				
				<td><input type="submit" value="Delete" name="delete"></td>
				
				<td><input type="submit" value="Find User" name="findByID"></td>
				
				<td><input type="submit" value="Select All" name="select"></td>
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

			<c:forEach var="user" items="${userList}">

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