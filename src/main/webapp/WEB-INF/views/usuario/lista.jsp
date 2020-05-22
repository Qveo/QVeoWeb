<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<title>${titulo}</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/materialize.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<!--  <link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/tabla.css">-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/usuario/lista.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="container">
			<div class="row">
				<div class="input-field col s12 m6 l6 boton">
					<a href="/qveo/usuario/form"><i
						class="waves-effect waves-light btn agregar-usuario">Nuevo
							Usuario</i></a>
				</div>
				<div class="input-field col s12 m6 l6">
					<input id="usuario-nombre" type="text" class="validate"> <label
						for="usuario-nombre">Introduzca un nombre de usuario</label>
				</div>
			</div>
			<div class="row cabeceras">
				<div class="col s4">Nombre</div>
				<div class="col s4">Apellidos</div>
				<div class="col s4">Opciones</div>
			</div>
				<c:forEach items="${usuarios}" var="usuario">
					<div id="${usuario.nombre}-${usuario.id}" class="row cuerpo">
						<div class="col s4">${usuario.nombre}</div>
						<div class="col s4">${usuario.apellidos}</div>
						<div class="col s4">
							<div id="${usuario.id}" class="row opciones">
								<div class="col s12 m3 l4">
									<a class="btn-floating btn-large modal-trigger mostrar-usuario"
										href="#modal1"><i class="material-icons">visibility</i></a>
								</div>
								<div class="col s12 m3 l4">
									<a href="/qveo/usuario/edit/${usuario.id}" class="btn-floating btn-large"><i
										class="material-icons editar">edit</i></a>
								</div>
								<div class="col s12 m6 l4">
									<a href="#modal2" class="btn-floating btn-large red modal-trigger"><i class="material-icons eliminar">delete</i></a>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
			<!-- Modal datos usuario -->
			<%@include file="/WEB-INF/views/layout/modalDetalleUsuario.jsp" %>
			<%-- <div id="modal1" class="modal info">
				<div id="contenido" class="modal-content contenido-ajax">
					<div class="row">
						<div id="img-usuario" class="col s12 m12 l5 imagen-usuario"><img src="${pageContext.request.contextPath}"></div>
						<div id="info-usuario" class="col s12 m12 l7"></div>
					</div>
				</div>
			</div> --%>
			<!-- Confirar eliminar usuario -->
			<div id="modal2" class="modal confirmar">
				<div class="modal-content">
					<h4>Por favor debes confirmar</h4>
					<p>¿Estás seguro de querer eliminar a este usuario?</p>
				</div>
				<div class="modal-footer">
					<a href="#!" class="waves-effect waves-green btn-flat modal-close">Cancelar</a>
					<a href="#!" class="waves-effect waves-green btn-flat modal-close eliminar-usuario">Aceptar</a>
				</div>
			</div>
		</div>
	</main>
	<footer class="page-footer">
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/usuario/lista.js"></script>
</body>
</html>