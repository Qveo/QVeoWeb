<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/director/director.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/modal.css">
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<title>${titulo}</title>
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="container">
			<div class="row">
				<div class="input-field col s12 m6 l6 boton">
					<a href="/qveo/admin/directores/form"><i
						class="waves-effect waves-light btn agregar-usuario">Nueva
							director</i></a>
				</div>
			</div>
			<div class="row cabeceras">
				<div class="col s1 l3"></div>
				<div class="col s6 l6">Nombre</div>
				<div class="col s5 l3">Opciones</div>
			</div>
			<c:forEach items="${directores}" var="director">
				<div id="${director.nombre}-${director.id}" class="row cuerpo">
					<div class="col s1 l3"></div>
					<div class="col s6 l6">${director.nombre}</div>
					<div id="${director.id}" class="col s3 l3">
						<div id="${director.id}" class="row opciones">
							<div class="col s12 m6 l6">
								<a href="/qveo/admin/directores/edit/${director.id}"
									class="btn-floating btn-large"><i
									class="material-icons editar">edit</i></a>
							</div>
							<div class="col s12 m6 l6">
								<a href="#modal2-director-${director.id}"
									class="btn-floating btn-large red modal-trigger"><i
									class="material-icons eliminar">delete</i></a>
							</div>

						</div>
					</div>
				</div>
			</c:forEach>
			<c:forEach items="${directores}" var="director">
				<div id="modal2-director-${director.id}" class="modal confirmar">
					<div class="modal-content modalAdmin">
						<h4>Por favor debes confirmar</h4>
						<p>¿Estás seguro de querer eliminar este director?</p>
					</div>
					<div class="modal-footer">
						<a href="#!" class="waves-effect waves-green btn-flat modal-close">Cancelar</a>
						<a href="/qveo/admin/directores/delete/${director.id}"
							class="waves-effect waves-green btn-flat modal-close">Aceptar</a>
					</div>
				</div>
			</c:forEach>
		</div>

	</main>
	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>

</body>
<script
	src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/director/director.js"></script>

</html>
