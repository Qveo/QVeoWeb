<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/plataforma/plataforma.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/modal.css">
<title>${titulo}</title>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="row">
			<div class="input-field col s12 m6 l6 boton">
				<a href="/qveo/plataformas/form"><i
					class="waves-effect waves-light btn agregar-usuario">Nueva
						plataforma</i></a>
			</div>
			<div class="input-field col s12 m6 l6">
				<input id="plataforma-nombre" type="text" class="validate">
				<label for="plataforma-nombre">Introduzca un nombre de
					plataforma</label>
			</div>

		</div>
		<div class="row cabeceras">
			<div class="col s4">Foto</div>
			<div class="col s4">Nombre</div>
			<div class="col s4">Opciones</div>
		</div>
		<c:forEach items="${plataformas}" var="plataforma">
			<div id="${plataforma.nombre}-${plataforma.id}" class="row cuerpo">
				<div class="col s4">
					<img alt="${plataforma.nombre}"
						src="${pageContext.request.contextPath}${plataforma.foto}"
						width="30%">
				</div>
				<div class="col s4">${plataforma.nombre}</div>
				<div class="col s4">
					<div id="${plataforma.id}" class="row opciones">

						<div class="col s12 m3 l6">
							<a href="/qveo/plataformas/edit/${plataforma.id}"
								class="btn-floating btn-large"><i
								class="material-icons editar">edit</i></a>
						</div>
						<div class="col s12 m6 l6">
							<a href="#modal2"
								class="btn-floating btn-large red modal-trigger"><i
								class="material-icons eliminar">delete</i></a>
						</div>

					</div>
				</div>
			</div>
		</c:forEach>

		<div id="modal2" class="modal confirmar">
			<div class="modal-content">
				<h4>Por favor debes confirmar</h4>
				<p>¿Estás seguro de querer eliminar esta plataforma?</p>
			</div>
			<div class="modal-footer">
				<a href="#!" class="waves-effect waves-green btn-flat modal-close">Cancelar</a>
				<a href="#!"
					class="waves-effect waves-green btn-flat modal-close eliminar-plat">Aceptar</a>
			</div>
		</div>
		


		<div id="modal3" class="modal confirmar">
			<div class="modal-content">
				<h4>Plataforma eliminada</h4>
			</div>
			<div class="modal-footer">
				<a href="" class="waves-effect waves-green btn-flat modal-close">Aceptar</a>
			</div>


		</div>



	</main>
	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>

</body>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/plataforma/plataforma.js"></script>


</html>