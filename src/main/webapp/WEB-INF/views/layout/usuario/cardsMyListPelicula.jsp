<div id="card-movie-${pelicula.id}" class="col s12 m6 l4">
	<div class="card large background-card z-depth-2">
		<div class="card-image waves-effect waves-block waves-light">
			<img class="activator"
				src="${pageContext.request.contextPath}${pelicula.poster}">
		</div>
		<div class="card-content">
			<span class="card-title activator">${pelicula.titulo}<i
				class="material-icons right">more_vert</i></span>
		</div>
		<div class="card-reveal">
			<span class="card-title">${pelicula.titulo}<i
				class="material-icons right">close</i></span>
			<p>${pelicula.sinopsis}</p>
		</div>
		<div class="card-action">
			<div class="row">
				<div class="col s12 m6 l6">
					<a class="waves-effect btn boton-ver boton-anchura z-depth-2"
						href="${pageContext.request.contextPath}/peliculas/${pelicula.id}">Ver
						información</a>
				</div>
				<div class="col s12 m6 l6">
					<a class="waves-effect btn red btn-delete-movie boton-anchura z-depth-2">Eliminar de mi
						lista</a>
					<p style="display: none">${pelicula.id}</p>
				</div>
			</div>
		</div>
	</div>
</div>
