<c:forEach items="${peliculas}" var="pelicula">
	<div id="modal-pelicula${pelicula.id}" class="modal info">
		<div class="modal-content">
			<div class="row">
				<div class="col s12 m12 l5 imagen-usuario">
					<img class="responsive" id="img-usuario"
						src="${pageContext.request.contextPath}${pelicula.poster}" />
				</div>
				<div class="col s12 m12 l7">
					<div class="row">
						<h4 class="titulo">T&iacutetulo</h4>
						<h4 class="titulo-principal">${pelicula.titulo}</h4>
						<h4 class="titulo">Estreno</h4>
						<h5 class="contenido"><fmt:formatDate pattern="dd-MM-yyyy" value="${pelicula.anio}"/></h5>
						<h4 class="titulo">Pais</h4>
						<h5 class="contenido">${pelicula.pais.nombre}</h5>
						<h4 class="titulo">Duraci&oacuten</h4>
						<h5 class="contenido">${pelicula.duracion}</h5>
						<h4 class="titulo">Sinopsis</h4>
						<h5 class="contenido">${pelicula.sinopsis}</h5>
						<h4 class="titulo">Generos</h4>
						<h5 class="contenido">${pelicula.generosConcatenadas()}</h5>
						<h4 class="titulo">Plataformas</h4>
						<h5 class="contenido">${pelicula.plataformasConcatenadas()}</h5>
						<a class="waves-effect waves-light btn-large">A&ntildeadir a
							mi lista</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>