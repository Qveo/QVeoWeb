
document.addEventListener('DOMContentLoaded', function() {
	var addMovie;
	var moviesUser=null;
	if (document.querySelector('.desplegable-user') != null) {
		setTimeout(()=>{
			addEventListenMovie();			
			setBtnMovieOfUser();		
		},1000);
	}

	function addMovieToList(e){
		idMovie= e.currentTarget.nextElementSibling.innerHTML;
		let addResource = {};
		console.log(userLogin.series);
		addResource['idUser']=userLogin.id;
		addResource['idResource']=idMovie;
		ajaxMovie(addResource);
	}
	
	function addEventListenMovie(){
			addMovie = document.getElementById('btn-movie');
			addMovie.addEventListener('click',addMovieToList);
			addMovie.addEventListener('click',changeColor);
	}
	
	function ajaxMovie(dataAdd){
		 $.ajax({
		        type: "POST",
		        contentType: "application/json",
		        url: "/qveo/ajax/add/movie",
		        data: JSON.stringify(dataAdd),
		        dataType: 'json',
		        success: (data) => {
		        	moviesUser=data.series;
		        	console.log("SUCCESS : ", data)
		        },
		        error: (e) => console.log("ERROR : ", e)
		    });
	}
	
	function changeColor(e){
		if(e.currentTarget.classList.contains("boton-agregar")){
			e.currentTarget.classList.remove("boton-agregar");
			e.currentTarget.classList.add("boton-eliminar");
			e.currentTarget.innerHTML = "Eliminar de mi lista";
		}else if(e.currentTarget.classList.contains("boton-eliminar")) {
			e.currentTarget.classList.remove("boton-eliminar");
			e.currentTarget.classList.add("boton-agregar");
			e.currentTarget.innerHTML = "Agregar a mi lista"
		}
	}
	
	function setBtnMovieOfUser(){
		var idMovie = document.getElementById('id-movie').innerHTML;
		if(moviesUser == null) moviesUser = userLogin.peliculas;
		console.log(moviesUser);
		addMovie.classList.remove("btn-oculto");
		if(findId(moviesUser, idMovie)){
			setButton(addMovie);
		}
	}
	
	function setButton(btnSerie){
		btnSerie.classList.remove("boton-agregar");
		btnSerie.classList.add("boton-eliminar");
		btnSerie.innerHTML = "Eliminar de mi lista";
	}
	
	function findId(userCollection, currentId){
		for(let i=0; i<userCollection.length; i++){
			if(userCollection[i].id == currentId){
				return true;
			}
		}
		return false;
	}
});