document.addEventListener('DOMContentLoaded', function() {
	var addSerie=[];
	var modalsSerie=[];
	var addMovie=[];
	var modalsMovie=[];
	var seriesUser=[];
	var moviesUser=[];
	$('.modal').modal();
	addEventListenSerie();
	addEventListenMovie();
});

	function addSerieToList(e){
		idSerie = e.target.nextElementSibling.innerHTML;
		var addResource = {};
		console.log(userLogin.series);
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
			modalsSerie = document.querySelectorAll('.mod-serie');
			for(let i=0; i<addSerie.length; i++){
				addSerie[i].addEventListener('click',addSerieToList);
				addSerie[i].addEventListener('click',changeColor);
				modalsSerie[i].addEventListener('click',setSeriesOfUser);
			}
		}
	}
	
	function addEventListenMovie(){
		if(document.querySelectorAll('.add-movie').length > 0){
			addMovie = document.querySelectorAll('.add-movie');
			modalsMovie = document.querySelectorAll('.mod-movie');
			for(let i=0; i<addMovie.length; i++){
				addMovie[i].addEventListener('click',addMovieToList);
				addMovie[i].addEventListener('click',changeColor);
				modalsMovie[i].addEventListener('click',setMoviesOfUser);
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
		        	peliculasUser=data.peliculas;
		            console.log("SUCCESS : ", data);
		        },
		        error: (e) => {
		            console.log("ERROR : ", e);
		        }
		    });
	}
	
	function changeColor(e){
		if(e.currentTarget.classList.contains("boton-agregar")){
			e.currentTarget.classList.remove("boton-agregar");
			e.currentTarget.classList.add("boton-eliminar");
			e.currentTarget.innerHTML = "Eliminar de mi lista";
		}else{
			e.currentTarget.classList.remove("boton-eliminar");
			e.currentTarget.classList.add("boton-agregar");
			e.currentTarget.innerHTML = "Agregar de mi lista"
		}
	}
	
	function setSeriesOfUser(e){
		var series = document.getElementsByClassName('id-series');
		var posicion = e.currentTarget.href.lastIndexOf('-')+1;
		var idSer = e.currentTarget.href.substring(posicion);
		if(findId(userLogin.series, idSer)){
			var position = checkPosition(series, idSer);
			series[position].previousElementSibling.classList.remove("boton-agregar");
			series[position].previousElementSibling.classList.add("boton-eliminar");
			series[position].previousElementSibling.innerHTML = "Eliminar de mi lista";
		}
		
	}
	
	function setMoviesOfUser(e){
		console.log(e.currentTarget);
		var movies = document.getElementsByClassName('id-movies');
		var posicion = e.currentTarget.href.lastIndexOf('-')+1;
		var idMov = e.currentTarget.href.substring(posicion);
		if(findId(userLogin.peliculas, idMov)){
			var position = checkPosition(movies, idMov);
			movies[position].previousElementSibling.classList.remove("boton-agregar");
			movies[position].previousElementSibling.classList.add("boton-eliminar");
			movies[position].previousElementSibling.innerHTML = "Eliminar de mi lista";
		}
		
	}
	
	function findId(userCollection, currentId){
		for(let i=0; i<userCollection.length; i++){
			if(userCollection[i].id == currentId){
				return true;
			}
		}
		return false;
	}
	
	function checkPosition(userCollection,currentId){
		for(let i=0; i<userCollection.length; i++){
			if(userCollection[i].innerHTML == currentId){
				return i;
			}
		}
		return -1;
	}