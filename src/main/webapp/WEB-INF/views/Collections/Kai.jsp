<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>${Welcome}</h1>

	<form:form action="C_save" modelAttribute="modelKai">
		<table>
			<tr>
				<td>User ID</td>
				<td><form:input type="text" path="user_id"/></td>
				
			</tr>
			<tr>
				<td>User name</td>
				<td><form:input type="text" path="user_name"/></td>
				
			</tr>
			<tr>
				<td>Password</td>
				<td><form:input type="password" path="pass_word"/></td>
				
			</tr>
			<tr>
			
				<td><input type="submit" value="Submit" name="Save"></td>
				
				<td><input type="submit" value="Update" name="Update"></td>
				
				<td><input type="submit" value="Delete" name="Delete"></td>
				
			</tr>
		</table>
	</form:form>

</body>
</html>