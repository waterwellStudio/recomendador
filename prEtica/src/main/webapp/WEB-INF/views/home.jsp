<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

	<head>
		<title> Recomendador FDI UCM</title>
		<link rel="StyleSheet" type="text/css" href="resources/recomendador/estilo.css">
	
	</head>
	
	<body>
		<div id="capaMadre">
			<div id="panelSuperior">
				<div id=izq>
					<IMG SRC="resources/recomendador/home-ucm.JPG" ALT="ucm" WIDTH=178 HEIGHT=180>
				</div>

				<div id=drc>
					<IMG SRC="resources/recomendador/home-fdi.JPG" ALT="fdi" WIDTH=300 HEIGHT=180>
				</div>
			</div>
			
			<div id="panelDatos">
				
				<div id="centro">
					<h3> Bienvenido al Recomendador de asignaturas optativas de la Facultad de Informática de la Universidad Complutense de Madrid</h3>
				</div>

				<div id="textoCentro">
						<p>
							Este recomendador te ayudará a elegir las asignaturas optativas que podrás cursar a partir de tercero. Para ello, utilizará
							tus preferencias en las asignaturas obligatorias que has cursado en primero y segundo. El recomendador comparará tus preferencias
							con las de aquellos alumnos veteranos que coincidan y te recomendará aquellas optativas que hayan recibido mejores valoraciones por los estudiantes afines a tí.
						</p>
						<p>
							Si eres un estudiante veterano, que ya ha cursado todas sus asignaturas optativas, puedes ayudar a tus compañeros colaborando conel recomendador. Para ello, tan solo tienes que pinchar sobre el botón "Danos tu Opinión" y rellenar los datos sobre tu titulación y valorar las optativas cursadas en función de lo que te hayan gustado. ¡Muchas gracias!
						</p>
				</div>
				<div id="log_button">
				<button>
					<a>  
						<input type="button" value="RECOMENDADOR" onClick=" window.location.href='http://www.google.com' " style='width:200px; height:50px'>
					</a>
				</button>
				
				<button>
					<a>  
						<input type="button" value="DANOS TU OPINION" onClick=" window.location.href='http://www.ascodevida.com' " style='width:200px; height:50px'>
					</a>
				</button>
				</div>
			</div>
		
		</div>

	</body>



</html>
