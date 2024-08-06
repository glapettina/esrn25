<?php

	class ControladorInformes{


		/*=============================================
		MOSTRAR INFORMES CICLO BÁSICO            
		=============================================*/		

		static public function ctrMostrarInformes($item, $valor, $tabla, $periodo, $verifica){
			

			$respuesta = ModeloInformes::mdlMostrarInformes($item, $valor, $tabla, $periodo, $verifica);

			//var_dump($respuesta);

			return $respuesta;		
		

		}





		/*=============================================
		MOSTRAR INFORMES ORIENTACIÓN             
		=============================================*/		

		static public function ctrMostrarInformesOrientacion($item, $valor1, $valor2, $tabla, $periodo, $verifica){
			

			$respuesta = ModeloInformes::mdlMostrarInformesOrientacion($item, $valor1, $valor2, $tabla, $periodo, $verifica);

			return $respuesta;

			//var_dump($respuesta);

		

		}


		/*=============================================
		COPIAR SABERES CIENTIFICA           
		=============================================*/	

		static public function ctrCopiarSaberesCientifica($tabla, $curso, $ncurso, $periodo){

				if (isset($_POST["copiaSaberesCientifica"])) {
								

					$datos = array("saberes_cientifica" => $_POST["copiaSaberesCientifica"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesCientifica($tabla, $curso, $datos, $periodo);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES SOCIALES           
		=============================================*/	

		static public function ctrCopiarSaberesSociales($tabla, $curso, $ncurso, $periodo){

				if (isset($_POST["copiaSaberesSociales"])) {
								

					$datos = array("saberes_sociales" => $_POST["copiaSaberesSociales"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesSociales($tabla, $curso, $datos, $periodo);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES LENGUA           
		=============================================*/	

		static public function ctrCopiarSaberesLengua($tabla, $curso, $ncurso, $periodo){

				if (isset($_POST["copiaSaberesLengua"])) {
								

					$datos = array("saberes_lengua" => $_POST["copiaSaberesLengua"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesLengua($tabla, $curso, $datos, $periodo);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES MATEMATICA           
		=============================================*/	

		static public function ctrCopiarSaberesMatematica($tabla, $curso, $ncurso, $periodo){

				if (isset($_POST["copiaSaberesMatematica"])) {
								

					$datos = array("saberes_matematica" => $_POST["copiaSaberesMatematica"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesMatematica($tabla, $curso, $datos, $periodo);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES INGLES           
		=============================================*/	

		static public function ctrCopiarSaberesIngles($tabla, $curso, $ncurso, $periodo){

				if (isset($_POST["copiaSaberesIngles"])) {
								

					$datos = array("saberes_ingles" => $_POST["copiaSaberesIngles"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesIngles($tabla, $curso, $datos, $periodo);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES EDUCACIÓN FÍSICA           
		=============================================*/	

		static public function ctrCopiarSaberesFisica($tabla, $curso, $ncurso, $periodo){

				if (isset($_POST["copiaSaberesFisica"])) {
								

					$datos = array("saberes_fisica" => $_POST["copiaSaberesFisica"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesFisica($tabla, $curso, $datos, $periodo);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		COPIAR SABERES EDUCACIÓN ARTÍSTICA           
		=============================================*/	

		static public function ctrCopiarSaberesArtistica($tabla, $curso, $ncurso, $periodo){

				if (isset($_POST["copiaSaberesArtistica"])) {
								

					$datos = array("saberes_artistica" => $_POST["copiaSaberesArtistica"], "id_curso" => $ncurso);


					$respuesta = ModeloInformes::mdlCopiarSaberesArtistica($tabla, $curso, $datos, $periodo);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "Los saberes fueron copiados correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		COPIAR SABERES EVE           
		=============================================*/	

		static public function ctrCopiarSaberesEve($tabla, $curso, $ncurso, $periodo){

			if (isset($_POST["copiaSaberesEve"])) {
							

				$datos = array("saberes_eve" => $_POST["copiaSaberesEve"], "id_curso" => $ncurso);


				$respuesta = ModeloInformes::mdlCopiarSaberesEve($tabla, $curso, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script>

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES PRINCIPIO 3          
		=============================================*/	

		static public function ctrCopiarSaberesPrincipio3($tabla, $curso, $ncurso1, $ncurso2, $periodo){

			if (isset($_POST["copiaSaberesPrincipio3"])) {
							

				$datos = array("saberes_principio3" => $_POST["copiaSaberesPrincipio3"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2);


				$respuesta = ModeloInformes::mdlCopiarSaberesPrincipio3($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SISTEMAS (INFORMÁTICA)          
		=============================================*/	

		static public function ctrCopiarSaberesSistemas($tabla, $curso, $ncurso1, $ncurso2, $periodo){

			if (isset($_POST["copiaSaberesSistemas"])) {
							

				$datos = array("saberes_sistemas" => $_POST["copiaSaberesSistemas"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2);


				$respuesta = ModeloInformes::mdlCopiarSaberesSistemas($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES ECONOMIA          
		=============================================*/	

		static public function ctrCopiarSaberesEconomia($tabla, $curso, $ncurso1, $ncurso2, $periodo){

			if (isset($_POST["copiaSaberesEconomia"])) {
							

				$datos = array("saberes_economia" => $_POST["copiaSaberesEconomia"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2);


				$respuesta = ModeloInformes::mdlCopiarSaberesEconomia($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES PRINCIPIO 4 (ECONOMIA)          
		=============================================*/	

		static public function ctrCopiarSaberesPrincipio4($tabla, $curso, $ncurso1, $ncurso2, $periodo){

			if (isset($_POST["copiaSaberesPrincipio"])) {
							

				$datos = array("saberes_principio4" => $_POST["copiaSaberesPrincipio"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2);


				$respuesta = ModeloInformes::mdlCopiarSaberesPrincipio4($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES PYMES 4 (ECONOMIA)          
		=============================================*/	

		static public function ctrCopiarSaberesPymes4($tabla, $curso, $ncurso1, $ncurso2, $periodo){

			if (isset($_POST["copiaSaberesPymes"])) {
							

				$datos = array("saberes_pymes4" => $_POST["copiaSaberesPymes"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2);


				$respuesta = ModeloInformes::mdlCopiarSaberesPymes4($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES PYMES 5 (ECONOMIA)          
		=============================================*/	

		static public function ctrCopiarSaberesPymes5($tabla, $curso, $ncurso1, $ncurso2, $periodo){

			if (isset($_POST["copiaSaberesPymes"])) {
							

				$datos = array("saberes_pymes5" => $_POST["copiaSaberesPymes"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2);


				$respuesta = ModeloInformes::mdlCopiarSaberesPymes5($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES PROBLEMATICAS (ECONOMIA)          
		=============================================*/	

		static public function ctrCopiarSaberesProblematicas($tabla, $curso, $ncurso1, $ncurso2, $periodo){

			if (isset($_POST["copiaSaberesProblematicas"])) {
							

				$datos = array("saberes_problematicas" => $_POST["copiaSaberesProblematicas"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2);


				$respuesta = ModeloInformes::mdlCopiarSaberesProblematicas($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES TALLER (ECONOMIA)          
		=============================================*/	

		static public function ctrCopiarSaberesTaller($tabla, $curso, $ncurso1, $ncurso2, $periodo){

			if (isset($_POST["copiaSaberesTaller"])) {
							

				$datos = array("saberes_taller" => $_POST["copiaSaberesTaller"], "id_curso1" => $ncurso1, "id_curso2" => $ncurso2);


				$respuesta = ModeloInformes::mdlCopiarSaberesTaller($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES APLICACIONES (INFORMATICA)          
		=============================================*/	

		static public function ctrCopiarSaberesAplicaciones($tabla, $curso, $ncurso1, $periodo){

			if (isset($_POST["copiaSaberesAplicaciones"])) {
							

				$datos = array("saberes_aplicaciones" => $_POST["copiaSaberesAplicaciones"], "id_curso1" => $ncurso1);


				$respuesta = ModeloInformes::mdlCopiarSaberesAplicaciones($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES CONECTIVIDAD (INFORMATICA)          
		=============================================*/	

		static public function ctrCopiarSaberesConectividad($tabla, $curso, $ncurso1, $periodo){

			if (isset($_POST["copiaSaberesConectividad"])) {
							

				$datos = array("saberes_conectividad" => $_POST["copiaSaberesConectividad"], "id_curso1" => $ncurso1);


				$respuesta = ModeloInformes::mdlCopiarSaberesConectividad($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}




		/*=============================================
		COPIAR SABERES SOFTWARE (INFORMATICA)          
		=============================================*/	

		static public function ctrCopiarSaberesSoftware($tabla, $curso, $ncurso1, $periodo){

			if (isset($_POST["copiaSaberesSoftware"])) {
							

				$datos = array("saberes_software" => $_POST["copiaSaberesSoftware"], "id_curso1" => $ncurso1);


				$respuesta = ModeloInformes::mdlCopiarSaberesSoftware($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES SEGURIDAD (INFORMATICA)          
		=============================================*/	

		static public function ctrCopiarSaberesSeguridad($tabla, $curso, $ncurso1, $periodo){

			if (isset($_POST["copiaSaberesSeguridad"])) {
							

				$datos = array("saberes_seguridad" => $_POST["copiaSaberesSeguridad"], "id_curso1" => $ncurso1);


				$respuesta = ModeloInformes::mdlCopiarSaberesSeguridad($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}

		/*=============================================
		COPIAR SABERES TECNOLÓGICO (INFORMATICA)          
		=============================================*/	

		static public function ctrCopiarSaberesTecnologico($tabla, $curso, $ncurso1, $periodo){

			if (isset($_POST["copiaSaberesTecnologico"])) {
							

				$datos = array("saberes_tecnologico" => $_POST["copiaSaberesTecnologico"], "id_curso1" => $ncurso1);


				$respuesta = ModeloInformes::mdlCopiarSaberesTecnologico($tabla, $datos, $periodo);


				if ($respuesta == "ok") {
					
					echo '<script> 

					swal({
						type: "success",
						title: "Los saberes fueron copiados correctamente",
						showConfirmButton: true,
						confirmButtonText: "Cerrar",
						closeOnConfirm: false
						}).then((result)=>{
							if(result.value){

								window.location = "'.$curso.'";										
							}
						})

				</script>';

				}

		}
	}


		/*=============================================
		EDITAR INFORME CIENTIFICA
		=============================================*/

		static public function ctrEditarInformeCientifica($tabla,$curso){

			if (isset($_POST["saberesCientifica"])) {
								

					$datos = array("saberes_cientifica" => $_POST["saberesCientifica"], "aprecia_cientifica" => $_POST["apreciaCientifica"], "asistencia_cientifica" => $_POST["asistenciaCientifica"], "observa_cientifica" => $_POST["observaCientifica"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeCientifica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME SOCIALES
		=============================================*/

		static public function ctrEditarInformeSociales($tabla,$curso){

			if (isset($_POST["saberesSociales"])) {
								

					$datos = array("saberes_sociales" => $_POST["saberesSociales"], "aprecia_sociales" => $_POST["apreciaSociales"], "asistencia_sociales" => $_POST["asistenciaSociales"], "observa_sociales" => $_POST["observaSociales"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeSociales($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME LENGUA
		=============================================*/

		static public function ctrEditarInformeLengua($tabla,$curso){

			if (isset($_POST["saberesLengua"])) {
								

					$datos = array("saberes_lengua" => $_POST["saberesLengua"], "aprecia_lengua" => $_POST["apreciaLengua"], "asistencia_lengua" => $_POST["asistenciaLengua"], "observa_lengua" => $_POST["observaLengua"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeLengua($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME MATEMATICA
		=============================================*/

		static public function ctrEditarInformeMatematica($tabla,$curso){

			if (isset($_POST["saberesMatematica"])) {
								

					$datos = array("saberes_matematica" => $_POST["saberesMatematica"], "aprecia_matematica" => $_POST["apreciaMatematica"], "asistencia_matematica" => $_POST["asistenciaMatematica"], "observa_matematica" => $_POST["observaMatematica"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeMatematica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME INGLES
		=============================================*/

		static public function ctrEditarInformeIngles($tabla,$curso){

			if (isset($_POST["saberesIngles"])) {
								

					$datos = array("saberes_ingles" => $_POST["saberesIngles"], "aprecia_ingles" => $_POST["apreciaIngles"], "asistencia_ingles" => $_POST["asistenciaIngles"], "observa_ingles" => $_POST["observaIngles"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeIngles($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME EDUCACIÓN FÍSICA
		=============================================*/

		static public function ctrEditarInformeFisica($tabla,$curso){

			if (isset($_POST["saberesFisica"])) {
								

					$datos = array("saberes_fisica" => $_POST["saberesFisica"], "aprecia_fisica" => $_POST["apreciaFisica"], "asistencia_fisica" => $_POST["asistenciaFisica"], "observa_fisica" => $_POST["observaFisica"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeFisica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME EDUCACIÓN ARTÍSTICA
		=============================================*/

		static public function ctrEditarInformeArtistica($tabla,$curso){

			if (isset($_POST["saberesArtistica"])) {
								

					$datos = array("saberes_artistica" => $_POST["saberesArtistica"], "aprecia_artistica" => $_POST["apreciaArtistica"], "asistencia_artistica" => $_POST["asistenciaArtistica"], "observa_artistica" => $_POST["observaArtistica"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeArtistica($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		EDITAR INFORME EVE
		=============================================*/

		static public function ctrEditarInformeEve($tabla,$curso){

			if (isset($_POST["saberesEve"])) {
								

					$datos = array("saberes_eve" => $_POST["saberesEve"], "aprecia_eve" => $_POST["apreciaEve"], "asistencia_eve" => $_POST["asistenciaEve"], "observa_eve" => $_POST["observaEve"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeEve($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		EDITAR INFORME PRINCIPIO 3 (ECONOMIA)
		=============================================*/

		static public function ctrEditarInformePrincipio3($tabla,$curso){

			if (isset($_POST["saberesPrincipio"])) {
								

					$datos = array("saberes_principio3" => $_POST["saberesPrincipio"], "aprecia_principio3" => $_POST["apreciaPrincipio"], "asistencia_principio3" => $_POST["asistenciaPrincipio"], "observa_principio3" => $_POST["observaPrincipio"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformePrincipio3($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		EDITAR INFORME SISTEMAS 3 (INFORMÁTICA)
		=============================================*/

		static public function ctrEditarInformeSistemas($tabla,$curso){

			if (isset($_POST["saberesSistemas"])) {
								

					$datos = array("saberes_sistemas" => $_POST["saberesSistemas"], "aprecia_sistemas" => $_POST["apreciaSistemas"], "asistencia_sistemas" => $_POST["asistenciaSistemas"], "observa_sistemas" => $_POST["observaSistemas"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeSistemas($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME ECONOMIA (ECONOMIA)
		=============================================*/

		static public function ctrEditarInformeEconomia($tabla,$curso){

			if (isset($_POST["saberesEconomia"])) {
								

					$datos = array("saberes_economia" => $_POST["saberesEconomia"], "aprecia_economia" => $_POST["apreciaEconomia"], "asistencia_economia" => $_POST["asistenciaEconomia"], "observa_economia" => $_POST["observaEconomia"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeEconomia($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}			


		/*=============================================
		EDITAR INFORME PRINCIPIO 4 (ECONOMIA)
		=============================================*/

		static public function ctrEditarInformePrincipio4($tabla,$curso){

			if (isset($_POST["saberesPrincipio"])) {
								

					$datos = array("saberes_principio4" => $_POST["saberesPrincipio"], "aprecia_principio4" => $_POST["apreciaPrincipio"], "asistencia_principio4" => $_POST["asistenciaPrincipio"], "observa_principio4" => $_POST["observaPrincipio"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformePrincipio4($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}		

		/*=============================================
		EDITAR INFORME PYMES 4 (ECONOMIA)
		=============================================*/

		static public function ctrEditarInformePymes4($tabla,$curso){

			if (isset($_POST["saberesPymes"])) {
								

					$datos = array("saberes_pymes4" => $_POST["saberesPymes"], "aprecia_pymes4" => $_POST["apreciaPymes"], "asistencia_pymes4" => $_POST["asistenciaPymes"], "observa_pymes4" => $_POST["observaPymes"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformePymes4($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME PYMES 5 (ECONOMIA)
		=============================================*/

		static public function ctrEditarInformePymes5($tabla,$curso){

			if (isset($_POST["saberesPymes"])) {
								

					$datos = array("saberes_pymes5" => $_POST["saberesPymes"], "aprecia_pymes5" => $_POST["apreciaPymes"], "asistencia_pymes5" => $_POST["asistenciaPymes"], "observa_pymes5" => $_POST["observaPymes"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformePymes5($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		EDITAR INFORME PROBLEMATICAS (ECONOMIA)
		=============================================*/

		static public function ctrEditarInformeProblematicas($tabla,$curso){

			if (isset($_POST["saberesProblematicas"])) {
								

					$datos = array("saberes_problematicas" => $_POST["saberesProblematicas"], "aprecia_problematicas" => $_POST["apreciaProblematicas"], "asistencia_problematicas" => $_POST["asistenciaProblematicas"], "observa_problematicas" => $_POST["observaProblematicas"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeProblematicas($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		EDITAR INFORME TALLER (ECONOMIA)
		=============================================*/

		static public function ctrEditarInformeTaller($tabla,$curso){

			if (isset($_POST["saberesTaller"])) {
								

					$datos = array("saberes_taller" => $_POST["saberesTaller"], "aprecia_taller" => $_POST["apreciaTaller"], "asistencia_taller" => $_POST["asistenciaTaller"], "observa_taller" => $_POST["observaTaller"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeTaller($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		EDITAR INFORME APLICACIONES (INFORMÁTICA)
		=============================================*/

		static public function ctrEditarInformeAplicaciones($tabla,$curso){

			if (isset($_POST["saberesAplicaciones"])) {
								

					$datos = array("saberes_aplicaciones" => $_POST["saberesAplicaciones"], "aprecia_aplicaciones" => $_POST["apreciaAplicaciones"], "asistencia_aplicaciones" => $_POST["asistenciaAplicaciones"], "observa_aplicaciones" => $_POST["observaAplicaciones"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeAplicaciones($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}	

		/*=============================================
		EDITAR INFORME CONECTIVIDAD (INFORMÁTICA)
		=============================================*/

		static public function ctrEditarInformeConectividad($tabla,$curso){

			if (isset($_POST["saberesConectividad"])) {
								

					$datos = array("saberes_conectividad" => $_POST["saberesConectividad"], "aprecia_conectividad" => $_POST["apreciaConectividad"], "asistencia_conectividad" => $_POST["asistenciaConectividad"], "observa_conectividad" => $_POST["observaConectividad"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeConectividad($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}


		/*=============================================
		EDITAR INFORME SOFTWARE (INFORMÁTICA)
		=============================================*/

		static public function ctrEditarInformeSoftware($tabla,$curso){

			if (isset($_POST["saberesSoftware"])) {
								

					$datos = array("saberes_software" => $_POST["saberesSoftware"], "aprecia_software" => $_POST["apreciaSoftware"], "asistencia_software" => $_POST["asistenciaSoftware"], "observa_software" => $_POST["observaSoftware"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeSoftware($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		EDITAR INFORME SEGURIDAD (INFORMÁTICA)
		=============================================*/

		static public function ctrEditarInformeSeguridad($tabla,$curso){

			if (isset($_POST["saberesSeguridad"])) {
								

					$datos = array("saberes_seguridad" => $_POST["saberesSeguridad"], "aprecia_seguridad" => $_POST["apreciaSeguridad"], "asistencia_seguridad" => $_POST["asistenciaSeguridad"], "observa_seguridad" => $_POST["observaSeguridad"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeSeguridad($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}

		/*=============================================
		EDITAR INFORME TECNOLÓGICO (INFORMÁTICA)
		=============================================*/

		static public function ctrEditarInformeTecnologico($tabla,$curso){

			if (isset($_POST["saberesTecnologico"])) {
								

					$datos = array("saberes_tecnologico" => $_POST["saberesTecnologico"], "aprecia_tecnologico" => $_POST["apreciaTecnologico"], "asistencia_tecnologico" => $_POST["asistenciaTecnologico"], "observa_tecnologico" => $_POST["observaTecnologico"], "id_usuario" => $_SESSION["id"], "id" => $_POST["idAlumno"]);


					$respuesta = ModeloInformes::mdlEditarInformeTecnologico($tabla, $curso, $datos);


					if ($respuesta == "ok") {
						
						echo '<script>

						swal({
							type: "success",
							title: "El informe ha sido modificado correctamente",
							showConfirmButton: true,
							confirmButtonText: "Cerrar",
							closeOnConfirm: false
							}).then((result)=>{
								if(result.value){

									window.location = "'.$curso.'";										
								}
							})

					</script>';

					}

			}
		}
		
	}

 