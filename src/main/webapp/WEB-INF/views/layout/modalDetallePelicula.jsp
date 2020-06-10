<c:forEach items="${plataforma.peliculaPlataformas}"
	var="peliculaPlataformas">
	<c:if test="${peliculaPlataformas.fechaCaducidad eq null or
			DateUtils.isDateGreaterThanToday(peliculaPlataformas.fechaCaducidad)}">
		<div
			id="modal-pelicula${plataforma.id}-${peliculaPlataformas.pelicula.id}"
			class="modal bottom-sheet">
			<div class="modal-content container row">
				<div class="col s12 m4 l4">
					<img class="imagen-modal"
						src="${pageContext.request.contextPath}${peliculaPlataformas.pelicula.poster}" />
				</div>
				<div class="col s12 m4 l4">
					<h4 class="titulo">T&iacutetulo</h4>
					<h4 class="titulo-principal">${peliculaPlataformas.pelicula.titulo}</h4>
					<h4 class="titulo">Estreno</h4>
					<h5 class="contenido">${peliculaPlataformas.pelicula.anio}</h5>
					<h4 class="titulo">Pais</h4>
					<h5 class="contenido">${peliculaPlataformas.pelicula.pais.nombre}</h5>
					<h4 class="titulo">Duraci&oacuten</h4>
					<h5 class="contenido">${peliculaPlataformas.pelicula.duracion}</h5>
					<h4 class="titulo">G&eacuteneros</h4>
					<h5 class="contenido">${peliculaPlataformas.pelicula.generosConcatenadas()}</h5>
					<h4 class="titulo">Plataformas</h4>
					<h5 class="contenido">${peliculaPlataformas.pelicula.plataformasConcatenadas()}</h5>
				</div>
				<div class="col s12 m4 l4">
					<h4 class="titulo">Sinopsis</h4>
					<h5 class="contenido sinopsis">${peliculaPlataformas.pelicula.sinopsis}</h5>
					<a
					class="waves-effect btn-large boton-ver z-depth-2 col s8 offset-s2"
					href="${pageContext.request.contextPath}/peliculas/${peliculaPlataformas.pelicula.id}">Ver
					informaci&oacuten</a>
					<security:authorize access="hasRole('USER')">
						<a
						class="waves-effect btn-large add-movie boton-agregar z-depth-2 col s8 offset-s2">Agregar
						a mi lista</a>
						<p class="id-movies" style="display: none">${peliculaPlataformas.pelicula.id}</p>
					</security:authorize>
				</div>
			</div>
		</div>
	</c:if>
</c:forEach>
