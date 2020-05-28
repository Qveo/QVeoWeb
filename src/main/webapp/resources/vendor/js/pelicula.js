document.addEventListener('DOMContentLoaded', function() {

	var fecha = document.querySelectorAll('.datepicker');
	var instance = M.Datepicker.init(fecha, {
		format : 'dd-mm-yyyy',
		yearRange : 100
	});

	$('input[type=checkbox]').each(function() {

		var name = $(this).attr('name');
		$('[name="' + '_' + name + '"]').remove();

	});

	var elems = document.querySelectorAll('select');
	var instances = M.FormSelect.init(elems);

	
	 //Chips Actores
	 let actores = $('input[name="actores"]');
	 let actoresPelicula = $('input[name="actores"]:not(:disabled)');	 
	 
	 let tagsA={};
	 for (var i = 0; i < actores.length; i++) {
		 tagsA[actores[i].className]=null;
	 }
	 
	 let predefinidosA = [];
	 for (var i = 0; i < actoresPelicula.length; i++) {
		 predefinidosA[i]={tag: actoresPelicula[i].className};
	}

	 $('.chipsA').chips({
       placeholder: 'Actores',
       secondaryPlaceholder: '+otros',
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

	
	 //Chips Directores
	 let directores = $('input[name="directores"]');
	 let directoresPelicula = $('input[name="directores"]:not(:disabled)');
	 
	 let tagsD={};
	 for (var i = 0; i < directores.length; i++) {
		 tagsD[directores[i].className]=null;
	 }
	 
	 let predefinidosD = [];
	 for (var i = 0; i < directoresPelicula.length; i++) {
		 predefinidosD[i]={tag: directoresPelicula[i].className};
	}
	 
	 $('.chipsD').chips({
        placeholder: 'Directores',
        secondaryPlaceholder: '+otros',
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
	 
		//Chips generos
		let generos = $('input[name="generos"]');
		let generosPelicula = $('input[name="generos"]:not(:disabled)');
		
		let tagsG = {};
		for(let i=0; i<generos.length; i++){
	    	tagsG[generos[i].className] = null;           	
	    }
		
		let predefinidosG = [];
		for(let i=0; i<generosPelicula.length; i++){
			predefinidosG[i] = {tag: generosPelicula[i].className};
		}
		
		 $('.chipsG').chips({
	         placeholder: 'Generos',
	         secondaryPlaceholder: '+otro',
	         autocompleteOptions: {
	        	 data: tagsG
	         },
	         onChipAdd: function(e, chip){
	             $("."+chip.textContent.replace('close','').replace(' ','.')).removeAttr('disabled');
	         },
	         onChipDelete: function(e, chip){
	        	 $("."+chip.textContent.replace('close','').replace(' ','.')).attr('disabled', 'disabled');
	         },
	         data: predefinidosG,
	     });
	 
	//Chips plataformas
			let plataformas = $('input[name="plataformas"]');
			let plataformasPelicula = $('input[name="plataformas"]:not(:disabled)');
			
			let tagsP = {};
			for(let i=0; i<plataformas.length; i++){
		    	tagsP[plataformas[i].className] = null;           	
		    }
			
			let predefinidosP = [];
			for(let i=0; i<plataformasPelicula.length; i++){
				predefinidosP[i] = {tag: plataformasPelicula[i].className};
			}
			
		console.log(predefinidosP)
			
			 $('.chipsP').chips({
		         placeholder: 'Plataformas',
		         secondaryPlaceholder: '+otra',
		         autocompleteOptions: {
		        	 data: tagsP
		         },
		         onChipAdd: function(e, chip){
		             $("."+chip.textContent.replace('close','').replace(' ','.')).removeAttr('disabled');
		         },
		         onChipDelete: function(e, chip){
		        	 $("."+chip.textContent.replace('close','').replace(' ','.')).attr('disabled', 'disabled');
		         },
		         data: predefinidosP,
		     });
		 

		 
		 

});