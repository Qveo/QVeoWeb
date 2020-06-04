document.addEventListener('DOMContentLoaded', function() {
	
	if(userLogin.id != 'undefined'){
		addEventListenCardSerie();
		addEventListenCardMovie();			
	}
	
	function addEventListenCardSerie(){
		if(document.querySelectorAll('.btn-delete-serie').length > 0){
			addSerie = document.querySelectorAll('.btn-delete-serie');
			for(let i=0; i<addSerie.length; i++){
				addSerie[i].addEventListener('click',deleteSerie);
			}
		}
	}
	
	function addEventListenCardMovie(){
		if(document.querySelectorAll('.btn-delete-movie').length > 0){
			addMovie = document.querySelectorAll('.btn-delete-movie');
			for(let i=0; i<addMovie.length; i++){
				addMovie[i].addEventListener('click',deleteMovie);
			}
		}
	}
	
	function deleteSerie(e){
		idSerie = e.target.nextElementSibling.innerHTML;
		let deleteResource = {};
		deleteResource['idUser']=userLogin.id;
		deleteResource['idResource']=idSerie;
		ajaxDeleteSerie(deleteResource);
	}
	
	function deleteMovie(e){
		idPelicula = e.target.nextElementSibling.innerHTML;
		let deleteResource = {};
		deleteResource['idUser']=userLogin.id;
		deleteResource['idResource']=idPelicula;;
		ajaxDeleteMovie(deleteResource);
	}

	function ajaxDeleteSerie(dataDelete){
		 $.ajax({
		        type: "POST",
		        contentType: "application/json",
		        url: "/qveo/ajax/add/serie",
		        data: JSON.stringify(dataDelete),
		        dataType: 'json',
		        success: (data) => {
		        	removeSerieCard(dataDelete.idResource);
		        	console.log("SUCCESS : ", data);
		        },
		        error: (e) => console.log("ERROR : ", e)
		    });
	}
	
	function ajaxDeleteMovie(dataDelete){
		 $.ajax({
		        type: "POST",
		        contentType: "application/json",
		        url: "/qveo/ajax/add/movie",
		        data: JSON.stringify(dataDelete),
		        dataType: 'json',
		        success: (data) => {
		        	removeMovieCard(dataDelete.idResource);
		        	console.log("SUCCESS : ", data);
		        },
		        error: (e) => console.log("ERROR : ", e)
		    });
	}
	
	function removeSerieCard(idResource){
		document.getElementById(`card-serie-${idResource}`).remove();
	}
	
	function removeMovieCard(idResource){
		document.getElementById(`card-movie-${idResource}`).remove();
	}
});