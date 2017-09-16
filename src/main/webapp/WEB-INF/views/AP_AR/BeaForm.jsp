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
				<td>user_name</td>
				<td><form:input type="text" path="user_name"/></td>
			</tr>

			<tr>
				<td>pass_word</td>
				<td><form:input type="password" path="pass_word"/></td>
			</tr>
			
			<tr>
				<td colspan=2 style="text-align:center;">
					<input type="submit" value="Submit" name="Save">
					<input type="submit" value="Update" name="Update">
					<input type="submit" value="Delete" name="Delete">
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
</body>
</html>
