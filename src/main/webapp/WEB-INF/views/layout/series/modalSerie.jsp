<c:forEach items="${series}" var="serie">
<div id="modal-serie-${serie.id}" class="modal info">
	<div class="modal-content">
		<div class="row">
			<div class="col s12 m12 l5 imagen-usuario">
				<img src="${pageContext.request.contextPath}${serie.poster}"  class="responsive"/>
			</div>
			<div class="col s12 m12 l7">
				<div class="row">
					  <h4 class="titulo">T&iacutetulo</h4>
                        <h4 class="titulo-principal">${serie.titulo}</h4>
                        <h4 class="titulo">Estreno</h4>
                        <h5 class="contenido">${serie.fechaInicio}</h5>
                        <h4 class="titulo">Pais</h4>
                        <h5 class="contenido">${serie.pais.nombre}</h5>
                        <h4 class="titulo">Temporadas</h4>
                        <h5 class="contenido">${serie.temporadas}</h5>
                        <h4 class="titulo">Cap&iacutetulos</h4>
                        <h5 class="contenido">${serie.capitulos}</h5>
                        <h4 class="titulo">Sinopsis</h4>
                        <h5 class="contenido">${serie.sinopsis}</h5>
                        <h4 class="titulo">Plataformas</h4>
                        <h5 class="contenido">${serie.plataformasConcatenadas()}</h5>
				</div>
			</div>
		</div>
	</div>
</div>
</c:forEach>