<?php


class ControladorAsistencia{

	/*=============================================
	REGISTRO DE ASISTENCIA            
	=============================================*/
	
	static public function ctrCrearAsitencia(){

		if (isset($_POST["datepicker"])) {
			
				
				$tabla = "movilidad";

				$fecha = $_POST["datepicker"];
           		$date = str_replace('/', '-', $fecha);
          		$fecha_final = date("Y-m-d", strtotime($date));

				$datos = array("id_usuario" => $_SESSION["id"],
								"fecha" => $fecha_final, 
								"turno" => $_POST["nuevoTurno"]);

				$respuesta = ModeloAsistencia::mdlIngresarAsistencia($tabla, $datos);


				if ($respuesta == "ok") {
					
					echo '<script>

					swal({

						type: "success",
						title: "La asistencia ha sido cargada correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false							

					}).then((result)=>{

						if(result.value){

							window.location = "asistencia";
							
							}

						});

				</script>';

				

			}else{

				echo '<script>

					swal({

						type: "error",
						title: "La asistencia no puede ir vacío",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false							

					}).then((result)=>{

						if(result.value){

							window.location = "asistencia";
							
							}

						})

				</script>';

			}
		}

	}


		/*=============================================
        MOSTRAR ASISTENCIA            
		=============================================*/

		static public function ctrMostrarAsistencia($item, $valor){

			$tabla = "movilidad";

			$respuesta = ModeloAsistencia::mdlMostrarAsistencia($tabla, $item, $valor);

			return $respuesta;
		}



		/*=============================================
        LISTAR ASISTENCIA X DOCENTE         
		=============================================*/

		static public function ctrAsistenciaIndividual($itemMovi, $valorMovi, $desde, $hasta){

			$tabla = "movilidad";


			$respuesta = ModeloAsistencia::mdlAsistenciaIndividual($tabla, $itemMovi, $valorMovi, $desde, $hasta);



			return $respuesta;

		}

		/*=============================================
        LISTAR RESUMEN ASISTENCIA         
		=============================================*/

		static public function ctrResumenAsistencia($itemMovi, $valorMovi, $desde, $hasta){

			$tabla = "movilidad";


			$respuesta = ModeloAsistencia::mdlResumenAsistencia($tabla, $itemMovi, $valorMovi, $desde, $hasta);


			return $respuesta;

		}


		/*=============================================
        CUENTA ASISTENCIA X DOCENTE         
		=============================================*/

		static public function ctrCuentaAsistencia($itemMovi, $valorMovi, $desde, $hasta){

			$tabla = "movilidad";


			$respuesta = ModeloAsistencia::mdlCuentaAsistencia($tabla, $itemMovi, $valorMovi, $desde, $hasta);


			return $respuesta;

		}




		/*=============================================
		BORRAR ASISTENCIA
		=============================================*/

		static public function ctrBorrarAsistencia(){

			if (isset($_GET["idAsistencia"])) {
				
				$tabla = "movilidad";
				$datos = $_GET["idAsistencia"];

				$respuesta = ModeloAsistencia::mdlBorrarAsistencia($tabla, $datos);

				if ($respuesta == "ok") {
					
					echo '<script>

						swal({
							type: "success",
							title: "La asistencia ha sido borrada correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result) => {

								if(result.value){

									window.location = "asistencia";
								}
							})

					</script>';
				}
			}
		}

}