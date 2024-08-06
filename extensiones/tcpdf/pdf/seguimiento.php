<?php

require_once "../../../controladores/informes.controlador.php";
require_once "../../../modelos/informes.modelo.php";

require_once "../../../controladores/cursos.controlador.php";
require_once "../../../modelos/cursos.modelo.php";


class imprimirReporte{


	public $id;

	public function traerImpresionReporte(){

		// TRAEMOS LA INFORMACION DE LOS INFORMES

		
		$itemInforme = "id";
		$valorInforme = $_GET["id"];
		$tablaInforme = "seguimiento";
		$periodo = $_GET["periodo"];
		$verifica = false;

		$per = explode('/', $periodo);

		$per2 = $per[1];

		if ($per[0] == '01') {
			
			$titulo = 'INFORME FINAL DE SEGUIMIENTO DEL BLOQUE ACADÉMICO ' .$per2;
		}else{

			$titulo = 'INFORME FINAL DE SEGUIMIENTO DEL BLOQUE ACADÉMICO ' .$per2;
		}
		

		$respuestaInforme = ControladorInformes::ctrMostrarInformes($itemInforme, $valorInforme, $tablaInforme, $periodo, $verifica);

		$nombre = $respuestaInforme["nombre"];
		$idCurso = $respuestaInforme["id_curso"];
		


		// TRAEMOS LA INFORMACION DE LOS CURSOS

		$itemCurso = "id";
		$valorCurso = $respuestaInforme["id_curso"];
		$tablaCurso = "segundo";

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
$pdf->SetMargins(8, 8, 3);
$pdf->SetHeaderMargin(10);
$pdf->SetFooterMargin(8);

$pdf->startPageGroup();

$pdf->AddPage();


//--------------------------------------------------------------------------------

$bloque1 = <<<EOF

	<table>

		<table>

		<tr>

			<td style="width: 940px"><img src="images/header2.png"></td>
			
			
		</tr>
		

	</table>
		

	</table>

EOF;


$pdf->writeHTML($bloque1, false, false, false, false, '');

//----------------------------------------------------------------------------------

$bloque2 = <<<EOF

	<table style="font-size:10px; padding:5px 10px;">

		

		<tr>

			<td style="text-align: center; border: 1px solid #666; background-color:white; width:940px">

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

				$nombre


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

				CIENTIFICA Y TECNOLOGICA


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_acreditacion_cientifica]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_evaluacion_cientifica]


			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[indicador_evaluacion_cientifica]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:110px">

				<br>

				$respuestaInforme[apreciacion_cualitativa_cientifica]

			</td>	

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:65px">

				<br>

				$respuestaInforme[asistencia_cientifica]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:165px">

			<br>

			$respuestaInforme[observaciones_cientifica]

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

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:120px">

				<br>

				CIENCIAS SOCIALES Y HUMANIDADES


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_acreditacion_sociales]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_evaluacion_sociales]


			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[indicador_evaluacion_sociales]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:110px">

				<br>

				$respuestaInforme[apreciacion_cualitativa_sociales]

			</td>	

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:65px">

				<br>

				$respuestaInforme[asistencia_sociales]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:165px">

			<br>

			$respuestaInforme[observaciones_sociales]

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

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:120px">

				<br>

				LENGUA Y LITERATURA


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_acreditacion_lengua]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_evaluacion_lengua]


			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[indicador_evaluacion_lengua]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:110px">

				<br>

				$respuestaInforme[apreciacion_cualitativa_lengua]

			</td>	

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:65px">

				<br>

				$respuestaInforme[asistencia_lengua]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:165px">

			<br>

			$respuestaInforme[observaciones_lengua]

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

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:120px">

				<br>

				SEGUNDAS LENGUAS


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_acreditacion_ingles]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_evaluacion_ingles]


			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[indicador_evaluacion_ingles]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:110px">

				<br>

				$respuestaInforme[apreciacion_cualitativa_ingles]

			</td>	

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:65px">

				<br>

				$respuestaInforme[asistencia_ingles]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:165px">

			<br>

			$respuestaInforme[observaciones_ingles]

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

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:120px">

				<br>

				MATEMATICA


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_acreditacion_matematica]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_evaluacion_matematica]


			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[indicador_evaluacion_matematica]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:110px">

				<br>

				$respuestaInforme[apreciacion_cualitativa_matematica]

			</td>	

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:65px">

				<br>

				$respuestaInforme[asistencia_matematica]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:165px">

			<br>

			$respuestaInforme[observaciones_matematica]

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

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:120px">

				<br>

				EDUCACION FISICA


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_acreditacion_fisica]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_evaluacion_fisica]


			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[indicador_evaluacion_fisica]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:110px">

				<br>

				$respuestaInforme[apreciacion_cualitativa_fisica]

			</td>	

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:65px">

				<br>

				$respuestaInforme[asistencia_fisica]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:165px">

			<br>

			$respuestaInforme[observaciones_fisica]

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

			<td style="font-size: 7px; text-align: center; border: 1px solid #666; background-color:white; width:120px">

				<br>

				EDUCACION ARTISTICA


			</td>



			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_acreditacion_artistica]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[criterio_evaluacion_artistica]


			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:160px">

				<br>

				$respuestaInforme[indicador_evaluacion_artistica]

			</td>	

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:110px">

				<br>

				$respuestaInforme[apreciacion_cualitativa_artistica]

			</td>	

			<td style="font-size: 8px; text-align: center; border: 1px solid #666; background-color:white; width:65px">

				<br>

				$respuestaInforme[asistencia_artistica]

			</td>

			<td style="font-size: 8px; text-align: justify; border: 1px solid #666; background-color:white; width:165px">

			<br>

			$respuestaInforme[observaciones_artistica]

		</td>	



		</tr>

	</table>

EOF;


$pdf->writeHTML($bloque12, false, false, false, false, '');

//--------------------------------------------------------



//SALIDA DEL ARCHIVO

$pdf->Output('informe_'.$nombre.'.pdf', 'D');


}
}

$reporte = new imprimirReporte();
$reporte -> id = $_GET["id"];
$reporte -> informe = $_GET["informe"];
//$reporte -> area = $_GET["area"];
$reporte -> traerImpresionReporte();


?>	