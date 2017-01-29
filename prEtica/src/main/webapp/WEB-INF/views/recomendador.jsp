<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<body>
		<form action="recomendador" method="POST">
			  <input type="radio" name="grado" value="0"> Informatica
			  <input type="radio" name="grado" value="1"> Computadores
			  <input type="radio" name="grado" value="2"> Software
		  <br>
		  	  <input type="radio" name="itirenario" value="0"> TIC
		  	  <input type="radio" name="itirenario" value="1"> computación
	      <br>  
			  <input type="radio" name="asig1" value="0"> GE
			  <input type="radio" name="asig1" value="1"> FC
			  <input type="radio" name="asig1" value="2"> MMI
			  <input type="radio" name="asig1" value="3"> FP
			  <input type="radio" name="asig1" value="4"> FEE
			  <input type="radio" name="asig1" value="5"> MDL
		  <br>
		      <input type="radio" name="asig12" value="0"> GE
			  <input type="radio" name="asig12" value="1"> FC
			  <input type="radio" name="asig12" value="2"> MMI
			  <input type="radio" name="asig12" value="3"> FP
			  <input type="radio" name="asig12" value="4"> FEE
			  <input type="radio" name="asig12" value="5"> MDL
		  <br>
		      <input type="radio" name="asig2" value="0"> PE o EA o ME
			  <input type="radio" name="asig2" value="1"> AM
			  <input type="radio" name="asig2" value="2"> EDA
			  <input type="radio" name="asig2" value="3"> TOC o TC
			  <input type="radio" name="asig2" value="4"> EC
			  <input type="radio" name="asig2" value="5"> IS
			  <input type="radio" name="asig2" value="6"> TP
			  <input type="radio" name="asig2" value="7"> BD
			  <input type="radio" name="asig2" value="8"> GE2
			  <input type="radio" name="asig2" value="9"> Electronica
			  <input type="radio" name="asig2" value="10"> SO
		  <br>
		      <input type="radio" name="asig22" value="0"> PE o EA o ME
			  <input type="radio" name="asig22" value="1"> AM
			  <input type="radio" name="asig22" value="2"> EDA
			  <input type="radio" name="asig22" value="3"> TOC o TC
			  <input type="radio" name="asig22" value="4"> EC
			  <input type="radio" name="asig22" value="5"> IS
			  <input type="radio" name="asig22" value="6"> TP
			  <input type="radio" name="asig22" value="7"> BD
			  <input type="radio" name="asig22" value="8"> GE2
			  <input type="radio" name="asig22" value="9"> Electronica
			  <input type="radio" name="asig22" value="10"> SO
		  <br> 
			  <div id="log_button">
					<p>
						<button type="submit">
							submit</button>
					</p>
			  </div>
		</form>
	</body>
</html>
