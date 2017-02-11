<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
	
		<!--<link rel="stylesheet" type="text/css" href="resources/ui/jquery-ui.css"/>-->
		<link rel="StyleSheet" type="text/css" href="resources/recomendador/estilo.css">
		<script src= "resources/ui/external/jquery/jquery.js"></script>
		<script src="resources/ui/jquery-ui.js"></script>
		<title>
			RECOMENDADOR FDI
		</title>
	</head>
	<body>
		<h1>
			<IMG SRC="resources/recomendador/home-ucm.JPG" WIDTH=178 HEIGHT=180 ALT="ucm">
			RECOMENDADOR DE OPTATIVAS FDI
			<IMG SRC="resources/recomendador/home-fdi.JPG" WIDTH=320 HEIGHT=180 ALT="fdi">
		</h1>
		<div id="textoCentro">
			<h2>Resultados</h2>
			
			
			<p>
				A continuación podrás consultar las asignaturas optativas recomendadas.
			</p>
		
		
			
			<c:forEach var="i" items="${resultado}">
				<c:out value="${i}"/>
				<br>
			</c:forEach>
		</div>
	</body>
</html>