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
					<h3> Bienvenido al Recomendador de asignaturas optativas de la Facultad de Inform�tica de la Universidad Complutense de Madrid</h3>
				</div>

				<div id="textoCentro">
						<p>
							Este recomendador te ayudar� a elegir las asignaturas optativas que podr�s cursar a partir de tercero. Para ello, utilizar�
							tus preferencias en las asignaturas obligatorias que has cursado en primero y segundo. El recomendador comparar� tus preferencias
							con las de aquellos alumnos veteranos que coincidan y te recomendar� aquellas optativas que hayan recibido mejores valoraciones por los estudiantes afines a t�.
						</p>
						<p>
							Si eres un estudiante veterano, que ya ha cursado todas sus asignaturas optativas, puedes ayudar a tus compa�eros colaborando conel recomendador. Para ello, tan solo tienes que pinchar sobre el bot�n "Danos tu Opini�n" y rellenar los datos sobre tu titulaci�n y valorar las optativas cursadas en funci�n de lo que te hayan gustado. �Muchas gracias!
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
