
/*=============================================
ELIMINAR ASISTENCIA            
=============================================*/

$(document).on("click", ".btnEliminarAsistencia", function(){


	var idAsistencia = $(this).attr("idAsistencia");

	swal({
		title: 'Está seguro de borrar la asistencia?',
		text: "Si no lo está puede cancelar la acción",
		type: "warning",
		showCancelButton: true,
		confirmButtonColor: '#3085d6',
		cancelButtonColor: '#d33',
		cancelButtonText: 'Cancelar',
		confirmButtonText: 'Si, borrar asistencia'
		}).then((result)=>{

			if (result.value) {

				window.location = "index.php?ruta=asistencia&idAsistencia="+idAsistencia;
			}
		})
})


/*=============================================
IMPRIMIR ASISTENCIA INDIVIDUAL
=============================================*/

$(".btnListadoAsDocente").click(function(){

	var idDocente = $(this).attr("idDocente");
	let fecha_desde = document.getElementById("datepicker2").value; 
	let fecha_hasta = document.getElementById("datepicker3").value; 


	window.open("extensiones/tcpdf/pdf/asistencia-individual.php?idDocente="+idDocente+"&desde="+fecha_desde+"&hasta="+fecha_hasta, "_blank");

})

/*=============================================
IMPRIMIR RESUMEN ASISTENCIA POR DOCENTE
=============================================*/

$(".btnResumenAsDocente").click(function(){

	//var idDocente = $(this).attr("valor");
	let idDocente = document.getElementById("valor").value;
	let fecha_desde = document.getElementById("datepicker").value; 
	let fecha_hasta = document.getElementById("datepicker2").value; 


	window.open("extensiones/tcpdf/pdf/resumen-asistencia.php?idDocente="+idDocente+"&desde="+fecha_desde+"&hasta="+fecha_hasta, "_blank");

})

/*=============================================
IMPRIMIR INFORME ASISTENCIA
=============================================*/

$(".btnInformAsDocente").click(function(){

	let fecha_desde = document.getElementById("datepicker").value; 
	let fecha_hasta = document.getElementById("datepicker2").value; 


	window.open("extensiones/tcpdf/pdf/informe-asistencia.php?desde="+fecha_desde+"&hasta="+fecha_hasta, "_blank");

})



