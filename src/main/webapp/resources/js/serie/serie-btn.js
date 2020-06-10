
document.addEventListener('DOMContentLoaded', function() {
	var addSerie;
	var seriesUser=null;
	if (document.querySelector('.desplegable-user') != null) {
		setTimeout(()=>{
			addEventListenSerie();			
			setBtnSerieOfUser();		
		},1000);
	}

	function addSerieToList(e){
		idSerie = e.currentTarget.nextElementSibling.innerHTML;
		let addResource = {};
		console.log(userLogin.series);
		addResource['idUser']=userLogin.id;
		addResource['idResource']=idSerie;
		ajaxSerie(addResource);
	}
	
	function addEventListenSerie(){
			addSerie = document.getElementById('btn-serie');
			addSerie.addEventListener('click',addSerieToList);
			addSerie.addEventListener('click',changeColor);
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
	
	function setBtnSerieOfUser(){
		var idSer = document.getElementById('id-serie').innerHTML;
		if(seriesUser == null) seriesUser = userLogin.series;
		console.log(seriesUser);
		addSerie.classList.remove("btn-oculto");
		if(findId(seriesUser, idSer)){
			setButton(addSerie);
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