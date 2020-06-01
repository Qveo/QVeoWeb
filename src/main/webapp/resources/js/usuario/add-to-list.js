
var modalsSerie=[];
document.addEventListener('DOMContentLoaded', function() {
	var addSerie=[];
	var addMovie=[];
	var modalsMovie=[];
	var seriesUser=null;
	var moviesUser=null;
	$('.modal').modal();
	addEventListenSerie();
	addEventListenMovie();	

	function addSerieToList(e){
		idSerie = e.target.nextElementSibling.innerHTML;
		let addResource = {};
		console.log(userLogin.series);
		addResource['idUser']=userLogin.id;
		addResource['idResource']=idSerie;
		ajaxSerie(addResource);
	}
	
	function addMovieToList(e){
		idPelicula = e.target.nextElementSibling.innerHTML;
		let addResource = {};
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
		        	seriesUser=data.series;
		        	console.log("SUCCESS : ", data)
		        },
		        error: (e) => console.log("ERROR : ", e)
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
		        	moviesUser=data.peliculas;
		            console.log("SUCCESS : ", data);
		        },
		        error: (e) => console.log("ERROR : ", e)
		    });
	}
	
	function changeColor(e){
		if(e.currentTarget.classList.contains("boton-agregar")){
			e.currentTarget.classList.remove("boton-agregar");
			e.currentTarget.classList.add("boton-eliminar");
			e.currentTarget.innerHTML = "Eliminar de mi lista";
		}else{
			let idCurrent = e.currentTarget.nextElementSibling.innerHTML;
			console.log(e.currentTarget.nextElementSibling.classList.contains("id-series"));
			if(e.currentTarget.nextElementSibling.classList.contains("id-series")){
				let positions = checkPositionsModalButton(modalsSerie, idCurrent);
				for(let i=0; i<positions.length; i++){
					console.log(modalsSerie[positions[i]]);
					modalsSerie[positions[i]].classList.remove("boton-eliminar");
					modalsSerie[positions[i]].classList.add("boton-agregar");
					modalsSerie[positions[i]].innerHTML = "Agregar de mi lista"
				}
			}
			e.currentTarget.classList.remove("boton-eliminar");
			e.currentTarget.classList.add("boton-agregar");
			e.currentTarget.innerHTML = "Agregar de mi lista"
		}
	}
	
	function setSeriesOfUser(e){
		var series = document.getElementsByClassName('id-series');
		var posicion = e.currentTarget.href.lastIndexOf('-')+1;
		var idSer = e.currentTarget.href.substring(posicion);
		//console.log(e.currentTarget);
		if(seriesUser == null) seriesUser = userLogin.series;
		if(findId(seriesUser, idSer)){
			let positions = checkPosition(series, idSer);
			for(let i = 0; i<positions.length; i++){
				series[positions[i]].previousElementSibling.classList.remove("boton-agregar");
				series[positions[i]].previousElementSibling.classList.add("boton-eliminar");
				series[positions[i]].previousElementSibling.innerHTML = "Eliminar de mi lista";
			}
		}
		
	}
	
	function setMoviesOfUser(e){
		var movies = document.getElementsByClassName('id-movies');
		var posicion = e.currentTarget.href.lastIndexOf('-')+1;
		var idMov = e.currentTarget.href.substring(posicion);
		if(moviesUser == null) moviesUser = userLogin.peliculas;
		if(findId(moviesUser, idMov)){
			var positions = checkPosition(movies, idMov);
			for(let i = 0; i<positions.length; i++){
				movies[positions[i]].previousElementSibling.classList.remove("boton-agregar");
				movies[positions[i]].previousElementSibling.classList.add("boton-eliminar");
				movies[positions[i]].previousElementSibling.innerHTML = "Eliminar de mi lista";
			}	
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
		let posiciones = [];
		for(let i=0; i<userCollection.length; i++){
			if(userCollection[i].innerHTML == currentId){
				posiciones.push(i);
			}
		}
		return posiciones;
	}
	
	function checkPositionsModalButton(buttonsCollection, currentId){
		let buttons=[];
		for(let i=0; i<buttonsCollection.length; i++){
			if(buttonsCollection[i].href.lastIndexOf('-')+1 == currentId){
				buttons.push(i);
			}
		}
		return buttons;
	}
});