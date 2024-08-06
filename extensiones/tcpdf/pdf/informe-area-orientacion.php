<?php

require_once "../../../controladores/informes.controlador.php";
require_once "../../../modelos/informes.modelo.php";

require_once "../../../controladores/cursos.controlador.php";
require_once "../../../modelos/cursos.modelo.php";


class imprimirReporte{


	public $idCurso;

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



		
		$itemInforme = "id_curso";
		//$valorInforme = $this->idCurso;
		$valorInforme = $_GET["idCurso"];
		$valorInforme2 = $_GET["idCurso2"];
		$tablaInforme = $_GET["tabla"];
		$periodo = $_GET["periodo"];
		$modalidad = $_GET["modalidad"];
		$verifica = true;

		$per = explode('/', $periodo);

		$per2 = $per[1];

		if ($per[0] == '01') {
			
			$titulo = 'INFORME CUALITATIVO MARZO - MAYO ' .$per2;
		}else{

			$titulo = 'INFORME CUALITATIVO JULIO - OCTUBRE ' .$per2;
		}
		

 		$respuestaInforme = ControladorInformes::ctrMostrarInformesOrientacion($itemInforme, $valorInforme, $valorInforme2, $tablaInforme, $periodo, $modalidad, $verifica);

		
		$idCurso = $_GET["idCurso"];
		
		

		 if ($_GET["area"] == "principio3") {

		 	$area = "C.O. - PRINCIPIO DE ECONOMÍA Y ADMINISTRACIÓN";

		 }

		 if ($_GET["area"] == "sistemas") {

		 	$area = "C.O. - TECNOLOGÍA DE LOS SISTEMAS INFORMÁTICOS";

		 }

		if ($_GET["area"] == "economia") {

		 	$area = "C.O. - ECONOMÍA SOCIAL Y SOLIDARIA";

		 }

		if ($_GET["area"] == "principio4") {

		 	$area = "C.O. - PRINCIPIO DE ECONOMÍA Y ADMINISTRACIÓN";

		 }

		 if ($_GET["area"] == "pymes4") {

			$area = "C.O. - GESTIÓN DE PYMES Y COOPERATIVAS";

		}

		if ($_GET["area"] == "pymes5") {

			$area = "C.O. - GESTIÓN DE PYMES Y COOPERATIVAS";

		}

		if ($_GET["area"] == "problematicas") {

			$area = "C.O. - PROBLEMÁTICAS ECONÓMICAS CONTEMPORÁNEAS";

		}

		if ($_GET["area"] == "taller") {

			$area = "C.O. - TALLER DE PRÁCTICAS COMUNITARIAS";

		}


		if ($_GET["area"] == "aplicaciones") {

		 	$area = "C.O. - APLICACIONES INFORMÁTICAS";

		 }

		 if ($_GET["area"] == "conectividad") {

			$area = "C.O. - TECNOLOGÍA DE LA CONECTIVIDAD, INVESTIGACIÓN Y DESARROLLO TECNOLÓGICO";

		}

		if ($_GET["area"] == "software") {

		 	$area = "C.O. - TECNOLOGÍA DEL SOFTWARE LIBRE";

		 }


		if ($_GET["area"] == "proyecto") {

		 	$area = "C.O. - METODOLOGIA Y PROYECTO DE INVESTIGACION E INSERCION COMUNITARIA";

		 }

		if ($_GET["area"] == "conocimiento") {

		 	$area = "C.O. - PROBLEMATICA DEL CONOCIMIENTO SOCIAL";

		 }

		 if ($_GET["area"] == "problematica") {

		 	$area = "C.O. - PROBLEMATICAS SOCIALES LATINOAMERICANAS Y ARGENTINAS";

		 }

		 if ($_GET["area"] == "seguridad") {

		 	$area = "C.O. - SEGURIDAD Y LEGISLACIÓN EN INFORMÁTICA";

		 }

		 if ($_GET["area"] == "tecnologico") {

		 	$area = "C.O. - PROYECTO TECNOLÓGICO EN INFORMÁTICA";

		 }

		 if ($_GET["area"] == "tierra2") {

		 	$area = "C.O. - CIENCIAS DE LA TIERRA II";

		 }


	


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

		<tr>

			<td style="width: 780px"><img src="images/header.png"></td>

			<td style="background-color:white; width:606px">

				<div style="font-size:14px; text-align: right; line-height:10px;">

					<br>	
					ESCUELA SECUNDARIA RIO NEGRO Nº 38					

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

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:780px">

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


	// TRAEMOS LA INFORMACION DE LOS CURSOS

		$itemCurso = "id";
		$valorCurso = $value["id_curso"];
		

		$respuestaCurso = ControladorCursos::ctrMostrarCursos($itemCurso, $valorCurso);

		$curso = $respuestaCurso["nombre"];
		$turno = $respuestaCurso["turno"];


	if ($_GET["area"] == "cientifica") {

			$area = "CIENTÍFICA Y TECNOLÓGICA";

			$saberes = $value["saberes_cientifica"];
			$aprecia = $value["aprecia_cientifica"];
			$asistencia = $value["asistencia_cientifica"];
			$observa = $value["observa_cientifica"];

		}

		if ($_GET["area"] == "sociales") {

			$area = "SOCIALES Y HUMANIDADES";

			$saberes = $value["saberes_sociales"];
			$aprecia = $value["aprecia_sociales"];
			$asistencia = $value["asistencia_sociales"];
			$observa = $value["observa_sociales"];

		}

		if ($_GET["area"] == "literatura") {

			$area = "LENGUA Y LITERATURA";

			$saberes = $value["saberes_lengua"];
			$aprecia = $value["aprecia_lengua"];
			$asistencia = $value["asistencia_lengua"];
			$observa = $value["observa_lengua"];

		}

		if ($_GET["area"] == "matematica") {

			$area = "MATEMÁTICA";

			$saberes = $value["saberes_matematica"];
			$aprecia = $value["aprecia_matematica"];
			$asistencia = $value["asistencia_matematica"];
			$observa = $value["observa_matematica"];

		}

		if ($_GET["area"] == "ingles") {

			$area = "SEGUNDAS LENGUAS";

			$saberes = $value["saberes_ingles"];
			$aprecia = $value["aprecia_ingles"];
			$asistencia = $value["asistencia_ingles"];
			$observa = $value["observa_ingles"];

		}

		if ($_GET["area"] == "edfisica") {

			$area = "EDUCACIÓN FÍSICA";

			$saberes = $value["saberes_fisica"];
			$aprecia = $value["aprecia_fisica"];
			$asistencia = $value["asistencia_fisica"];
			$observa = $value["observa_fisica"];

		}

		if ($_GET["area"] == "artistica") {

			$area = "LENGUAJES ARTÍSTICOS";

			$saberes = $value["saberes_artistica"];
			$aprecia = $value["aprecia_artistica"];
			$asistencia = $value["asistencia_artistica"];
			$observa = $value["observa_artistica"];

		}

		if ($_GET["area"] == "principio3") {

			$area = "C.O. - PRINCIPIO DE ECONOMÍA Y ADMINISTRACIÓN";

			$saberes = $value["saberes_principio3"];
			$aprecia = $value["aprecia_principio3"];
			$asistencia = $value["asistencia_principio3"];
			$observa = $value["observa_principio3"];

		}

		if ($_GET["area"] == "sistemas") {

			$area = "C.O. - TECNOLOGÍA DE LOS SISTEMAS INFORMÁTICOS";

			$saberes = $value["saberes_sistemas"];
			$aprecia = $value["aprecia_sistemas"];
			$asistencia = $value["asistencia_sistemas"];
			$observa = $value["observa_sistemas"];

		}

		if ($_GET["area"] == "economia") {

			$area = "C.O. - ECONOMÍA SOCIAL Y SOLIDARIA";

			$saberes = $value["saberes_economia"];
			$aprecia = $value["aprecia_economia"];
			$asistencia = $value["asistencia_economia"];
			$observa = $value["observa_economia"];

		}

		if ($_GET["area"] == "principio4") {

			$area = "C.O. - PRINCIPIO DE ECONOMÍA Y ADMINISTRACIÓN";

			$saberes = $value["saberes_principio4"];
			$aprecia = $value["aprecia_principio4"];
			$asistencia = $value["asistencia_principio4"];
			$observa = $value["observa_principio4"];

		}

		if ($_GET["area"] == "pymes4") {

			$area = "C.O. - GESTIÓN DE PYMES Y COOPERATIVAS";

			$saberes = $value["saberes_pymes4"];
			$aprecia = $value["aprecia_pymes4"];
			$asistencia = $value["asistencia_pymes4"];
			$observa = $value["observa_pymes4"];

		}

		if ($_GET["area"] == "pymes5") {

			$area = "C.O. - GESTIÓN DE PYMES Y COOPERATIVAS";

			$saberes = $value["saberes_pymes5"];
			$aprecia = $value["aprecia_pymes5"];
			$asistencia = $value["asistencia_pymes5"];
			$observa = $value["observa_pymes5"];

		}

		if ($_GET["area"] == "problematicas") {

			$area = "C.O. - PROBLEMÁTICAS ECONÓMICAS CONTEMPORÁNEAS";

			$saberes = $value["saberes_problematicas"];
			$aprecia = $value["aprecia_problematicas"];
			$asistencia = $value["asistencia_problematicas"];
			$observa = $value["observa_problematicas"];

		}

		if ($_GET["area"] == "taller") {

			$area = "C.O. - TALLER DE PRÁCTICAS COMUNITARIAS";

			$saberes = $value["saberes_taller"];
			$aprecia = $value["aprecia_taller"];
			$asistencia = $value["asistencia_taller"];
			$observa = $value["observa_taller"];

		}


		if ($_GET["area"] == "aplicaciones") {

			$area = "C.O. - APLICACIONES INFORMÁTICAS";

			$saberes = $value["saberes_aplicaciones"];
			$aprecia = $value["aprecia_aplicaciones"];
			$asistencia = $value["asistencia_aplicaciones"];
			$observa = $value["observa_aplicaciones"];

		}

		if ($_GET["area"] == "conectividad") {

			$area = "C.O. - TECNOLOGÍA DE LA CONECTIVIDAD, INVESTIGACIÓN Y DESARROLLO TECNOLÓGICO";

			$saberes = $value["saberes_conectividad"];
			$aprecia = $value["aprecia_conectividad"];
			$asistencia = $value["asistencia_conectividad"];
			$observa = $value["observa_conectividad"];

		}


		if ($_GET["area"] == "software") {

			$area = "C.O. - TECNOLOGÍA DEL SOFTWARE LIBRE";

			$saberes = $value["saberes_software"];
			$aprecia = $value["aprecia_software"];
			$asistencia = $value["asistencia_software"];
			$observa = $value["observa_software"];

		}

		if ($_GET["area"] == "proyecto") {

			$area = "C.O. - METODOLOGIA Y PROYECTO DE INVESTIGACION E INSERCION COMUNITARIA";

			$saberes = $value["saberes_proyecto"];
			$aprecia = $value["aprecia_proyecto"];
			$asistencia = $value["asistencia_proyecto"];
			$observa = $value["observa_proyecto"];

		}

		if ($_GET["area"] == "conocimiento") {

			$area = "C.O. - PROBLEMATICA DEL CONOCIMIENTO SOCIAL";

			$saberes = $value["saberes_conocimiento"];
			$aprecia = $value["aprecia_conocimiento"];
			$asistencia = $value["asistencia_conocimiento"];
			$observa = $value["observa_conocimiento"];

		}

		if ($_GET["area"] == "problematica") {

			$area = "C.O. - PROBLEMATICAS SOCIALES LATINOAMERICANAS Y ARGENTINAS";

			$saberes = $value["saberes_problematica"];
			$aprecia = $value["aprecia_problematica"];
			$asistencia = $value["asistencia_problematica"];
			$observa = $value["observa_problematica"];

		}

		if ($_GET["area"] == "seguridad") {

			$area = "C.O. - SEGURIDAD Y LEGISLACIÓN EN INFORMÁTICA";

			$saberes = $value["saberes_seguridad"];
			$aprecia = $value["aprecia_seguridad"];
			$asistencia = $value["asistencia_seguridad"];
			$observa = $value["observa_seguridad"];

		}

		if ($_GET["area"] == "tecnologico") {

			$area = "C.O. - PROYECTO TECNOLÓGICO EN INFORMÁTICA";

			$saberes = $value["saberes_tecnologico"];
			$aprecia = $value["aprecia_tecnologico"];
			$asistencia = $value["asistencia_tecnologico"];
			$observa = $value["observa_tecnologico"];

		}

		if ($_GET["area"] == "tierra2") {

			$area = "C.O. - CIENCIAS DE LA TIERRA II";

			$saberes = $value["saberes_tierra2"];
			$aprecia = $value["aprecia_tierra2"];
			$asistencia = $value["asistencia_tierra2"];
			$observa = $value["observa_tierra2"];

		}








//----------------------------------------------------------------------------------

$bloque3 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		

		<tr>

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:260px">

				<br>

				Estudiante


			</td>

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:260px">

				<br>

				Agrupamiento


			</td>		

			<td style="text-align: center; border: 1px solid #666; background-color:#C2BDBC;; width:260px">

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

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:260px">

				<br>

				$value[nombre]


			</td>



			<td style="text-align: center; border: 1px solid #666; background-color:white; width:260px">

				<br>

				$curso


			</td>

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:260px">

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

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:180px">

				<br>

				AREAS DEL CONOCIMIENTO


			</td>



			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:200px">

				<br>

				SABERES

			</td>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:165px">

				<br>

				APRECIACION CUALITATIVA


			</td>

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:80px">

				<br>

				ASISTENCIA

			</td>	

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:#C2BDBC; width:156px">

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

				$area


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:200px">

				<br>

				$saberes

			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:165px">

				<br>

				$aprecia


			</td>

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:80px">

				<br>

				$asistencia

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:156px">

				<br>

				$observa

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

$pdf->Output('informe_'.$area.'.pdf');


}
}

$reporte = new imprimirReporte();
$reporte -> id = $_GET["idCurso"];
$reporte -> informe = $_GET["informe"];
$reporte -> area = $_GET["area"];
$reporte -> traerImpresionReporte();


?>	