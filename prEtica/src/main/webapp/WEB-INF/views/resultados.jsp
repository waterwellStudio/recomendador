<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="resources/ui/jquery-ui.css"/>
<script src= "resources/ui/external/jquery/jquery.js"></script>
<script src="resources/ui/jquery-ui.js"></script>
</head>
<body>
	<div id="resultados">
	<c:forEach var="i" items="${resultado}">
		<c:out value="${i}"/>
	</c:forEach>
	</div>
</body>
</html>