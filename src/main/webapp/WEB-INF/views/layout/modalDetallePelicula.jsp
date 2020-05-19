
<c:forEach items="${peliculas}" var="pelicula">
	<div id="modal-pelicula${pelicula.id}" class="modal bottom-sheet">
		<div class="modal-content">
			<div class="flexbox">
				<img class="imagen-modal" src="${pageContext.request.contextPath}${pelicula.poster}" />
			</div>
			<div class="flexbox">
				<h4 class="titulo">T&iacutetulo</h4>
				<h4 class="titulo-principal">${pelicula.titulo}</h4>
				<h4 class="titulo">Estreno</h4>
				<h5 class="contenido">${pelicula.anio}</h5>
				<h4 class="titulo">Pais</h4>
				<h5 class="contenido">${pelicula.pais.nombre}</h5>
				<h4 class="titulo">Duraci&oacuten</h4>
				<h5 class="contenido">${pelicula.duracion}</h5>
				<h4 class="titulo">Sinopsis</h4>
				<h5 class="contenido">${pelicula.sinopsis}</h5>
				<h4 class="titulo">Plataformas</h4>
				<h5 class="contenido">${pelicula.plataformasConcatenadas()}</h5>
				<a class="waves-effect waves-light btn-large">A&ntildeadir a mi
					lista</a>
			</div>
		</div>
	</div>
</c:forEach>