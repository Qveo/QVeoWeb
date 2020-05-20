 document.addEventListener('DOMContentLoaded', function() {
    
	var elems = document.querySelectorAll('.autocomplete');
    
    document.getElementById('buscar-nombre').addEventListener('click', cargarPeliSerie);
    
    var seriesAutocomplete = {};
    var seriesId = [];
    var valorComprobar = '';
    var idSerie = '';
    
    
    function cargarPeliSerie(){
    	
    	$.ajax({
    		type: 'GET',
    		url: '/qveo/ajax/series',
    		success : function(data) {
    			
    			seriesId = data;
    			console.log(seriesId);
    			
    			for(let i=0; i<data.length; i++){
    				seriesAutocomplete[data[i].titulo]=null;
    			}

    			console.log("SUCCESS : ", data);
    		},
    		error : function(e) {

    			console.log("ERROR : ", e);
    		}
    	});
    	
    }
    
    var instances = M.Autocomplete.init(elems, {
    	data: seriesAutocomplete,
        limit: 5,
        onAutocomplete: function(val){
        	valorComprobar = val;
        	idSerie = seriesId.filter(comprobarSerie);
        	posicion = window.location.href.indexOf('/qveo');
        	window.location.href = window.location.href.substring(0,21) + '/qveo/serie/'+idSerie[0].id;
        	
        	
        }
    });
    
    function comprobarSerie(serie){
    	return serie.titulo == valorComprobar;
    }
    
    
});