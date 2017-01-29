<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<body>
		<form action="danostuopinion" method="POST">
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
		      <input type="radio" name="op1" value="0"> SI
			  <input type="radio" name="op1" value="1"> PEC
			  <input type="radio" name="op1" value="2"> LIN
			  <input type="radio" name="op1" value="3"> GPU
			  <input type="radio" name="op1" value="4"> PAD
			  <input type="radio" name="op1" value="5"> DVI
			  <input type="radio" name="op1" value="6"> ECTD
			  <input type="radio" name="op1" value="7"> PR
			  <input type="radio" name="op1" value="8"> IW
			  <input type="radio" name="op1" value="9"> PEV
			  <input type="radio" name="op1" value="10"> AA
			  <input type="radio" name="op1" value="11"> SER
			  <input type="radio" name="op1" value="12"> CTC
			  <input type="radio" name="op1" value="13"> MIN
			  <input type="radio" name="op1" value="14"> GIW
			  <input type="radio" name="op1" value="15"> IU
			  <input type="radio" name="op1" value="16"> CE
			  <input type="radio" name="op1" value="17"> SOC
			  <input type="radio" name="op1" value="18"> IAAC
			  <input type="radio" name="op1" value="19"> ROB
			  <input type="radio" name="op1" value="20"> NSQ
			  <input type="radio" name="op1" value="21"> HJA
			  <input type="radio" name="op1" value="22"> CC
		   <br>
		      <input type="radio" name="op2" value="0"> SI
			  <input type="radio" name="op2" value="1"> PEC
			  <input type="radio" name="op2" value="2"> LIN
			  <input type="radio" name="op2" value="3"> GPU
			  <input type="radio" name="op2" value="4"> PAD
			  <input type="radio" name="op2" value="5"> DVI
			  <input type="radio" name="op2" value="6"> ECTD
			  <input type="radio" name="op2" value="7"> PR
			  <input type="radio" name="op2" value="8"> IW
			  <input type="radio" name="op2" value="9"> PEV
			  <input type="radio" name="op2" value="10"> AA
			  <input type="radio" name="op2" value="11"> SER
			  <input type="radio" name="op2" value="12"> CTC
			  <input type="radio" name="op2" value="13"> MIN
			  <input type="radio" name="op2" value="14"> GIW
			  <input type="radio" name="op2" value="15"> IU
			  <input type="radio" name="op2" value="16"> CE
			  <input type="radio" name="op2" value="17"> SOC
			  <input type="radio" name="op2" value="18"> IAAC
			  <input type="radio" name="op2" value="19"> ROB
			  <input type="radio" name="op2" value="20"> NSQ
			  <input type="radio" name="op2" value="21"> HJA
			  <input type="radio" name="op2" value="22"> CC
		  <br>
		      <input type="radio" name="op3" value="0"> SI
			  <input type="radio" name="op3" value="1"> PEC
			  <input type="radio" name="op3" value="2"> LIN
			  <input type="radio" name="op3" value="3"> GPU
			  <input type="radio" name="op3" value="4"> PAD
			  <input type="radio" name="op3" value="5"> DVI
			  <input type="radio" name="op3" value="6"> ECTD
			  <input type="radio" name="op3" value="7"> PR
			  <input type="radio" name="op3" value="8"> IW
			  <input type="radio" name="op3" value="9"> PEV
			  <input type="radio" name="op3" value="10"> AA
			  <input type="radio" name="op3" value="11"> SER
			  <input type="radio" name="op3" value="12"> CTC
			  <input type="radio" name="op3" value="13"> MIN
			  <input type="radio" name="op3" value="14"> GIW
			  <input type="radio" name="op3" value="15"> IU
			  <input type="radio" name="op3" value="16"> CE
			  <input type="radio" name="op3" value="17"> SOC
			  <input type="radio" name="op3" value="18"> IAAC
			  <input type="radio" name="op3" value="19"> ROB
			  <input type="radio" name="op3" value="20"> NSQ
			  <input type="radio" name="op3" value="21"> HJA
			  <input type="radio" name="op3" value="22"> CC
		   <br>
		      <input type="radio" name="op4" value="0"> SI
			  <input type="radio" name="op4" value="1"> PEC
			  <input type="radio" name="op4" value="2"> LIN
			  <input type="radio" name="op4" value="3"> GPU
			  <input type="radio" name="op4" value="4"> PAD
			  <input type="radio" name="op4" value="5"> DVI
			  <input type="radio" name="op4" value="6"> ECTD
			  <input type="radio" name="op4" value="7"> PR
			  <input type="radio" name="op4" value="8"> IW
			  <input type="radio" name="op4" value="9"> PEV
			  <input type="radio" name="op4" value="10"> AA
			  <input type="radio" name="op4" value="11"> SER
			  <input type="radio" name="op4" value="12"> CTC
			  <input type="radio" name="op4" value="13"> MIN
			  <input type="radio" name="op4" value="14"> GIW
			  <input type="radio" name="op4" value="15"> IU
			  <input type="radio" name="op4" value="16"> CE
			  <input type="radio" name="op4" value="17"> SOC
			  <input type="radio" name="op4" value="18"> IAAC
			  <input type="radio" name="op4" value="19"> ROB
			  <input type="radio" name="op4" value="20"> NSQ
			  <input type="radio" name="op4" value="21"> HJA
			  <input type="radio" name="op4" value="22"> CC
			<br>
		      <input type="radio" name="op5" value="0"> SI
			  <input type="radio" name="op5" value="1"> PEC
			  <input type="radio" name="op5" value="2"> LIN
			  <input type="radio" name="op5" value="3"> GPU
			  <input type="radio" name="op5" value="4"> PAD
			  <input type="radio" name="op5" value="5"> DVI
			  <input type="radio" name="op5" value="6"> ECTD
			  <input type="radio" name="op5" value="7"> PR
			  <input type="radio" name="op5" value="8"> IW
			  <input type="radio" name="op5" value="9"> PEV
			  <input type="radio" name="op5" value="10"> AA
			  <input type="radio" name="op5" value="11"> SER
			  <input type="radio" name="op5" value="12"> CTC
			  <input type="radio" name="op5" value="13"> MIN
			  <input type="radio" name="op5" value="14"> GIW
			  <input type="radio" name="op5" value="15"> IU
			  <input type="radio" name="op5" value="16"> CE
			  <input type="radio" name="op5" value="17"> SOC
			  <input type="radio" name="op5" value="18"> IAAC
			  <input type="radio" name="op5" value="19"> ROB
			  <input type="radio" name="op5" value="20"> NSQ
			  <input type="radio" name="op5" value="21"> HJA
			  <input type="radio" name="op5" value="22"> CC
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
