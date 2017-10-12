<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<form:form action="GL_save" modelAttribute="modelSample">
		<table>
			<tr>
				<td>User ID:</td>
				<td><form:input type="text" path="user_id" /></td>
			</tr>

			<tr>
				<td>Username:</td>
				<td><form:input type="text" path="user_name" /></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><form:input type="password" path="pass_word" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Submit" name="save"></td>
				<td><input type="submit" value="Update" name="update"></td>
				<td><input type="submit" value="SelectAll" name="select"></td>
				<td><input type="submit" value="id" name="id"></td>
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

			<c:forEach var="user" items="${jude}">

				<tr>
					<td>${user.user_id}</td>
					<td>${user.user_name}</td>
					<td>${user.pass_word}</td>

				</tr>
			</c:forEach>

		</table>
	</center>


</body>
</html>