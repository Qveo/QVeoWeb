<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>QVeo web</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/listaSerie.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="container">
			<div class="row">
				<div class="input-field col s12 m6 l6 boton">
					<a href="/qveo/serie/form"><i
						class="waves-effect waves-light btn agregar-usuario">Nueva
							Serie</i></a>
				</div>

			</div>

			<div class="row cabeceras">
				<div class="col s3">Poster</div>
				<div class="col s3">Titulo</div>
				<div class="col s3">Fecha de inicio</div>
				<div class="col s3">Opciones</div>
			</div>



			<c:forEach items="${series}" var="serie">
				<div id="${serie.id}" class="row cuerpo">
					<div class="col s3">
						<img alt="${serie.titulo}"
							src="${pageContext.request.contextPath}${serie.poster}"
							width="40%">
					</div>
					<div class="col s3">${serie.titulo}</div>
					<div class="col s3">${serie.fechaInicio}</div>
					<div class="col s3">
						<div id="${serie.id}" class="row cuerpo">
							<div class="col s12 m3 l4">
								<!-- Modal de detalle serie ver -->
								<a class="btn-floating btn-large modal-trigger"
									href="#modal-serie-${serie.id}"><i class="material-icons">visibility</i></a>
							</div>
							<div class="col s12 m3 l4">
								<a href="/qveo/serie/edit/${serie.id}"
									class="btn-floating btn-large"><i
									class="material-icons editar">edit</i></a>
							</div>
							<div class="col s12 m6 l4">
								<a href="#modal2"
									class="btn-floating btn-large red modal-trigger"><i
									class="material-icons eliminar">delete</i></a>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			

			<!-- Modal datos serie -->
			<%@include file="/WEB-INF/views/layout/modalSerie.jsp" %>

			
			<!-- Confirar eliminar usuario -->
			<!--  <div id="modal2" class="modal confirmar">
				<div class="modal-content">
					<h4>Por favor debes confirmar</h4>
					<p>¿Estás seguro de querer eliminar a este usuario?</p>
				</div>
				<div class="modal-footer">
					<a href="#!" class="waves-effect waves-green btn-flat modal-close">Cancelar</a>
					<a href="/qveo/serie/delete/${serie.id}" class="waves-effect waves-green btn-flat modal-close eliminar-usuario">Aceptar</a>
				</div>
			</div>-->


		</div>

	</main>


	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>
	<!-- /qveo/serie/delete/${serie.id} -->
</body>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/serie.js"></script>

</html>