document.addEventListener('DOMContentLoaded', function() {

	var seriesAutocomplete = {};
	var series = [];
	var valorComprobar = '';
	var idSerie = '';

	document.getElementById('buscar-nombre-trigger').addEventListener('click',
			mostrarInput);
//	document.getElementById('autocomplete-input').addEventListener('focusout',
//			mostrarInput);

	const boton = document.getElementById('clear');
	const inputBusqueda = document.getElementById('autocomplete-input');

	inputBusqueda.addEventListener('input', mostrarLimpiar);
	boton.addEventListener('click', limpiarInput);
	
	function dataAutocomplete(data){
		for (let i = 0; i < data.length; i++) {
			seriesAutocomplete[data[i].titulo] = '/qveo'+data[i].poster;
		}
	}

	$.ajax({
		type : 'GET',
		url : '/qveo/ajax/series',
		success : function(data) {
			series = data;
			dataAutocomplete(data);
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
			idSerie = series.filter(comprobarSerie);
			posicion = window.location.href.indexOf('/qveo');
			window.location.href = window.location.href.substring(0, 21)
					+ '/qveo/serie/' + idSerie[0].id;

		}
	});

	function comprobarSerie(serie) {
		return serie.titulo == valorComprobar;
	}

	function mostrarInput() {
		document.getElementById('buscar-nombre').classList
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