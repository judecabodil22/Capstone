<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Collections</title>
</head>
<body>
	<h1>${Welcome}</h1>

	<form:form action="c_save" modelAttribute="modelKai">
		<table>
			<tr>
				<td>User ID</td>
				<td><form:input type="text" path="user_id"/></td>
				
			</tr>
			<tr>
				<td>User name</td>
				<td><form:input type="text" path="username"/></td>
				
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input type="password" path="password"/></td>
				
			</tr>
			<tr>
			
				<td><input type="submit" value="Submit" name="Save"></td>
				
				<td><input type="submit" value="Update" name="Update"></td>
				
				<td><input type="submit" value="Delete" name="Delete"></td>
				
				<td><input type="submit" value="SelectAll" name="Select"></td>
				
				<td><input type="submit" value="UserID" name="ID"></td>
				
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

			<c:forEach var="Abi" items="${List}">

				<tr>
					<td>${Abi.user_id}</td>
					<td>${Abi.username}</td>
					<td>${Abi.password}</td>

				</tr>
			</c:forEach>

		</table>
	</center>

</body>
</html>