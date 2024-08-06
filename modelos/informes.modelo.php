<?php

	require_once "conexion.php";

	class ModeloInformes{


	
		/*=============================================
		MOSTRAR INFORMES CICLO BÁSICO
		=============================================*/

		static public function mdlMostrarInformes($item, $valor, $tabla, $periodo, $verifica){
			

			if ($item != null && $verifica == false) {
				
				
				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE periodo = '$periodo' AND $item = :$item");

				$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

				$stmt -> execute();

				return $stmt -> fetch();

			}else if($item != null && $verifica == true){
				

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE periodo = '$periodo' AND $item = :$item AND estado = 1 ORDER BY nombre");

				$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

				$stmt -> execute();

				return $stmt -> fetchAll();


			}else{
				

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY nombre");

				$stmt -> execute();

				return $stmt -> fetchAll();

			}

			$stmt -> close();

			$stmt = null;
		}





		/*=============================================
		MOSTRAR INFORMES ORIENTACIÓN
		=============================================*/

		static public function mdlMostrarInformesOrientacion($item, $valor1, $valor2, $tabla, $periodo, $verifica){
			

			if ($item != null && $verifica == false) {
				
				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE periodo = '$periodo' AND $item = :$item");

				$stmt -> bindParam(":".$item, $valor, PDO::PARAM_STR);

				$stmt -> execute();

				return $stmt -> fetch();

			}else if($item != null && $verifica == true){


				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item IN ($valor1, $valor2) AND estado = 1 AND periodo = '$periodo'");

				$stmt -> bindParam(":".$item, $valor1, PDO::PARAM_STR);
				$stmt -> bindParam(":".$item, $valor2, PDO::PARAM_STR);


				$stmt -> execute();

				return $stmt -> fetchAll();


			}else{
				

				$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE periodo = '$periodo'");

				$stmt -> execute();

				return $stmt -> fetchAll();

			}

			$stmt -> close();

			$stmt = null;
		}


		/*=============================================
		COPIAR SABERES CIENTIFICA            
		=============================================*/

		static public function mdlCopiarSaberesCientifica($tabla, $curso, $datos, $periodo){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_cientifica = :saberes_cientifica WHERE periodo = '$periodo' AND id_curso = :id_curso");

			$stmt->bindParam(":saberes_cientifica", $datos["saberes_cientifica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES SOCIALES            
		=============================================*/

		static public function mdlCopiarSaberesSociales($tabla, $curso, $datos, $periodo){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_sociales = :saberes_sociales WHERE periodo = '$periodo' AND id_curso = :id_curso");

			$stmt->bindParam(":saberes_sociales", $datos["saberes_sociales"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES LENGUA            
		=============================================*/

		static public function mdlCopiarSaberesLengua($tabla, $curso, $datos, $periodo){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_lengua = :saberes_lengua WHERE periodo = '$periodo' AND  id_curso = :id_curso");

			$stmt->bindParam(":saberes_lengua", $datos["saberes_lengua"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES MATEMATICA            
		=============================================*/

		static public function mdlCopiarSaberesMatematica($tabla, $curso, $datos, $periodo){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_matematica = :saberes_matematica WHERE periodo = '$periodo' AND id_curso = :id_curso");

			$stmt->bindParam(":saberes_matematica", $datos["saberes_matematica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES INGLES            
		=============================================*/

		static public function mdlCopiarSaberesIngles($tabla, $curso, $datos, $periodo){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_ingles = :saberes_ingles WHERE periodo = '$periodo' AND id_curso = :id_curso");

			$stmt->bindParam(":saberes_ingles", $datos["saberes_ingles"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES EDUCACIÓN FÍSICA            
		=============================================*/

		static public function mdlCopiarSaberesFisica($tabla, $curso, $datos, $periodo){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_fisica = :saberes_fisica WHERE periodo = '$periodo' AND id_curso = :id_curso");

			$stmt->bindParam(":saberes_fisica", $datos["saberes_fisica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES EDUCACIÓN ARTÍSTICA            
		=============================================*/

		static public function mdlCopiarSaberesArtistica($tabla, $curso, $datos, $periodo){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_artistica = :saberes_artistica WHERE periodo = '$periodo' AND id_curso = :id_curso");

			$stmt->bindParam(":saberes_artistica", $datos["saberes_artistica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES EVE           
		=============================================*/

		static public function mdlCopiarSaberesEve($tabla, $curso, $datos, $periodo){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_eve = :saberes_eve WHERE periodo = '$periodo' AND id_curso = :id_curso");

			$stmt->bindParam(":saberes_eve", $datos["saberes_eve"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso", $datos["id_curso"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}	

		/*=============================================
		COPIAR SABERES PRINCIPIO 3 (ECONOMIA)           
		=============================================*/

		static public function mdlCopiarSaberesPrincipio3($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_principio3 = :saberes_principio3 WHERE periodo = '$periodo' AND id_curso >= :id_curso1 AND id_curso <= :id_curso2");

			$stmt->bindParam(":saberes_principio3", $datos["saberes_principio3"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES SISTEMAS (INFORMÁTICA)           
		=============================================*/

		static public function mdlCopiarSaberesSistemas($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_sistemas = :saberes_sistemas WHERE periodo = '$periodo' AND id_curso >= :id_curso1 AND id_curso <= :id_curso2");

			$stmt->bindParam(":saberes_sistemas", $datos["saberes_sistemas"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES ECONOMIA (ECONOMIA)           
		=============================================*/

		static public function mdlCopiarSaberesEconomia($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_economia = :saberes_economia WHERE periodo = '$periodo' AND id_curso >= :id_curso1 AND id_curso <= :id_curso2");

			$stmt->bindParam(":saberes_economia", $datos["saberes_economia"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}	

		/*=============================================
		COPIAR SABERES PRINCIPIO 4 (ECONOMIA)           
		=============================================*/

		static public function mdlCopiarSaberesPrincipio4($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_principio4 = :saberes_principio4 WHERE periodo = '$periodo' AND id_curso >= :id_curso1 AND id_curso <= :id_curso2");

			$stmt->bindParam(":saberes_principio4", $datos["saberes_principio4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES PYMES 4 (ECONOMIA)           
		=============================================*/

		static public function mdlCopiarSaberesPymes4($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_pymes4 = :saberes_pymes4 WHERE periodo = '$periodo' AND id_curso >= :id_curso1 AND id_curso <= :id_curso2");

			$stmt->bindParam(":saberes_pymes4", $datos["saberes_pymes4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES PYMES 5 (ECONOMIA)           
		=============================================*/

		static public function mdlCopiarSaberesPymes5($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_pymes5 = :saberes_pymes5 WHERE periodo = '$periodo' AND id_curso >= :id_curso1 AND id_curso <= :id_curso2");

			$stmt->bindParam(":saberes_pymes5", $datos["saberes_pymes5"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES PROBLEMÁTICAS (ECONOMIA)           
		=============================================*/

		static public function mdlCopiarSaberesProblematicas($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_problematicas = :saberes_problematicas WHERE periodo = '$periodo' AND id_curso >= :id_curso1 AND id_curso <= :id_curso2");

			$stmt->bindParam(":saberes_problematicas", $datos["saberes_problematicas"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES TALLER (ECONOMIA)           
		=============================================*/

		static public function mdlCopiarSaberesTaller($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_taller = :saberes_taller WHERE periodo = '$periodo' AND id_curso >= :id_curso1 AND id_curso <= :id_curso2");

			$stmt->bindParam(":saberes_taller", $datos["saberes_taller"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES APLICACIONES (INFORMÁTICA)           
		=============================================*/

		static public function mdlCopiarSaberesAplicaciones($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_aplicaciones = :saberes_aplicaciones WHERE periodo = '$periodo' AND id_curso >= :id_curso1");

			$stmt->bindParam(":saberes_aplicaciones", $datos["saberes_aplicaciones"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			//$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES CONECTIVIDAD (INFORMÁTICA)           
		=============================================*/

		static public function mdlCopiarSaberesConectividad($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_conectividad = :saberes_conectividad WHERE periodo = '$periodo' AND id_curso >= :id_curso1");

			$stmt->bindParam(":saberes_conectividad", $datos["saberes_conectividad"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			//$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}



		/*=============================================
		COPIAR SABERES SOFTWARE (INFORMÁTICA)           
		=============================================*/

		static public function mdlCopiarSaberesSoftware($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_software = :saberes_software WHERE periodo = '$periodo' AND id_curso >= :id_curso1");

			$stmt->bindParam(":saberes_software", $datos["saberes_software"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			//$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		COPIAR SABERES SEGURIDAD (INFORMÁTICA)           
		=============================================*/

		static public function mdlCopiarSaberesSeguridad($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_seguridad = :saberes_seguridad WHERE periodo = '$periodo' AND id_curso >= :id_curso1");

			$stmt->bindParam(":saberes_seguridad", $datos["saberes_seguridad"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			//$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}

		/*=============================================
		COPIAR SABERES TECNOLÓGICO (INFORMÁTICA)           
		=============================================*/

		static public function mdlCopiarSaberesTecnologico($tabla, $datos, $periodo){


			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_tecnologico = :saberes_tecnologico WHERE periodo = '$periodo' AND id_curso >= :id_curso1");

			$stmt->bindParam(":saberes_tecnologico", $datos["saberes_tecnologico"], PDO::PARAM_STR);
			$stmt->bindParam(":id_curso1", $datos["id_curso1"], PDO::PARAM_INT);
			//$stmt->bindParam(":id_curso2", $datos["id_curso2"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;


		}


		/*=============================================
		EDITAR INFORME CIENTIFICA            
		=============================================*/

		static public function mdlEditarInformeCientifica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_cientifica = :saberes_cientifica, aprecia_cientifica = :aprecia_cientifica, asistencia_cientifica = :asistencia_cientifica, observa_cientifica = :observa_cientifica, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_cientifica", $datos["saberes_cientifica"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_cientifica", $datos["aprecia_cientifica"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_cientifica", $datos["asistencia_cientifica"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_cientifica", $datos["observa_cientifica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME SOCIALES            
		=============================================*/

		static public function mdlEditarInformeSociales($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_sociales = :saberes_sociales, aprecia_sociales = :aprecia_sociales, asistencia_sociales = :asistencia_sociales, observa_sociales = :observa_sociales, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_sociales", $datos["saberes_sociales"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_sociales", $datos["aprecia_sociales"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_sociales", $datos["asistencia_sociales"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_sociales", $datos["observa_sociales"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME LENGUA            
		=============================================*/

		static public function mdlEditarInformeLengua($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_lengua = :saberes_lengua, aprecia_lengua = :aprecia_lengua, asistencia_lengua = :asistencia_lengua, observa_lengua = :observa_lengua, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_lengua", $datos["saberes_lengua"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_lengua", $datos["aprecia_lengua"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_lengua", $datos["asistencia_lengua"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_lengua", $datos["observa_lengua"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME MATEMATICA            
		=============================================*/

		static public function mdlEditarInformeMatematica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_matematica = :saberes_matematica, aprecia_matematica = :aprecia_matematica, asistencia_matematica = :asistencia_matematica, observa_matematica = :observa_matematica, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_matematica", $datos["saberes_matematica"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_matematica", $datos["aprecia_matematica"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_matematica", $datos["asistencia_matematica"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_matematica", $datos["observa_matematica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME INGLES            
		=============================================*/

		static public function mdlEditarInformeIngles($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_ingles = :saberes_ingles, aprecia_ingles = :aprecia_ingles, asistencia_ingles = :asistencia_ingles, observa_ingles = :observa_ingles, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_ingles", $datos["saberes_ingles"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_ingles", $datos["aprecia_ingles"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_ingles", $datos["asistencia_ingles"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_ingles", $datos["observa_ingles"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME EDUCACIÓN FÍSICA            
		=============================================*/

		static public function mdlEditarInformeFisica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_fisica = :saberes_fisica, aprecia_fisica = :aprecia_fisica, asistencia_fisica = :asistencia_fisica, observa_fisica = :observa_fisica, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_fisica", $datos["saberes_fisica"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_fisica", $datos["aprecia_fisica"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_fisica", $datos["asistencia_fisica"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_fisica", $datos["observa_fisica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME EDUCACIÓN ARTÍSTICA            
		=============================================*/

		static public function mdlEditarInformeArtistica($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_artistica = :saberes_artistica, aprecia_artistica = :aprecia_artistica, asistencia_artistica = :asistencia_artistica, observa_artistica = :observa_artistica, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_artistica", $datos["saberes_artistica"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_artistica", $datos["aprecia_artistica"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_artistica", $datos["asistencia_artistica"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_artistica", $datos["observa_artistica"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME EVE           
		=============================================*/

		static public function mdlEditarInformeEve($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_eve = :saberes_eve, aprecia_eve = :aprecia_eve, asistencia_eve = :asistencia_eve, observa_eve = :observa_eve, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_eve", $datos["saberes_eve"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_eve", $datos["aprecia_eve"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_eve", $datos["asistencia_eve"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_eve", $datos["observa_eve"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}	



		/*=============================================
		EDITAR INFORME PRINCIPIO 3 (SOCIALES)            
		=============================================*/

		static public function mdlEditarInformePrincipio3($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_principio3 = :saberes_principio3, aprecia_principio3 = :aprecia_principio3, asistencia_principio3 = :asistencia_principio3, observa_principio3 = :observa_principio3, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_principio3", $datos["saberes_principio3"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_principio3", $datos["aprecia_principio3"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_principio3", $datos["asistencia_principio3"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_principio3", $datos["observa_principio3"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME SISTEMAS (INFORMÁTICA)            
		=============================================*/

		static public function mdlEditarInformeSistemas($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_sistemas = :saberes_sistemas, aprecia_sistemas = :aprecia_sistemas, asistencia_sistemas = :asistencia_sistemas, observa_sistemas = :observa_sistemas, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_sistemas", $datos["saberes_sistemas"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_sistemas", $datos["aprecia_sistemas"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_sistemas", $datos["asistencia_sistemas"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_sistemas", $datos["observa_sistemas"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME ECONOMIA (ECONOMIA)            
		=============================================*/

		static public function mdlEditarInformeEconomia($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_economia = :saberes_economia, aprecia_economia = :aprecia_economia, asistencia_economia = :asistencia_economia, observa_economia = :observa_economia, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_economia", $datos["saberes_economia"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_economia", $datos["aprecia_economia"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_economia", $datos["asistencia_economia"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_economia", $datos["observa_economia"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}		



		/*=============================================
		EDITAR INFORME PRINCIPIO 4 (ECONOMIA)            
		=============================================*/

		static public function mdlEditarInformePrincipio4($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_principio4 = :saberes_principio4, aprecia_principio4 = :aprecia_principio4, asistencia_principio4 = :asistencia_principio4, observa_principio4 = :observa_principio4, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_principio4", $datos["saberes_principio4"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_principio4", $datos["aprecia_principio4"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_principio4", $datos["asistencia_principio4"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_principio4", $datos["observa_principio4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME PYMES 4 (ECONOMIA)            
		=============================================*/

		static public function mdlEditarInformePymes4($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_pymes4 = :saberes_pymes4, aprecia_pymes4 = :aprecia_pymes4, asistencia_pymes4 = :asistencia_pymes4, observa_pymes4 = :observa_pymes4, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_pymes4", $datos["saberes_pymes4"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_pymes4", $datos["aprecia_pymes4"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_pymes4", $datos["asistencia_pymes4"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_pymes4", $datos["observa_pymes4"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}	


		/*=============================================
		EDITAR INFORME PYMES 5 (ECONOMIA)            
		=============================================*/

		static public function mdlEditarInformePymes5($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_pymes5 = :saberes_pymes5, aprecia_pymes5 = :aprecia_pymes5, asistencia_pymes5 = :asistencia_pymes5, observa_pymes5 = :observa_pymes5, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_pymes5", $datos["saberes_pymes5"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_pymes5", $datos["aprecia_pymes5"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_pymes5", $datos["asistencia_pymes5"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_pymes5", $datos["observa_pymes5"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME PROBLEMÁTICAS (ECONOMIA)            
		=============================================*/

		static public function mdlEditarInformeProblematicas($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_problematicas = :saberes_problematicas, aprecia_problematicas = :aprecia_problematicas, asistencia_problematicas = :asistencia_problematicas, observa_problematicas = :observa_problematicas, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_problematicas", $datos["saberes_problematicas"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_problematicas", $datos["aprecia_problematicas"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_problematicas", $datos["asistencia_problematicas"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_problematicas", $datos["observa_problematicas"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME TALLER (ECONOMIA)            
		=============================================*/

		static public function mdlEditarInformeTaller($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_taller = :saberes_taller, aprecia_taller = :aprecia_taller, asistencia_taller = :asistencia_taller, observa_taller = :observa_taller, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_taller", $datos["saberes_taller"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_taller", $datos["aprecia_taller"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_taller", $datos["asistencia_taller"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_taller", $datos["observa_taller"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME APLICACIONES (INFORMÁTICA)            
		=============================================*/

		static public function mdlEditarInformeAplicaciones($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_aplicaciones = :saberes_aplicaciones, aprecia_aplicaciones = :aprecia_aplicaciones, asistencia_aplicaciones = :asistencia_aplicaciones, observa_aplicaciones = :observa_aplicaciones, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_aplicaciones", $datos["saberes_aplicaciones"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_aplicaciones", $datos["aprecia_aplicaciones"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_aplicaciones", $datos["asistencia_aplicaciones"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_aplicaciones", $datos["observa_aplicaciones"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME CONECTIVIDAD (INFORMÁTICA)            
		=============================================*/

		static public function mdlEditarInformeConectividad($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_conectividad = :saberes_conectividad, aprecia_conectividad = :aprecia_conectividad, asistencia_conectividad = :asistencia_conectividad, observa_conectividad = :observa_conectividad, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_conectividad", $datos["saberes_conectividad"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_conectividad", $datos["aprecia_conectividad"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_conectividad", $datos["asistencia_conectividad"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_conectividad", $datos["observa_conectividad"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME SOFTWARE (INFORMÁTICA)            
		=============================================*/

		static public function mdlEditarInformeSoftware($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_software = :saberes_software, aprecia_software = :aprecia_software, asistencia_software = :asistencia_software, observa_software = :observa_software, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_software", $datos["saberes_software"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_software", $datos["aprecia_software"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_software", $datos["asistencia_software"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_software", $datos["observa_software"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
		EDITAR INFORME SEGURIDAD (INFORMÁTICA)            
		=============================================*/

		static public function mdlEditarInformeSeguridad($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_seguridad = :saberes_seguridad, aprecia_seguridad = :aprecia_seguridad, asistencia_seguridad = :asistencia_seguridad, observa_seguridad = :observa_seguridad, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_seguridad", $datos["saberes_seguridad"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_seguridad", $datos["aprecia_seguridad"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_seguridad", $datos["asistencia_seguridad"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_seguridad", $datos["observa_seguridad"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}


		/*=============================================
		EDITAR INFORME TECNOLÓGICO (INFORMÁTICA)            
		=============================================*/

		static public function mdlEditarInformeTecnologico($tabla, $curso, $datos){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET saberes_tecnologico = :saberes_tecnologico, aprecia_tecnologico = :aprecia_tecnologico, asistencia_tecnologico = :asistencia_tecnologico, observa_tecnologico = :observa_tecnologico, id_usuario = :id_usuario WHERE id = :id");

			$stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);
			$stmt->bindParam(":saberes_tecnologico", $datos["saberes_tecnologico"], PDO::PARAM_STR);
			$stmt->bindParam(":aprecia_tecnologico", $datos["aprecia_tecnologico"], PDO::PARAM_STR);
			$stmt->bindParam(":asistencia_tecnologico", $datos["asistencia_tecnologico"], PDO::PARAM_STR);
			$stmt->bindParam(":observa_tecnologico", $datos["observa_tecnologico"], PDO::PARAM_STR);
			$stmt->bindParam(":id_usuario", $datos["id_usuario"], PDO::PARAM_INT);


			if ($stmt->execute()) {
				
				return "ok";
			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}

		/*=============================================
	    ACTUALIZAR ALUMNO            
		=============================================*/

		static public function mdlActualizarAlumno($tabla, $item1, $valor1, $item2, $valor2){

			$stmt = Conexion::conectar()->prepare("UPDATE $tabla SET $item1 = :$item1 WHERE $item2 = :$item2");

			$stmt -> bindParam(":".$item1, $valor1, PDO::PARAM_STR);
			$stmt -> bindParam(":".$item2, $valor2, PDO::PARAM_STR);

			if ($stmt -> execute()) {
				
				return "ok";

			}else{

				return "error";
			}

			$stmt->close();
			$stmt = null;

		}
				
	}