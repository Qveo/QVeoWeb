$(document).ready(function() {
	$('.info').modal();
	
	$('.confirmar').modal({
		onOpenStart : function(modal, trigger) {
			
			$(".eliminar-plat").off('click');
			
			let cajaOpciones = trigger.parentNode.parentNode;
			let id = cajaOpciones.getAttribute('id');
			console.log(id);
	
			$(".eliminar-plat").click({param1 : id,param2 : cajaOpciones},function(event) {
	
				event.data.param2.parentNode.parentNode.remove();
				borrarPelicula(event.data.param1);
			});
		}
	});
});
	
	function borrarPelicula(id) {
	
		$.ajax({
			type : 'GET',
		url : '/qveo/plataformas/delete/' + id,
		success : function(data) {

			console.log("SUCCESS : ", data);
			
			 $('#modal3').modal();
			    $('#modal3').modal('open'); 
			
		},
		error : function(e) {

			console.log("ERROR : ", e);
			}
		});
	}