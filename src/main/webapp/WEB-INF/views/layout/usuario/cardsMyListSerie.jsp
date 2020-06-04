<div id="card-serie-${serie.id}" class="col s12 m6 l4">
	<div class="card large background-card z-depth-2">
		<div class="card-image waves-effect waves-block waves-light">
			<img class="activator"
				src="${pageContext.request.contextPath}${serie.poster}">
		</div>
		<div class="card-content">
			<span class="card-title activator background-card">${serie.titulo}<i
				class="material-icons right">more_vert</i></span>
		</div>
		<div class="card-reveal">
			<span class="card-title">${serie.titulo}<i
				class="material-icons right">close</i></span>
			<p>${serie.sinopsis}.</p>
		</div>
		<div class="card-action background-card ">
			<div class="row">
				<div class="col s12 m6 l6">
					<a class="waves-effect btn boton-ver boton-anchura z-depth-2"
						href="${pageContext.request.contextPath}/serie/${serie.id}">Ver
						información</a>
				</div>
				<div class="col s12 m6 l6">
					<a class="waves-effect btn red btn-delete-serie boton-anchura z-depth-2">Eliminar de mi
						lista</a>
					<p style="display: none">${serie.id}</p>
				</div>
			</div>
		</div>
	</div>
</div>
