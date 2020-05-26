<c:forEach items="${directores}" var="director">
	<div id="modal-director${director.id}" class="modal info">
		<div class="modal-content">
			<div class="row">
				<div class="col s12 m12 l5 imagen-director">
					<img id="img-director"
						src="${pageContext.request.contextPath}${director.foto}" />
				</div>
				<div class="col s12 m12 l7">
					<div class="row">

						<h4 class="titulo">Nombre</h4>
						<h4 class="titulo-principal">${director.nombre}</h4>

					</div>
				</div>
			</div>
		</div>
	</div>
</c:forEach>