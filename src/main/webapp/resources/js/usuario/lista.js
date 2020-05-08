$(document)
		.ready(
				function() {

					$('.modal').modal();
					/*
					 * $('.confirmar').modal({ onOpenStart: function(modal,
					 * trigger){
					 * 
					 * let cajaOpciones = trigger.parentNode.parentNode; let id =
					 * cajaOpciones.getAttribute('id');
					 * 
					 * $(".eliminar-usuario").click({param1: id, param2:
					 * cajaOpciones}, function(event) {
					 * 
					 * event.data.param2.parentNode.parentNode.remove();
					 * borrarUsuario(event.data.param1);
					 * 
					 * }); } });
					 */

					$('.eliminar')
							.click(
									function(event) {

										if (confirm("¿Estás seguro/a?")) {

											let cajaOpciones = event.target.parentNode.parentNode.parentNode;
											let id = cajaOpciones
													.getAttribute('id');
											console.log(id);
											cajaOpciones.parentNode.parentNode
													.remove();
											borrarUsuario(id);
										}
									});

					$(".mostrar-usuario")
							.click(
									function(event) {

										let id = event.target.parentNode.parentNode.parentNode
												.getAttribute('id');
										mostrarUsuario(id);

									});

					$("#usuario-nombre").keyup(function(event) {
						mostrarUsuarios();
					});

				});

function mostrarUsuario(id) {

	$.ajax({
		type : 'GET',
		url : '/qveo/ajax/usuario/' + id,
		success : function(data) {

			let contenido = document.getElementById('contenido');
			let imgUsuario = document.getElementById('img-usuario');
			let infoUsuario = document.getElementById('info-usuario');

			let posicion = imgUsuario.firstChild.src.indexOf("/resources");
			let ruta = imgUsuario.firstChild.src;

			if (posicion == -1)
				imgUsuario.firstChild.src = ruta.substring(posicion)
						+ data.foto;
			else
				imgUsuario.firstChild.src = ruta.substring(0, posicion)
						+ data.foto;

			// Formateamos fechas
			let fechaNa = new Date(data.fechaNacimiento);
			let fechaAl = new Date(data.fechaAlta);

			let datos = {
				identificador : data.id,
				nombre : data.nombre,
				apellidos : data.apellidos,
				email : data.email,
				nacimiento : fechaNa.toLocaleDateString(),
				password : data.password,
				sexo : data.sexo,
				alta : fechaAl.toLocaleDateString()
			};

			infoUsuario.innerHTML = '';
			let fila = document.createElement('div');
			fila.classList.add('row');

			for ( const prop in datos) {
				let contenedor = document.createElement('div');
				contenedor.classList.add('col', 's4', 'cabeceras');
				let encabezado = document.createTextNode(prop + ':');
				contenedor.appendChild(encabezado);
				let contenedor2 = document.createElement('div');
				contenedor2.classList.add('col', 's8', 'cuerpo');
				let valor = document.createTextNode(datos[prop]);
				contenedor2.appendChild(valor);
				fila.appendChild(contenedor);
				fila.appendChild(contenedor2);

			}
			// Agregamos todo al segundo row
			infoUsuario.appendChild(fila);

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
	console.log(busqueda);

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