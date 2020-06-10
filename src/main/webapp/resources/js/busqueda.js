document.addEventListener('DOMContentLoaded', function() {

	var seriesAutocomplete = {};
	var contenidoVisual = [];
	var valorComprobar = '';
	var idContenido = '';
	var serie = [];
	var pelicula = [];

	const lupa = document.getElementById('buscar-nombre-trigger');
	const boton = document.getElementById('clear');
	const inputBusqueda = document.getElementById('autocomplete-input');

	lupa.addEventListener('click', mostrarInput);
	inputBusqueda.addEventListener('input', mostrarLimpiar);
	boton.addEventListener('click', limpiarInput);

	function dataAutocomplete(data) {
		seriesAutocomplete[data.titulo] = '/qveo' + data.poster;
	}
	$.ajax({
		type : 'POST',
		url : '/qveo/ajax/series',
		success : function(data) {
			contenidoVisual = data;
			data.peliculas.forEach(dataAutocomplete);
			data.series.forEach(dataAutocomplete);
			console.log("SUCCESS : ", data);
		},
		error : function(e) {
			console.log("ERROR : ", e);
		}
	});

	var elems = document.querySelectorAll('.autocomplete');
	var instances = M.Autocomplete.init(elems, {
		data : seriesAutocomplete,
		limit : 5,
		onAutocomplete : function(val) {
			valorComprobar = val;
			serie = contenidoVisual.series.filter(comprobarContenido);
			pelicula = contenidoVisual.peliculas.filter(comprobarContenido);
			let ruta = ifEmpty(serie, pelicula);
			showResource(ruta);

		}
	});

	function showResource(ruta) {
		if (ruta != 'error') {
			let posicion = window.location.href.lastIndexOf('/qveo');
			window.location.href = window.location.href.substring(0, posicion)
					+ '/qveo/' + ruta + idContenido;
		}
	}

	function ifEmpty(serie, pelicula) {
		if (serie.length != 0) {
			idContenido = serie[0].id;
			return 'serie/';
		} else if (pelicula.length != 0) {
			idContenido = pelicula[0].id;
			return 'peliculas/';
		}
		return 'error';
	}

	function comprobarContenido(contenido) {
		return contenido.titulo == valorComprobar;
	}

	function mostrarInput() {
		document.getElementById('buscar-nombre').classList
				.toggle('mostrar-ocultar');
		inputBusqueda.focus();
		//hideLogo();
		//hideHamburger();
	}

	function hideLogo() {
		document.getElementById('title-qveo').classList
				.toggle('mostrar-ocultar');
	}

	function hideHamburger() {
		document.getElementById('hamburger').classList
				.toggle('mostrar-ocultar');
	}

	function mostrarLimpiar() {
		if (this.value != '')
			boton.style.opacity = 1
		else
			boton.style.opacity = 0
	}

	function limpiarInput() {
		inputBusqueda.value = '';
		this.style.opacity = 0;
	}

});