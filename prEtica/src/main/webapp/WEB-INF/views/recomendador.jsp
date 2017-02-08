<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

	<head>
		<title> Recomendador FDI UCM</title>
		<link rel="StyleSheet" type="text/css" href="resources/recomendador/estilo.css">

		<script type="text/javascript">
			function cambiar(sel){
				if(sel.value=="0")
						document.getElementById('oculto').style.display = 'inline';
				else
					document.getElementById('oculto').style.display = 'none';	
			}
		</script>
	
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
					<h1> Recomendador de asignaturas </h1>
				</div>

				<div id="textoCentro">
					<h2>Formulario para solicitar la recomendación</h2>
					<p>
						A continuación deberás rellenar el siguiente formulario. En primer lugar, indica tu plan de estudios (grado que estas cursando y, en el caso de informática, la especialización). Después deberás señalar las dos asignaturas de primero y segundo, respectivamente, que más te hayan gustado por orden de preferencia. Cuando finalices, presiona el botón de "Finalizar". El recomendador analizará tus datos y te llevará a la pantalla de resultados donde podrás consultar las asignaturas recomendadas.
					</p>
				</div>
				
				<div id="cuerpoFormulario">
					<form action="recomendador" method="POST">
						<h3> Grado que cursas</h3>
							<select name="grado" onChange="cambiar(this)">
						  		<option value="0">Informática</option>
						  		<option value="1">Computadores</option>
						  		<option value="2">Software</option>
						  	</select>

					  <div id="oculto" style="display:;">
						<h3> Especialización (solo Grado en Informática)</h3>
							<select name="itirenario">
						  		<option value="0">TIC</option>
						  		<option value="1">Computación</option>
						  	</select>
				      </div>

						<h3> Primera asignatura favorita de primer curso</h3>
						  <select name="asig1">
						  	<option value="0">GE</option>
						  	<option value="1">FC</option>
						  	<option value="2">MMI</option>
						  	<option value="3">FP</option>
						  	<option value="4">FE</option>
						  	<option value="5">MDL</option>
						  </select>
					  <br>
						<h3> Segunda asignatura favorita de primer curso</h3>
						<select name="asig12">
						  	<option value="0">GE</option>
						  	<option value="1">FC</option>
						  	<option value="2">MMI</option>
						  	<option value="3">FP</option>
						  	<option value="4">FE</option>
						  	<option value="5">MDL</option>
						  </select>
					  <br>
						<h3> Primera asignatura favorita de segundo curso</h3>
							<select name="asig2">
							  	<option value="0">PE o EA o ME</option>
							  	<option value="1">AM</option>
							  	<option value="2">EDA</option>
							  	<option value="3">TOC o TC</option>
							  	<option value="4">EC</option>
							  	<option value="5">IS</option>
							  	<option value="6">TP</option>
							  	<option value="7">BD</option>
							  	<option value="8">GE2</option>
							  	<option value="9">Electronica</option>
							  	<option value="10">SO</option>
							 </select>
					  <br>
						<h3> Segunda asignatura favorita de segundo curso</h3>
					      	<select name="asig22">
							  	<option value="0">PE o EA o ME</option>
							  	<option value="1">AM</option>
							  	<option value="2">EDA</option>
							  	<option value="3">TOC o TC</option>
							  	<option value="4">EC</option>
							  	<option value="5">IS</option>
							  	<option value="6">TP</option>
							  	<option value="7">BD</option>
							  	<option value="8">GE2</option>
							  	<option value="9">Electronica</option>
							  	<option value="10">SO</option>
							</select>
					  <br>
						  <div id="log_button">
								<p> <button type="submit" tyle='width:150px; height:75px'> Enviar </button> </p>
						  </div>
					</form>
				</div>
			
			</div>
		
		</div>

	</body>



</html>