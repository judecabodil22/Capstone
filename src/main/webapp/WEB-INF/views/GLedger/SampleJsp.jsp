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
				<td><form:input type="text" path="user_id"/></td>
			</tr>

			<tr>
				<td>Username:</td>
				<td><form:input type="text" path="user_name"/></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><form:input type="password" path="pass_word"/></td>
			</tr>

			<tr>
				<td><input type="submit" value="Submit" name="save"></td>
				<td><input type="submit" value="Update" name="update"></td>
			</tr>

		</table>
	</form:form>

</body>
</html>