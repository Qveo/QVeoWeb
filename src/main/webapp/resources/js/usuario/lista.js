$(document).ready(function() {
	$('.info').modal();
	
	$('.confirmar').modal({
		onOpenStart : function(modal, trigger) {
			
			$(".eliminar-usuario").off('click');
			
			let cajaOpciones = trigger.parentNode.parentNode;
			let id = cajaOpciones.getAttribute('id');
	
			$(".eliminar-usuario").click({param1 : id,param2 : cajaOpciones},function(event) {
	
				event.data.param2.parentNode.parentNode.remove();
				borrarUsuario(event.data.param1);
			});
		}
	});
			
	$(".mostrar-usuario").click(function(event) {

		let id = event.target.parentNode.parentNode.parentNode.getAttribute('id');
		mostrarUsuario(id);
		
		});

	$("#usuario-nombre").keyup(function(event) {
			mostrarUsuarios();
	});

});

function insertarFoto(foto){
	let imgUsuario = document.getElementById('img-usuario');	
	let posicion = imgUsuario.src.indexOf("/qveo");
	imgUsuario.src = imgUsuario.src.substring(0,posicion+5) + foto;
}

function crearObjetoUsuario(usuario){
	// Formateamos fechas
	let fechaNa = new Date(usuario.fechaNacimiento);
	let fechaAl = new Date(usuario.fechaAlta);
	return {
		Id : usuario.id,
		Nombre : usuario.nombre,
		Apellidos : usuario.apellidos,
		Email : usuario.email,
		Nacimiento : fechaNa.toLocaleDateString(),
		Password : usuario.password,
		Sexo : usuario.sexo,
		Alta : fechaAl.toLocaleDateString()
	};
}

function insertarInfoUsuario(usuario){
	let titulo = document.getElementsByClassName('titulo-info');
	let info = document.getElementsByClassName('usuario-info');
	
	let i = 0;
	for (prop in usuario) {
		titulo[i].innerHTML = prop;
		info[i].innerHTML = usuario[prop];
		i++;
	}
}

function mostrarUsuario(id) {

	$.ajax({
		type : 'GET',
		url : '/qveo/ajax/usuario/' + id,
		success : function(data) {
			
			// Insertamos la foto
			insertarFoto(data.foto);
			
			// Creamos objeto usuario
			let usuario = crearObjetoUsuario(data);
			
			// Insertamos información usuario
			insertarInfoUsuario(usuario);
			
			console.log("SUCCESS : ", data);

		},
		error : function(e) {

			console.log("ERROR : ", e);
	
			}
		});
	
	}

function borrarUsuario(id) {
	$.ajax({
		type : 'GET',
	url : '/qveo/ajax/usuario/delete/' + id,
	success : function(data) {

		console.log("SUCCESS : ", data);
	},
	error : function(e) {

		console.log("ERROR : ", e);
		}
	});
}

function mostrarUsuarios() {

	let busqueda = {};

	busqueda["nombre"] = $("#usuario-nombre").val();

$.ajax({
	type : 'POST',
	contentType : 'application/json',
	url : '/qveo/ajax/usuarios/',
	data : JSON.stringify(busqueda),
	dataType : 'json',
	success : function(data) {

		let filas = $('.row.cuerpo');

		// Oculamos todas las filas
		for (let i = 0; i < filas.length; i++) {
			$("#" + filas[i].id).hide();
		}

		// Mostramos las filas necesarias
		for (let i = 0; i < data.length; i++) {
			$("#" + data[i].nombre + '-' + data[i].id).show();
		}

		console.log("SUCCESS : ", data);
	},
	error : function(e) {

		console.log("ERROR : ", e);
		}
	});
}