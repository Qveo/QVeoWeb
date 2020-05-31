<c:forEach items="${peliculas}" var="pelicula">
	<div id="modal-pelicula-${pelicula.id}" class="modal info">
		<div class="modal-content">
			<div class="row">
				<div class="col s12 m12 l5 imagen-usuario">
					<img id="img-usuario"
						src="${pageContext.request.contextPath}${pelicula.poster}" width="100%" />
				</div>
				<div class="col s12 m12 l7">
					<div class="row">
						<h4 class="titulo">T&iacutetulo</h4>
						<h4 class="titulo-principal">${pelicula.titulo}</h4>
						<h4 class="titulo">Estreno</h4>
						<h5 class="contenido">${pelicula.anio}</h5>
						<h4 class="titulo">Pais</h4>http://localhost:8080/qveo/home#modal-pelicula1-3
						<h5 class="contenido">${pelicula.pais.nombre}</h5>
						<h4 class="titulo">Duraci&oacuten</h4>
						<h5 class="contenido">${pelicula.duracion}</h5>
						<h4 class="titulo">Sinopsis</h4>
						<h5 class="contenido">${pelicula.sinopsis}</h5>
						<h4 class="titulo">Plataformas</h4>
						<h5 class="contenido">${pelicula.plataformasConcatenadas()}</h5>
						<security:authorize access="hasRole('USER')">
							<a class="waves-effect waves-light btn-large add-movie">Agregar
								a mi lista</a>
							<p style="display: none">${pelicula.id}</p>
						</security:authorize>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>