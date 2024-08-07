<?php

require_once "../../../controladores/informes.controlador.php";
require_once "../../../modelos/informes.modelo.php";

require_once "../../../controladores/cursos.controlador.php";
require_once "../../../modelos/cursos.modelo.php";


class imprimirReporte{


	public $id;

	public function traerImpresionReporte(){

		// TRAEMOS LA INFORMACION DE LOS INFORMES

		if ($_GET["tabla"] == "primero") {
			
			$tablaInforme = "primero";
		}

		if ($_GET["tabla"] == "segundo") {
			
			$tablaInforme = "segundo";
		}

		if ($_GET["tabla"] == "tercero") {
			
			$tablaInforme = "tercero";
		}

		if ($_GET["tabla"] == "cuarto") {
			
			$tablaInforme = "cuarto";
		}

		if ($_GET["tabla"] == "quinto") {
			
			$tablaInforme = "quinto";
		}


		if ($_GET["modalidad"] == "Economía y Administración") {
			
			$modalidad = "Economía y Administración";
		}

		if ($_GET["modalidad"] == "Informática") {
			
			$modalidad = "Informática";
		}




		$itemInforme = "id";
		$valorInforme = $this->id;
		$periodo = $_GET["periodo"];
		//$tablaInforme = "primero";
		$verifica = false;

		$per = explode('/', $periodo);

		$per2 = $per[1];

		if ($per[0] == '01') {
			
			$titulo = 'INFORME CUALITATIVO MARZO - MAYO ' .$per2;
		}else{

			$titulo = 'INFORME CUALITATIVO JULIO - OCTUBRE ' .$per2;
		}
		

		$respuestaInforme = ControladorInformes::ctrMostrarInformes($itemInforme, $valorInforme, $tablaInforme, $periodo, $verifica);

		$nombre = $respuestaInforme["nombre"];
		$idCurso = $respuestaInforme["id_curso"];
		


		// TRAEMOS LA INFORMACION DE LOS CURSOS

		$itemCurso = "id";
		$valorCurso = $respuestaInforme["id_curso"];
		$tablaCurso = "primero";

		$respuestaCurso = ControladorCursos::ctrMostrarCursos($itemCurso, $valorCurso, $tablaCurso);

		$curso = $respuestaCurso["nombre"];
		$turno = $respuestaCurso["turno"];
	


require_once('tcpdf_include.php');

//$pdf=new FPDF(‘L’,’cm’,’A4’);

$pdf = new TCPDF('L', PDF_UNIT, 'A4', true, 'UTF-8', false);

$pdf->setPrintHeader(false); //Ahora si imprimirá cabecera
$pdf->setPrintFooter(true); //Ahora si imprimirá pie de página


// set header and footer fonts
$pdf->setHeaderFont(Array(PDF_FONT_NAME_MAIN, '', PDF_FONT_SIZE_MAIN));
$pdf->setFooterFont(Array(PDF_FONT_NAME_DATA, '', PDF_FONT_SIZE_DATA));

// set margins
$pdf->SetMargins(PDF_MARGIN_LEFT, 10, PDF_MARGIN_RIGHT);
$pdf->SetHeaderMargin(PDF_MARGIN_HEADER);
$pdf->SetFooterMargin(PDF_MARGIN_FOOTER);

$pdf->startPageGroup();

$pdf->AddPage();


//--------------------------------------------------------------------------------

$bloque1 = <<<EOF

	<table>

		<table>

		<tr>

			<td style="width: 780px"><img src="images/header.png"></td>

			<td style="background-color:white; width:606px">

				<div style="font-size:14px; text-align: right; line-height:10px;">

					<br>	
					ESCUELA SECUNDARIA RIO NEGRO Nº 153					

				</div>

			</td>

			
			
		</tr>
		

	</table>
		

	</table>

EOF;


$pdf->writeHTML($bloque1, false, false, false, false, '');

//----------------------------------------------------------------------------------

$bloque2 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		<tr>

			<td style="width:540px"><img src="images/backFact2.jpg"></td>

		</tr>

		<tr>

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:780px">

				<br>

				<strong>$titulo</strong>


			</td>


		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque2, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------

//----------------------------------------------------------------------------------

$bloque3 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		

		<tr>

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:260px">

				<br>

				Estudiante


			</td>

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:185px">

				<br>

				Agrupamiento


			</td>		

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:185px">

				<br>

				Turno


			</td>			

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:150px">

				<br>

				Modalidad


			</td>		

		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque3, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------


$bloque4 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		

		<tr>

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:260px">

				<br>

				$nombre


			</td>



			<td style="text-align: center; border: 1px solid #666; background-color:white; width:185px">

				<br>

				$curso


			</td>

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:185px">

				<br>

				$turno


			</td>

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:150px">

				<br>

				$modalidad


			</td>


		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque4, false, false, false, false, '');

//--------------------------------------------------------


//----------------------------------------------------------------------------------


$bloque5 = <<<EOF

	<table style="font-size:8px; padding:5px 10px;">

	<tr>

			<td style="width:780px"><img src="images/backFact2.jpg"></td>

		</tr>

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:180px">

				<br>

				ÁREAS DEL CONOCIMIENTO


			</td>



			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:200px">

				<br>

				SABERES

			</td>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:150px">

				<br>

				APRECIACION CUALITATIVA


			</td>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:62px">

				<br>

				ASISTENCIA

			</td>	

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:188px">

				<br>

				OBSERVACIONES

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque5, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------


$bloque6 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

				<br>

				CIENTÍFICA Y TECNOLÓGICA


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$respuestaInforme[saberes_cientifica]

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:150px">

				<br>

				$respuestaInforme[aprecia_cientifica]


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:62px">

				<br>

				$respuestaInforme[asistencia_cientifica]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:188px">

				<br>

				$respuestaInforme[observa_cientifica]

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque6, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------


$bloque7 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

				<br>

				CIENCIAS SOCIALES Y HUMANIDADES


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$respuestaInforme[saberes_sociales]

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:150px">

				<br>

				$respuestaInforme[aprecia_sociales]


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:62px">

				<br>

				$respuestaInforme[asistencia_sociales]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:188px">

				<br>

				$respuestaInforme[observa_sociales]

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque7, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------


$bloque8 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

				<br>

				LENGUA Y LITERATURA


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$respuestaInforme[saberes_lengua]

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:150px">

				<br>

				$respuestaInforme[aprecia_lengua]


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:62px">

				<br>

				$respuestaInforme[asistencia_lengua]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:188px">

				<br>

				$respuestaInforme[observa_lengua]

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque8, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------


$bloque9 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

				<br>

				SEGUNDAS LENGUAS


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$respuestaInforme[saberes_ingles]

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:150px">

				<br>

				$respuestaInforme[aprecia_ingles]


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:62px">

				<br>

				$respuestaInforme[asistencia_ingles]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:188px">

				<br>

				$respuestaInforme[observa_ingles]

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque9, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------


$bloque10 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

				<br>

				MATEMÁTICA


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$respuestaInforme[saberes_matematica]

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:150px">

				<br>

				$respuestaInforme[aprecia_matematica]


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:62px">

				<br>

				$respuestaInforme[asistencia_matematica]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:188px">

				<br>

				$respuestaInforme[observa_matematica]

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque10, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------


$bloque11 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

				<br>

				EDUCACIÓN FÍSICA


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$respuestaInforme[saberes_fisica]

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:150px">

				<br>

				$respuestaInforme[aprecia_fisica]


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:62px">

				<br>

				$respuestaInforme[asistencia_fisica]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:188px">

				<br>

				$respuestaInforme[observa_fisica]

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque11, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------


$bloque12 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

				<br>

				EDUCACIÓN ARTÍSTICA


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$respuestaInforme[saberes_artistica]

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:150px">

				<br>

				$respuestaInforme[aprecia_artistica]


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:62px">

				<br>

				$respuestaInforme[asistencia_artistica]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:188px">

				<br>

				$respuestaInforme[observa_artistica]

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque12, false, false, false, false, '');

//--------------------------------------------------------


if ($modalidad == "Economía y Administración") {

	//----------------------------------------------------------------------------------


$bloque13 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

				<br>

				C.O. - PRINCIPIOS DE ECONOMÍA Y ADMINISTRACIÓN


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$respuestaInforme[saberes_principio3]

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:150px">

				<br>

				$respuestaInforme[aprecia_principio3]


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:62px">

				<br>

				$respuestaInforme[asistencia_principio3]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:188px">

				<br>

				$respuestaInforme[observa_principio3]

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque13, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------


$bloque15 = <<<EOF

<table style="font-size:10px; padding:5px 10px;">



	

	<tr>

		<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

			<br>

			ESPACIO E.V.E.


		</td>



		<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

			<br>

			$respuestaInforme[saberes_eve]

		</td>

		<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:150px">

			<br>

			$respuestaInforme[aprecia_eve]


		</td>

		<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:62px">

			<br>

			$respuestaInforme[asistencia_eve]

		</td>	

		<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:188px">

			<br>

			$respuestaInforme[observa_eve]

		</td>	



	</tr>

</table>

EOF;


$pdf->writeHTML($bloque15, false, false, false, false, '');

//--------------------------------------------------------


//--------------------------------------------------------

	
}else{

	//----------------------------------------------------------------------------------


$bloque14 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

				<br>

				C.O. - TECNOLOGÍA DE LOS SISTEMAS INFORMÁTICOS


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$respuestaInforme[saberes_sistemas]

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:150px">

				<br>

				$respuestaInforme[aprecia_sistemas]


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:62px">

				<br>

				$respuestaInforme[asistencia_sistemas]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:188px">

				<br>

				$respuestaInforme[observa_sistemas]

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque14, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------


	$bloque15 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

	

		

		<tr>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:180px">

				<br>

				ESPACIO E.V.E.


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$respuestaInforme[saberes_eve]

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:150px">

				<br>

				$respuestaInforme[aprecia_eve]


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:62px">

				<br>

				$respuestaInforme[asistencia_eve]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:188px">

				<br>

				$respuestaInforme[observa_eve]

			</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque15, false, false, false, false, '');

//--------------------------------------------------------




}




//SALIDA DEL ARCHIVO

$pdf->Output('informe_'.$nombre.'.pdf');


}
}

$reporte = new imprimirReporte();
$reporte -> id = $_GET["id"];
$reporte -> informe = $_GET["informe"];
//$reporte -> area = $_GET["area"];
$reporte -> traerImpresionReporte();


?>	