<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Collections</h1>

<c:forEach var="obj" items="${lakas}">
<h1>${obj.user_id}</h1>
</c:forEach>

<h1>${lakass}</h1>
</body>
</html>