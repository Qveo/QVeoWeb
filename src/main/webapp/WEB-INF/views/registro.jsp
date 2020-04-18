
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Registro nuevo usuario</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/registro.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="row">
			<c:choose>
				<c:when test="${edit}">
					<c:set var="action" scope="session"
						value="/qveo/usuario/update/${nuevoUsuario.id}" />
				</c:when>
				<c:otherwise>
					<c:set var="action" scope="session" value="/qveo/usuario/form/add" />
				</c:otherwise>
			</c:choose>
			<form:form method="POST" action="${action}"
				modelAttribute="nuevoUsuario" enctype="multipart/form-data"
				class="col s12 white-text">

				<div class="row">
					<div class="input-field col s12 m6 l6 offset-l3">
						<form:input path="nombre" id="first_name" class="validate" />
						<form:label path="nombre">Nombre</form:label>
						<form:errors path="nombre" style="color:red"></form:errors>
					</div>
					<div class="input-field col s12 m6 l6 offset-l3">
						<form:input path="apellidos" id="last_name" class="validate" />
						<form:label path="apellidos">Apellidos</form:label>
						<form:errors path="apellidos" style="color:red"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12 m6 l6 offset-l3">
						<form:input id="email" type="email" path="email" class="validate" />
						<form:label path="email">Email</form:label>
						<span class="helper-text" data-error="email inválido" data-success="Perfecto!"></span>
						<form:errors path="email" style="color:red"></form:errors>
					</div>
					<div class="input-field col s12 m6 l6 offset-l3">
						<form:password id="password" path="password" class="validate" />
						<form:label path="password">Password</form:label>
					</div>
				</div>
				<div class="row">
					<div class="col s12 m12 l6 offset-l3">
						<form:label path="sexo">Género</form:label>
					</div>
				</div>
				<div class="row">
					<div class="col s12 m12 l6 offset-l3">
						<form:label for="mas" path="sexo">
							<form:radiobutton id="mas" path="sexo" value="M" />
							<span>Masculino</span>
						</form:label>
						<form:label for="fem" path="sexo">
							<form:radiobutton id="fem" path="sexo" value="F" />
							<span>Femenino</span>
						</form:label>
					</div>
				</div>
				<div class="row">
					<div class="col s12 m12 l6 offset-l3">
						<form:label path="fechaNacimiento">Fecha de Nacimiento</form:label>
						<form:input id="date" type="date" path="fechaNacimiento" />
						<form:errors path="fechaNacimiento" style="color:red"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="col s12 m12 l6 offset-l3">
						<form:label path="foto">Imagen de perfil</form:label>
						<input type="file" name="file" />
						<form:errors path="foto" style="color:red"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="col s12 m12 l6 offset-l3">
						<c:choose>
							<c:when test="${edit}">
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
					</div>
				</div>
			</form:form>
		</div>
	</main>
	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>

</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
