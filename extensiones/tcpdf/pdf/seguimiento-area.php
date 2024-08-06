<?php

require_once "../../../controladores/informes.controlador.php";
require_once "../../../modelos/informes.modelo.php";

require_once "../../../controladores/cursos.controlador.php";
require_once "../../../modelos/cursos.modelo.php";


class imprimirReporte{


	public $idCurso;

	public function traerImpresionReporte(){

		// TRAEMOS LA INFORMACION DE LOS INFORMES

		if ($_GET["tabla"] == "seguimiento") {
			
			$tablaInforme = "seguimiento";
		}


		
		$itemInforme = "id_curso";
		//$valorInforme = $this->idCurso;
		$valorInforme = $_GET["idCurso"];
		//$tablaInforme = "primero";
		$periodo = $_GET["periodo"];
		$verifica = true;


		$per = explode('/', $periodo);

		$per2 = $per[1];

		if ($per[0] == '01') {
			
			$titulo = 'INFORME FINAL DE SEGUIMIENTO DEL BLOQUE ACADÉMICO ' .$per2;
		}else{

			$titulo = 'INFORME FINAL DE SEGUIMIENTO DEL BLOQUE ACADÉMICO ' .$per2;
		}
		

		$respuestaInforme = ControladorInformes::ctrMostrarInformes($itemInforme, $valorInforme, $tablaInforme, $periodo, $verifica);

		//$nombre = $respuestaInforme["nombre"];
		//$idCurso = $respuestaInforme["id_curso"];
		$idCurso = $_GET["idCurso"];
		
		 if ($_GET["area"] == "cientifica") {

		 	$area = "CIENTÍFICA Y TECNOLÓGICA";

		 }	

		 if ($_GET["area"] == "sociales") {

		 	$area = "SOCIALES Y HUMANIDADES";

		 }	

		 if ($_GET["area"] == "lengua") {

		 	$area = "LENGUA Y LITERATURA";

		 }	

		 if ($_GET["area"] == "matematica") {

		 	$area = "MATEMÁTICA";

		 }

		  if ($_GET["area"] == "ingles") {

		 	$area = "SEGUNDAS LENGUAS";

		 }

		  if ($_GET["area"] == "fisica") {

		 	$area = "EDUCACIÓN FÍSICA";

		 }

		 if ($_GET["area"] == "artistica") {

		 	$area = "LENGUAJES ARTÍSTICOS";

		 }



		// TRAEMOS LA INFORMACION DE LOS CURSOS

		$itemCurso = "id";
		$valorCurso = $_GET["idCurso"];
		$tablaCurso = "primero";

		$respuestaCurso = ControladorCursos::ctrMostrarCursos($itemCurso, $valorCurso, $tablaCurso);

		$curso = $respuestaCurso["nombre"];
		$turno = $respuestaCurso["turno"];
	


require_once('tcpdf_include.php');

//$pdf=new FPDF(‘L’,’cm’,’A4’);

$pdf = new TCPDF('L', PDF_UNIT, 'LEGAL', true, 'UTF-8', false);

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

EOF;


$pdf->writeHTML($bloque1, false, false, false, false, '');

//----------------------------------------------------------------------------------

$bloque2 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		<tr>

			<td style="width:540px"><img src="images/backFact2.jpg"></td>

		</tr>

		<tr>

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:940px">

				<br>

				<strong>$titulo - ÁREA: $area</strong>


			</td>

			

			
			

		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque2, false, false, false, false, '');

//--------------------------------------------------------

//----------------------------------------------------------------------------------

foreach ($respuestaInforme as $key => $value) {


	if ($_GET["area"] == "cientifica") {

			$area = "CIENTÍFICA Y TECNOLÓGICA";

			$acreditacion = $value["criterio_acreditacion_cientifica"];
			$evaluacion = $value["criterio_evaluacion_cientifica"];
			$indicador = $value["indicador_evaluacion_cientifica"];
			$aprecia = $value["apreciacion_cualitativa_cientifica"];
			$asistencia = $value["asistencia_cientifica"];
			$observaciones = $value["observaciones_cientifica"];


		}

		if ($_GET["area"] == "sociales") {

			$area = "CIENCIAS SOCIALES Y HUMANIDADES";

			$acreditacion = $value["criterio_acreditacion_sociales"];
			$evaluacion = $value["criterio_evaluacion_sociales"];
			$indicador = $value["indicador_evaluacion_sociales"];
			$aprecia = $value["apreciacion_cualitativa_sociales"];
			$asistencia = $value["asistencia_sociales"];
			$observaciones = $value["observaciones_sociales"];


		}	

		if ($_GET["area"] == "lengua") {

			$area = "LENGUA Y LITERATURA";

			$acreditacion = $value["criterio_acreditacion_lengua"];
			$evaluacion = $value["criterio_evaluacion_lengua"];
			$indicador = $value["indicador_evaluacion_lengua"];
			$aprecia = $value["apreciacion_cualitativa_lengua"];
			$asistencia = $value["asistencia_lengua"];
			$observaciones = $value["observaciones_lengua"];


		}

		if ($_GET["area"] == "ingles") {

			$area = "SEGUNDAS LENGUAS";

			$acreditacion = $value["criterio_acreditacion_ingles"];
			$evaluacion = $value["criterio_evaluacion_ingles"];
			$indicador = $value["indicador_evaluacion_ingles"];
			$aprecia = $value["apreciacion_cualitativa_ingles"];
			$asistencia = $value["asistencia_ingles"];
			$observaciones = $value["observaciones_ingles"];


		}

		if ($_GET["area"] == "matematica") {

			$area = "MATEMÁTICA";

			$acreditacion = $value["criterio_acreditacion_matematica"];
			$evaluacion = $value["criterio_evaluacion_matematica"];
			$indicador = $value["indicador_evaluacion_matematica"];
			$aprecia = $value["apreciacion_cualitativa_matematica"];
			$asistencia = $value["asistencia_matematica"];
			$observaciones = $value["observaciones_matematica"];


		}

		if ($_GET["area"] == "fisica") {

			$area = "EDUCACIÓN FÍSICA";

			$acreditacion = $value["criterio_acreditacion_fisica"];
			$evaluacion = $value["criterio_evaluacion_fisica"];
			$indicador = $value["indicador_evaluacion_fisica"];
			$aprecia = $value["apreciacion_cualitativa_fisica"];
			$asistencia = $value["asistencia_fisica"];
			$observaciones = $value["observaciones_fisica"];


		}

		if ($_GET["area"] == "artistica") {

			$area = "EDUCACIÓN ARTÍSTICA";

			$acreditacion = $value["criterio_acreditacion_artistica"];
			$evaluacion = $value["criterio_evaluacion_artistica"];
			$indicador = $value["indicador_evaluacion_artistica"];
			$aprecia = $value["apreciacion_cualitativa_artistica"];
			$asistencia = $value["asistencia_artistica"];
			$observaciones = $value["observaciones_artistica"];


		}



//----------------------------------------------------------------------------------

$bloque3 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		

		<tr>

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:360px">

				<br>

				Estudiante


			</td>

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:290px">

				<br>

				Agrupamiento


			</td>		

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:290px">

				<br>

				Turno


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

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:360px">

				<br>

				$value[nombre]


			</td>



			<td style="text-align: center; border: 1px solid #666; background-color:white; width:290px">

				<br>

				$curso


			</td>

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:290px">

				<br>

				$turno


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

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:120px">

				<br>

				AREAS DEL CONOCIMIENTO


			</td>



			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:160px">

				<br>

				CRITERIOS DE ACREDITACIÓN INSTITUCIONALES

			</td>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:160px">

				<br>

				CRITERIOS DE EVALUACIÓN


			</td>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:160px">

				<br>

				INDICADORES DE EVALUACIÓN

			</td>	

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:110px">

				<br>

				APRECIACIÓN CUALITATIVA

			</td>	

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:65px">

			<br>

			ASISTENCIA

		</td>

		<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:165px">

		<br>

		COMENTARIOS Y SUGERENCIAS  PARA LA CONTINUIDAD DE LA TRAYECTORIA

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

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:120px">

				<br>

				$area


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$acreditacion

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$evaluacion


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$indicador

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:110px">

				<br>

				$aprecia

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:65px">

			<br>

			$asistencia

		</td>

		<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:165px">

		<br>

		$observaciones

	</td>



		</tr>

		<tr>

			<td style="width:780px"><img src="images/backFact2.jpg"></td>

		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque6, false, false, false, false, '');

}

//--------------------------------------------------------

//SALIDA DEL ARCHIVO

$pdf->Output('informe_area_'.$area.'.pdf');


}
}

$reporte = new imprimirReporte();
$reporte -> id = $_GET["idCurso"];
$reporte -> informe = $_GET["informe"];
$reporte -> area = $_GET["area"];
$reporte -> traerImpresionReporte();


?>	