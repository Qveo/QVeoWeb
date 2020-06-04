<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<c:choose>
	<c:when test="${editar}">
		<title>Actualizar de una genero</title>
	</c:when>
	<c:otherwise>
		<title>Registro de una genero</title>
	</c:otherwise>
</c:choose>


<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/materialize.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/genero/registro.css">
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<section>
			<div class="row">
				<div class="col s2 l2"></div>
				<div class="col s8 l8">
					<form:form method="POST" action="/qveo/admin/genero/form"
						modelAttribute="generoNuevo"
						class="input-field col s12 l8 formato">
						<form:label path="nombre">Nombre del Genero</form:label>
						<form:input path="nombre" id="nombre" />
						<form:errors path="nombre" style="color:red"></form:errors>
						<div style="color: red">${errorNombre}</div>
						<c:choose>
							<c:when test="${editar}">
								<form:hidden path="id" />
							</c:when>
						</c:choose>
						<c:choose>
							<c:when test="${editar}">
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Actualizar <i class="material-icons right">send</i>
								</button>
							</c:when>
							<c:otherwise>
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Registrarse <i class="material-icons right">send</i>
								</button>
							</c:otherwise>
						</c:choose>
					</form:form>
				</div>
				<div class="col s2 l2"></div>
			</div>
		</section>
	</main>
	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/materialize.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>
</body>
</html>