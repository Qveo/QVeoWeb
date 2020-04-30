document.addEventListener('DOMContentLoaded', function() {

	var fecha = document.querySelectorAll('.datepicker');
	var instance = M.Datepicker.init(fecha, {
		format : 'yyyy-mm-dd',
		yearRange : 100
	});

	var opciones = document.querySelectorAll('select');
	var instance2 = M.FormSelect.init(opciones);

	var elems = document.querySelectorAll('.chips');
	var datos = document.getElementsByClassName('plataformas');
	var datosObj = {};

	for (var i = 0; i < datos.length; i++) {
		datosObj[datos[i].id] = null;
	}

	var options = {
		autocompleteOptions: {	
				data: datosObj
		}
	}

	var instance3 = M.Chips.init(elems, options);
	
	document.getElementById('boton').addEventListener('click', crearInput);
	
	
	function crearInput(){
		var etiquetas = document.getElementsByClassName('chip');
		for(var i=0; i<etiquetas.length; i++){
			var identificador = etiquetas[i].textContent.replace('close','');
			var caja = document.getElementById(identificador);
			caja.innerHTML += '<input name="plataformas" value='+caja.innerText+' type="hidden">';
		}
		
	}
});
