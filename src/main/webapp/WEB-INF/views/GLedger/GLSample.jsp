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
				<td><form:input type="text" path="user_name"/></td>
			</tr>

			<tr>
				<td>password</td>
				<td><form:input type="password" path="pass_word"/></td>
			</tr>
			
			<tr>
				<td><Input type="submit" value="enter" name="gls_save"></td>
				<td><Input type="submit" value="update" name="gls_alter"></td>
				<td><Input type="submit" value="delete" name="gls_remove"></td>
				
			</tr>
			
		</table>
	</form:form>

</body>
</html>