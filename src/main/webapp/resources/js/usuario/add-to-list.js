document.addEventListener('DOMContentLoaded', function() {
	var addSerie="";
	var addMovie="";
	$('.modal').modal();
	addEventListenSerie();
	addEventListenMovie();
});

	function addSerieToList(e){
		//console.log(e.target.nextElementSibling.innerHTML);
		idSerie = e.target.nextElementSibling.innerHTML;
		var addResource = {};
		
		addResource['idUser']=userLogin.id;
		addResource['idResource']=idSerie;
		ajaxSerie(addResource);
	}
	
	function addMovieToList(e){
		console.log(e.target.nextElementSibling.innerHTML);
		idPelicula = e.target.nextElementSibling.innerHTML;
		var addResource = {};
		
		addResource['idUser']=userLogin.id;
		addResource['idResource']=idPelicula;
		ajaxMovie(addResource);
	}
	
	function addEventListenSerie(){
		if(document.querySelectorAll('.add-serie').length > 0){
			addSerie = document.querySelectorAll('.add-serie');
			for(let i=0; i<addSerie.length; i++){
				addSerie[i].addEventListener('click',addSerieToList);			
			}
		}
	}
	
	function addEventListenMovie(){
		if(document.querySelectorAll('.add-movie').length > 0){
			addMovie = document.querySelectorAll('.add-movie');
			for(let i=0; i<addMovie.length; i++){
				addMovie[i].addEventListener('click',addMovieToList);			
			}
		}
	}
	
	function ajaxSerie(dataAdd){
		 $.ajax({
		        type: "POST",
		        contentType: "application/json",
		        url: "/qveo/ajax/add/serie",
		        data: JSON.stringify(dataAdd),
		        dataType: 'json',
		        success: (data) => {
		            console.log("SUCCESS : ", data);
		        },
		        error: (e) => {
		            console.log("ERROR : ", e);
		        }
		    });
	}
	
	function ajaxMovie(dataAdd){
		 $.ajax({
		        type: "POST",
		        contentType: "application/json",
		        url: "/qveo/ajax/add/movie",
		        data: JSON.stringify(dataAdd),
		        dataType: 'json',
		        success: (data) => {
		            console.log("SUCCESS : ", data);
		        },
		        error: (e) => {
		            console.log("ERROR : ", e);
		        }
		    });
	}