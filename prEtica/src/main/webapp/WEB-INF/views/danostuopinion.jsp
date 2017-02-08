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
					<p>
						Si eres un estudiante que ya ha cursado las cinco asignaturas optativas de la carrera y quieres ayudar a tus compañeros en la elección de las mismas, rellena el siguiente cuestionario.
						Se divide en tres bloques:
						<ul>
							<li type="square">
								Grado que has cursado y, en el caso de Informática, especialización.
							</li>
							<li type="square">
								Tu primera y segunda asignatura favorita de primer y segundo curso.
							</li>
							<li type="square">
								Todas las optativas cursadas ordenadas en grado de preferencia.
							</li>
						</ul>
					</p>
				</div>
				
				<div id="cuerpoFormulario">
					<form action="danostuopinion" method="POST">
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
						<h3> Optativas Cursadas, de la mejor a la peor</h3>
							<br>
							<div id=optativas>
								1º Optativa - <select name="op1">
								  	<option value="0">SI</option>
								  	<option value="1">PEC</option>
								  	<option value="2">LIN</option>
								  	<option value="3">GPU</option>
								  	<option value="4">PAD</option>
								  	<option value="5">DVI</option>
								  	<option value="6">ECTD</option>
								  	<option value="7">PR</option>
								  	<option value="8">IW</option>
								  	<option value="9">PEV</option>
								  	<option value="10">AA</option>
								  	<option value="11">SER</option>
								  	<option value="12">CTC</option>
								  	<option value="13">MIN</option>
								  	<option value="14">GIW</option>
								  	<option value="15">IU</option>
								  	<option value="16">CE</option>
								  	<option value="17">SOC</option>
								  	<option value="18">IAAC</option>
								  	<option value="19">ROB</option>
								  	<option value="20">NSQ</option>
								  	<option value="21">HJA</option>
								  	<option value="22">CC</option>
								 </select>
								 </br>
								 <br>
									2º Optativa - <select name="op2">
									  	<option value="0">SI</option>
									  	<option value="1">PEC</option>
									  	<option value="2">LIN</option>
									  	<option value="3">GPU</option>
									  	<option value="4">PAD</option>
									  	<option value="5">DVI</option>
									  	<option value="6">ECTD</option>
									  	<option value="7">PR</option>
									  	<option value="8">IW</option>
									  	<option value="9">PEV</option>
									  	<option value="10">AA</option>
									  	<option value="11">SER</option>
									  	<option value="12">CTC</option>
									  	<option value="13">MIN</option>
									  	<option value="14">GIW</option>
									  	<option value="15">IU</option>
									  	<option value="16">CE</option>
									  	<option value="17">SOC</option>
									  	<option value="18">IAAC</option>
									  	<option value="19">ROB</option>
									  	<option value="20">NSQ</option>
									  	<option value="21">HJA</option>
									  	<option value="22">CC</option>
									 </select>
								</br>
								<br>
								3º Optativa - <select name="op3">
								  	<option value="0">SI</option>
								  	<option value="1">PEC</option>
								  	<option value="2">LIN</option>
								  	<option value="3">GPU</option>
								  	<option value="4">PAD</option>
								  	<option value="5">DVI</option>
								  	<option value="6">ECTD</option>
								  	<option value="7">PR</option>
								  	<option value="8">IW</option>
								  	<option value="9">PEV</option>
								  	<option value="10">AA</option>
								  	<option value="11">SER</option>
								  	<option value="12">CTC</option>
								  	<option value="13">MIN</option>
								  	<option value="14">GIW</option>
								  	<option value="15">IU</option>
								  	<option value="16">CE</option>
								  	<option value="17">SOC</option>
								  	<option value="18">IAAC</option>
								  	<option value="19">ROB</option>
								  	<option value="20">NSQ</option>
								  	<option value="21">HJA</option>
								  	<option value="22">CC</option>
								 </select>
								 </br>

								 <br>
								4º Optativa - <select name="op4">
								  	<option value="0">SI</option>
								  	<option value="1">PEC</option>
								  	<option value="2">LIN</option>
								  	<option value="3">GPU</option>
								  	<option value="4">PAD</option>
								  	<option value="5">DVI</option>
								  	<option value="6">ECTD</option>
								  	<option value="7">PR</option>
								  	<option value="8">IW</option>
								  	<option value="9">PEV</option>
								  	<option value="10">AA</option>
								  	<option value="11">SER</option>
								  	<option value="12">CTC</option>
								  	<option value="13">MIN</option>
								  	<option value="14">GIW</option>
								  	<option value="15">IU</option>
								  	<option value="16">CE</option>
								  	<option value="17">SOC</option>
								  	<option value="18">IAAC</option>
								  	<option value="19">ROB</option>
								  	<option value="20">NSQ</option>
								  	<option value="21">HJA</option>
								  	<option value="22">CC</option>
								 </select>
								 </br>

								 <br>
								5º Optativa - <select name="op5">
								  	<option value="0">SI</option>
								  	<option value="1">PEC</option>
								  	<option value="2">LIN</option>
								  	<option value="3">GPU</option>
								  	<option value="4">PAD</option>
								  	<option value="5">DVI</option>
								  	<option value="6">ECTD</option>
								  	<option value="7">PR</option>
								  	<option value="8">IW</option>
								  	<option value="9">PEV</option>
								  	<option value="10">AA</option>
								  	<option value="11">SER</option>
								  	<option value="12">CTC</option>
								  	<option value="13">MIN</option>
								  	<option value="14">GIW</option>
								  	<option value="15">IU</option>
								  	<option value="16">CE</option>
								  	<option value="17">SOC</option>
								  	<option value="18">IAAC</option>
								  	<option value="19">ROB</option>
								  	<option value="20">NSQ</option>
								  	<option value="21">HJA</option>
								  	<option value="22">CC</option>
								 </select>
							</div>
						  <div id="log_button">
								<p> <button type="submit" tyle='width:150px; height:75px'> Enviar </button> </p>
						  </div>
					</form>
				</div>
			
			</div>
		
		</div>

	</body>



</html>