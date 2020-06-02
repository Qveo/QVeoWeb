<div id="card-movie-${pelicula.id}" class="col s12 l4">
	<div class="card large">
		<div class="card-image waves-effect waves-block waves-light">
			<img class="activator"
				src="${pageContext.request.contextPath}${pelicula.poster}">
		</div>
		<div class="card-content z-depth-1">
			<span class="card-title activator">${pelicula.titulo}<i
				class="material-icons right">more_vert</i></span>
		</div>
		<div class="card-reveal">
			<span class="card-title">${pelicula.titulo}<i
				class="material-icons right">close</i></span>
			<p>${pelicula.sinopsis}</p>
		</div>
		<div class="card-action background-card">
			<a class="waves-effect btn boton-ver"
				href="${pageContext.request.contextPath}/serie/${serie.id}">Ver
				información</a> 
			<a class="waves-effect btn red btn-delete-movie">Eliminar de mi lista</a>
			<p style="display: none">${pelicula.id}</p>
		</div>
	</div>
</div>
