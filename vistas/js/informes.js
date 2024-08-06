

/*=============================================
EDITAR INFORME CIENTIFICA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeCientifica", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");

	$('#alumnoEdicion').html('Editar Informe: ' + nombre);
	

	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);
	


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	



			$("#idAlumno").val(respuesta["id"]);
			$("#saberesCientifica").val(respuesta["saberes_cientifica"]);
			$("#apreciaCientifica").val(respuesta["aprecia_cientifica"]);
			$("#asistenciaCientifica").val(respuesta["asistencia_cientifica"]);
			$("#observaCientifica").val(respuesta["observa_cientifica"]);			


								
		}
	})

	
})



/*=============================================
EDITAR INFORME SOCIALES
=============================================*/

$(".tablas").on("click", ".btnEditarInformeSociales", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesSociales").val(respuesta["saberes_sociales"]);
			$("#apreciaSociales").val(respuesta["aprecia_sociales"]);
			$("#asistenciaSociales").val(respuesta["asistencia_sociales"]);
			$("#observaSociales").val(respuesta["observa_sociales"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME LENGUA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeLengua", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesLengua").val(respuesta["saberes_lengua"]);
			$("#apreciaLengua").val(respuesta["aprecia_lengua"]);
			$("#asistenciaLengua").val(respuesta["asistencia_lengua"]);
			$("#observaLengua").val(respuesta["observa_lengua"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME MATEMATICA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeMatematica", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesMatematica").val(respuesta["saberes_matematica"]);
			$("#apreciaMatematica").val(respuesta["aprecia_matematica"]);
			$("#asistenciaMatematica").val(respuesta["asistencia_matematica"]);
			$("#observaMatematica").val(respuesta["observa_matematica"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME INGLES
=============================================*/

$(".tablas").on("click", ".btnEditarInformeIngles", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesIngles").val(respuesta["saberes_ingles"]);
			$("#apreciaIngles").val(respuesta["aprecia_ingles"]);
			$("#asistenciaIngles").val(respuesta["asistencia_ingles"]);
			$("#observaIngles").val(respuesta["observa_ingles"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME EDUCACIÓN FISICA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeFisica", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesFisica").val(respuesta["saberes_fisica"]);
			$("#apreciaFisica").val(respuesta["aprecia_fisica"]);
			$("#asistenciaFisica").val(respuesta["asistencia_fisica"]);
			$("#observaFisica").val(respuesta["observa_fisica"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME EDUCACIÓN ARTÍSTICA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeArtistica", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesArtistica").val(respuesta["saberes_artistica"]);
			$("#apreciaArtistica").val(respuesta["aprecia_artistica"]);
			$("#asistenciaArtistica").val(respuesta["asistencia_artistica"]);
			$("#observaArtistica").val(respuesta["observa_artistica"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME EVE
=============================================*/

$(".tablas").on("click", ".btnEditarInformeEve", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesEve").val(respuesta["saberes_eve"]);
			$("#apreciaEve").val(respuesta["aprecia_eve"]);
			$("#asistenciaEve").val(respuesta["asistencia_eve"]);
			$("#observaEve").val(respuesta["observa_eve"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME PRINCIPIO 3
=============================================*/

$(".tablas").on("click", ".btnEditarInformePrincipio3", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesPrincipio").val(respuesta["saberes_principio3"]);
			$("#apreciaPrincipio").val(respuesta["aprecia_principio3"]);
			$("#asistenciaPrincipio").val(respuesta["asistencia_principio3"]);
			$("#observaPrincipio").val(respuesta["observa_principio3"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME SISTEMAS (INFORMÁTICA)
=============================================*/

$(".tablas").on("click", ".btnEditarInformeSistemas", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesSistemas").val(respuesta["saberes_sistemas"]);
			$("#apreciaSistemas").val(respuesta["aprecia_sistemas"]);
			$("#asistenciaSistemas").val(respuesta["asistencia_sistemas"]);
			$("#observaSistemas").val(respuesta["observa_sistemas"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME ECONOMIA 
=============================================*/

$(".tablas").on("click", ".btnEditarInformeEconomia", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesEconomia").val(respuesta["saberes_economia"]);
			$("#apreciaEconomia").val(respuesta["aprecia_economia"]);
			$("#asistenciaEconomia").val(respuesta["asistencia_economia"]);
			$("#observaEconomia").val(respuesta["observa_economia"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME PRINCIPIO 4
=============================================*/

$(".tablas").on("click", ".btnEditarInformePrincipio4", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesPrincipio").val(respuesta["saberes_principio4"]);
			$("#apreciaPrincipio").val(respuesta["aprecia_principio4"]);
			$("#asistenciaPrincipio").val(respuesta["asistencia_principio4"]);
			$("#observaPrincipio").val(respuesta["observa_principio4"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME PYMES 4
=============================================*/

$(".tablas").on("click", ".btnEditarInformePymes4", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesPymes").val(respuesta["saberes_pymes4"]);
			$("#apreciaPymes").val(respuesta["aprecia_pymes4"]);
			$("#asistenciaPymes").val(respuesta["asistencia_pymes4"]);
			$("#observaPymes").val(respuesta["observa_pymes4"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME PYMES 5
=============================================*/

$(".tablas").on("click", ".btnEditarInformePymes5", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesPymes").val(respuesta["saberes_pymes5"]);
			$("#apreciaPymes").val(respuesta["aprecia_pymes5"]);
			$("#asistenciaPymes").val(respuesta["asistencia_pymes5"]);
			$("#observaPymes").val(respuesta["observa_pymes5"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME PROBLEMATICAS
=============================================*/

$(".tablas").on("click", ".btnEditarInformeProblematicas", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesProblematicas").val(respuesta["saberes_problematicas"]);
			$("#apreciaProblematicas").val(respuesta["aprecia_problematicas"]);
			$("#asistenciaProblematicas").val(respuesta["asistencia_problematicas"]);
			$("#observaProblematicas").val(respuesta["observa_problematicas"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME TALLER
=============================================*/

$(".tablas").on("click", ".btnEditarInformeTaller", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesTaller").val(respuesta["saberes_taller"]);
			$("#apreciaTaller").val(respuesta["aprecia_taller"]);
			$("#asistenciaTaller").val(respuesta["asistencia_taller"]);
			$("#observaTaller").val(respuesta["observa_taller"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME APLICACIONES
=============================================*/

$(".tablas").on("click", ".btnEditarInformeAplicaciones", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesAplicaciones").val(respuesta["saberes_aplicaciones"]);
			$("#apreciaAplicaciones").val(respuesta["aprecia_aplicaciones"]);
			$("#asistenciaAplicaciones").val(respuesta["asistencia_aplicaciones"]);
			$("#observaAplicaciones").val(respuesta["observa_aplicaciones"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME CONECTIVIDAD
=============================================*/

$(".tablas").on("click", ".btnEditarInformeConectividad", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesConectividad").val(respuesta["saberes_conectividad"]);
			$("#apreciaConectividad").val(respuesta["aprecia_conectividad"]);
			$("#asistenciaConectividad").val(respuesta["asistencia_conectividad"]);
			$("#observaConectividad").val(respuesta["observa_conectividad"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME PROYECTO
=============================================*/

$(".tablas").on("click", ".btnEditarInformeProyecto", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesProyecto").val(respuesta["saberes_proyecto"]);
			$("#apreciaProyecto").val(respuesta["aprecia_proyecto"]);
			$("#asistenciaProyecto").val(respuesta["asistencia_proyecto"]);
			$("#observaProyecto").val(respuesta["observa_proyecto"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME PROBLEMATICA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeProblematica", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesProblematica").val(respuesta["saberes_problematica"]);
			$("#apreciaProblematica").val(respuesta["aprecia_problematica"]);
			$("#asistenciaProblematica").val(respuesta["asistencia_problematica"]);
			$("#observaProblematica").val(respuesta["observa_problematica"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME CONOCIMIENTO
=============================================*/

$(".tablas").on("click", ".btnEditarInformeConocimiento", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesConocimiento").val(respuesta["saberes_conocimiento"]);
			$("#apreciaConocimiento").val(respuesta["aprecia_conocimiento"]);
			$("#asistenciaConocimiento").val(respuesta["asistencia_conocimiento"]);
			$("#observaConocimiento").val(respuesta["observa_conocimiento"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME SOFTWARE
=============================================*/

$(".tablas").on("click", ".btnEditarInformeSoftware", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesSoftware").val(respuesta["saberes_software"]);
			$("#apreciaSoftware").val(respuesta["aprecia_software"]);
			$("#asistenciaSoftware").val(respuesta["asistencia_software"]);
			$("#observaSoftware").val(respuesta["observa_software"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME SEGURIDAD
=============================================*/

$(".tablas").on("click", ".btnEditarInformeSeguridad", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesSeguridad").val(respuesta["saberes_seguridad"]);
			$("#apreciaSeguridad").val(respuesta["aprecia_seguridad"]);
			$("#asistenciaSeguridad").val(respuesta["asistencia_seguridad"]);
			$("#observaSeguridad").val(respuesta["observa_seguridad"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME TECNOLÓGICO
=============================================*/

$(".tablas").on("click", ".btnEditarInformeTecnologico", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");

	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesTecnologico").val(respuesta["saberes_tecnologico"]);
			$("#apreciaTecnologico").val(respuesta["aprecia_tecnologico"]);
			$("#asistenciaTecnologico").val(respuesta["asistencia_tecnologico"]);
			$("#observaTecnologico").val(respuesta["observa_tecnologico"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME FOTOGRAFÍA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeFotografia", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesFotografia").val(respuesta["saberes_fotografia"]);
			$("#apreciaFotografia").val(respuesta["aprecia_fotografia"]);
			$("#asistenciaFotografia").val(respuesta["asistencia_fotografia"]);
			$("#observaFotografia").val(respuesta["observa_fotografia"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME REALIZACIÓN
=============================================*/

$(".tablas").on("click", ".btnEditarInformeRealizacion", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesRealizacion").val(respuesta["saberes_realizacion"]);
			$("#apreciaRealizacion").val(respuesta["aprecia_realizacion"]);
			$("#asistenciaRealizacion").val(respuesta["asistencia_realizacion"]);
			$("#observaRealizacion").val(respuesta["observa_realizacion"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME GUION
=============================================*/

$(".tablas").on("click", ".btnEditarInformeGuion", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesGuion").val(respuesta["saberes_guion"]);
			$("#apreciaGuion").val(respuesta["aprecia_guion"]);
			$("#asistenciaGuion").val(respuesta["asistencia_guion"]);
			$("#observaGuion").val(respuesta["observa_guion"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME SONIDO
=============================================*/

$(".tablas").on("click", ".btnEditarInformeSonido", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesSonido").val(respuesta["saberes_sonido"]);
			$("#apreciaSonido").val(respuesta["aprecia_sonido"]);
			$("#asistenciaSonido").val(respuesta["asistencia_sonido"]);
			$("#observaSonido").val(respuesta["observa_sonido"]);			


								
		}
	})

	
})


/*=============================================
EDITAR INFORME TALLER
=============================================*/

$(".tablas").on("click", ".btnEditarInformeTaller", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesTaller").val(respuesta["saberes_taller"]);
			$("#apreciaTaller").val(respuesta["aprecia_taller"]);
			$("#asistenciaTaller").val(respuesta["asistencia_taller"]);
			$("#observaTaller").val(respuesta["observa_taller"]);			


								
		}
	})

	
})

/*=============================================
EDITAR INFORME SEMIÓTICA
=============================================*/

$(".tablas").on("click", ".btnEditarInformeSemiotica", function(){


	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");
	var nombre = $(this).attr("nombreAlumno");
	$('#alumnoEdicion').html('Editar Informe: ' + nombre);


	var datos = new FormData();
	datos.append("idAlumno", idAlumno);
	datos.append("tabla", tabla);	
	datos.append("periodo", periodo);


	$.ajax({
		url: "ajax/informes.ajax.php",
		method: "POST",
		data: datos,
		cache: false,
		contentType: false,
		processData: false,
		dataType: "json",
		success: function(respuesta){	




			$("#idAlumno").val(respuesta["id"]);
			$("#saberesSemiotica").val(respuesta["saberes_semiotica"]);
			$("#apreciaSemiotica").val(respuesta["aprecia_semiotica"]);
			$("#asistenciaSemiotica").val(respuesta["asistencia_semiotica"]);
			$("#observaSemiotica").val(respuesta["observa_semiotica"]);			


								
		}
	})

	
})




/*=============================================
IMPRIMIR INFORME INDIVIDUAL
=============================================*/

$(".tablas").on("click", ".btnImprimirInformeIndividual", function(){



	var idAlumno = $(this).attr("idAlumno");
	var informe = $(this).attr("informe");
	var area = $(this).attr("area");
	var tabla = $(this).attr("tabla");
	var periodo = $(this).attr("periodo");


	window.open("extensiones/tcpdf/pdf/"+informe+".php?id="+idAlumno+"&informe="+informe+"&area="+area+"&tabla="+tabla+"&periodo="+periodo, "_blank");

})


/*=============================================
IMPRIMIR INFORME X ÁREA
=============================================*/

$(".btnInformeArea").click(function(){
	
	
		var idCurso = $(this).attr("idCurso");
		var idCurso2 = $(this).attr("idCurso2");
		var informe = $(this).attr("informe");
		var area = $(this).attr("area");
		var tabla = $(this).attr("tabla");
		var modalidad = $(this).attr("modalidad");
		var periodo = $(this).attr("periodo");
	
	
		//console.log(modalidad);
		
	
		window.open("extensiones/tcpdf/pdf/"+informe+".php?informe="+informe+"&area="+area+"&tabla="+tabla+"&idCurso="+idCurso+"&idCurso2="+idCurso2+"&modalidad="+modalidad+"&periodo="+periodo, "_blank");
	
	})

/*=============================================
IMPRIMIR SEGUIMIENTO X ÁREA
=============================================*/

$(".btnSeguimientoArea").click(function(){

	//$(".tablas").on("click", ".btnInformeArea", function(){
	
	
		var idCurso = $(this).attr("idCurso");
		var idCurso2 = $(this).attr("idCurso2");
		var idCurso3 = $(this).attr("idCurso3");
		var informe = $(this).attr("informe");
		var area = $(this).attr("area");
		var tabla = $(this).attr("tabla");
		var periodo = $(this).attr("periodo");
		
	
		window.open("extensiones/tcpdf/pdf/"+informe+".php?informe="+informe+"&area="+area+"&tabla="+tabla+"&idCurso="+idCurso+"&idCurso2="+idCurso2+"&idCurso3="+idCurso3+"&periodo="+periodo, "_blank");
	
	})

/*=============================================
IMPRIMIR INFORME CICLO BASICO
=============================================*/

$(".tablas").on("click", ".btnImprimirInformeCb", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var informe = $(this).attr("informe");
	var periodo = $(this).attr("periodo");


	window.open("extensiones/tcpdf/pdf/"+informe+".php?id="+idAlumno+"&tabla="+tabla+"&informe="+informe+"&periodo="+periodo, "_blank");

})

/*=============================================
IMPRIMIR INFORME SEGUIMIENTO
=============================================*/

$(".tablas").on("click", ".btnImprimirSeguimiento", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var informe = $(this).attr("informe");
	var periodo = $(this).attr("periodo");


	window.open("extensiones/tcpdf/pdf/"+informe+".php?id="+idAlumno+"&tabla="+tabla+"&informe="+informe+"&periodo="+periodo, "_blank");

})

/*=============================================
  DESCARGAR INFORME GLOBAL CICLO BASICO
  =============================================*/


  $(".btnDescargaInformeGlobalCb").click(function(){

    var idCurso = $(this).attr("idCurso");
    var tabla = $(this).attr("tabla");
    var informe = $(this).attr("informe");
    var periodo = $(this).attr("periodo");


    window.open("extensiones/tcpdf/pdf/"+informe+".php?tabla="+tabla+"&informe="+informe+"&idCurso="+idCurso+"&periodo="+periodo, "_blank");

  })




/*=============================================
IMPRIMIR INFORME CICLO ORIENTADO 3ER. AÑO
=============================================*/

$(".tablas").on("click", ".btnImprimirInformeCo3", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var informe = $(this).attr("informe");
	var modalidad = $(this).attr("modalidad");
	var periodo = $(this).attr("periodo");



	window.open("extensiones/tcpdf/pdf/"+informe+".php?id="+idAlumno+"&tabla="+tabla+"&informe="+informe+"&modalidad="+modalidad+"&periodo="+periodo, "_blank");

})


/*=============================================
IMPRIMIR INFORME CICLO ORIENTADO 4TO. AÑO
=============================================*/

$(".tablas").on("click", ".btnImprimirInformeCo4", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var informe = $(this).attr("informe");
	var modalidad = $(this).attr("modalidad");
	var periodo = $(this).attr("periodo");



	window.open("extensiones/tcpdf/pdf/"+informe+".php?id="+idAlumno+"&tabla="+tabla+"&informe="+informe+"&modalidad="+modalidad+"&periodo="+periodo, "_blank");

})


/*=============================================
IMPRIMIR INFORME CICLO ORIENTADO 5TO. AÑO
=============================================*/

$(".tablas").on("click", ".btnImprimirInformeCo5", function(){



	var idAlumno = $(this).attr("idAlumno");
	var tabla = $(this).attr("tabla");
	var informe = $(this).attr("informe");
	var modalidad = $(this).attr("modalidad");
	var periodo = $(this).attr("periodo");



	window.open("extensiones/tcpdf/pdf/"+informe+".php?id="+idAlumno+"&tabla="+tabla+"&informe="+informe+"&modalidad="+modalidad+"&periodo="+periodo, "_blank");

})