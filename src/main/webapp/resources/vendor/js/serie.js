document.addEventListener('DOMContentLoaded', function() {

	//Date picker para fecha
	var fecha = document.querySelectorAll('.datepicker');
	var instance = M.Datepicker.init(fecha, {
		format : 'dd-mm-yyyy',
		yearRange : 100
	});
	
	//Checkbox
	$('input[type=checkbox]').each(function() {

		var name = $(this).attr('name');
		$('[name="' + '_' + name + '"]').remove();

	});

	//Select pais
	var elems = document.querySelectorAll('select');
	var instances = M.FormSelect.init(elems);
	
	
	//Chips plataformas
	let plataformas = $('input[name="plataformas"]');
	let plataformasSerie = $('input[name="plataformas"]:not(:disabled)');
	
	let tags = {};
	for(let i=0; i<plataformas.length; i++){
    	tags[plataformas[i].className] = null;           	
    }
	
	let predefinidos = [];
	for(let i=0; i<plataformasSerie.length; i++){
		predefinidos[i] = {tag: plataformasSerie[i].className};
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
	 
	 //Chips Directores
	 let directores = $('input[name="directores"]');
	 let directoresSerie = $('input[name="directores"]:not(:disabled)');
	 
	 let tagsD={};
	 for (var i = 0; i < directores.length; i++) {
		 tagsD[directores[i].className]=null;
	 }
	 
	 let predefinidosD = [];
	 for (var i = 0; i < directoresSerie.length; i++) {
		 predefinidosD[i]={tags: directoresSerie[i].className};
	}
	 
	 $('.chipsD').chips({
         placeholder: 'Directores',
         secondaryPlaceholder: '+otro',
         autocompleteOptions: {
        	 data: tagsD
         },
         onChipAdd: function(e, chip){
             $("."+chip.textContent.replace('close','').replace(' ','.')).removeAttr('disabled');
         },
         onChipDelete: function(e, chip){
        	 $("."+chip.textContent.replace('close','').replace(' ','.')).attr('disabled', 'disabled');
         },
         data: predefinidosD,
     });
	 
	 
	 //Chips Actores
	 let actores = $('input[name="actores"]');
	 let actoresSerie = $('input[name="actores"]:not(:disabled)');	 
	 
	 let tagsA={};
	 for (var i = 0; i < actores.length; i++) {
		 tagsA[actores[i].className]=null;
	 }
	 
	 let predefinidosA = [];
	 for (var i = 0; i < actoresSerie.length; i++) {
		 predefinidosA[i]={tags: actoresSerie[i].className};
	}
	 
	 $('.chipsA').chips({
         placeholder: 'Actores',
         secondaryPlaceholder: '+otr@s',
         autocompleteOptions: {
        	 data: tagsA
         },
         onChipAdd: function(e, chip){
             $("."+chip.textContent.replace('close','').replace(' ','.')).removeAttr('disabled');
         },
         onChipDelete: function(e, chip){
        	 $("."+chip.textContent.replace('close','').replace(' ','.')).attr('disabled', 'disabled');
         },
         data: predefinidosA,
     });
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
	
});