document.addEventListener('DOMContentLoaded', function() {
	
	//	FECHA
	var fecha = document.querySelectorAll('.datepicker');
	var instance = M.Datepicker.init(fecha, {
		format : 'dd-mm-yyyy',
		yearRange : 100
	});

	// SELECT PAISES
	var opciones = document.querySelectorAll('select');
	var instance2 = M.FormSelect.init(opciones);
	
	// CHIPS PLATAFORMAS
	let plataformas = $('input[name="plataformas"]');
	let plataformasUsuario = $('input[name="plataformas"]:not(:disabled)');
	
	let tags = {};
	for(let i=0; i<plataformas.length; i++){
    	tags[plataformas[i].className] = null;           	
    }
	
	let predefinidos = [];
	for(let i=0; i<plataformasUsuario.length; i++){
		predefinidos[i] = {tag: plataformasUsuario[i].className};
	}
	
	 $('.chips').chips({
         placeholder: 'Plataformas',
         secondaryPlaceholder: '+otra',
         autocompleteOptions: {
        	 data: tags
         },
         onChipAdd: function(e, chip){
             $("."+chip.textContent.replace('close','').replace(' ','.')).removeAttr('disabled');
         },
         onChipDelete: function(e, chip){
        	 $("."+chip.textContent.replace('close','').replace(' ','.')).attr('disabled', 'disabled');
         },
         data: predefinidos,
     });
});
