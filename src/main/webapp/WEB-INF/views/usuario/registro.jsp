
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>  
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Registro nuevo usuario</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/materialize.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/usuario/registro.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="container">
			<c:url var="actionUrl" value="/usuario/form/add" />
			<form:form method="POST" action="${actionUrl}"
				modelAttribute="nuevoUsuario" enctype="multipart/form-data"
				class="col s12 m12 l6 offset-l3 white-text">
				<!-- nombre y apellidos usuario -->
				<div class="row">
					<div class="input-field col s12 m6 l6 offset-l3">
						<form:input path="nombre" id="first_name" class="validate" />
						<form:label for="first_name" path="nombre">Nombre</form:label>
						<form:errors path="nombre" style="color:red"></form:errors>
					</div>
					<div class="input-field col s12 m6 l6 offset-l3">
						<form:input path="apellidos" id="last_name" class="validate" />
						<form:label for="last_name" path="apellidos">Apellidos</form:label>
						<form:errors path="apellidos" style="color:red"></form:errors>
					</div>
				</div>
				<!-- email y password usuario -->
				<div class="row">
					<div class="input-field col s12 m6 l6 offset-l3">
						<form:input id="email" type="email" path="email" class="validate" />
						<form:label for="email" path="email">Email</form:label>
						<span class="helper-text" data-error="email inválido"
							data-success="Perfecto!"></span>
						<form:errors path="email" style="color:red"></form:errors>
					</div>
					<div class="input-field col s12 m6 l6 offset-l3">
						<c:choose>
							<c:when test="${edit}">
								<form:input value="${nuevoUsuario.password}" id="password"
									class="validate" path="password" />
								<form:label for="password" path="password">Password</form:label>
							</c:when>
							<c:otherwise>
								<form:password id="password" path="password" showPassword="true"
									class="validate" />
								<form:label for="password" path="password">Password</form:label>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				<div class="row">
					<div class="col s12 m12 l6 offset-l3">
						<form:label path="sexo">Género</form:label>
					</div>
				</div>
				<!--  genero usuario -->
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
				<!--  fecha nacimiento usuario -->
				<div class="row">
					<div class="col s12 m12 l6 offset-l3">
						<form:label for="date" path="fechaNacimiento">Fecha de Nacimiento</form:label>
						<form:input id="date" class="datepicker" path="fechaNacimiento" />
						<form:errors path="fechaNacimiento" style="color:red"></form:errors>
					</div>
				</div>
				<!-- pais usuario -->
				<div class="row">
					<div class="col s12 m12 l6 offset-l3">
						<form:select path="pais" multiple="false">
							<form:option value="">Pais de residencia</form:option>
							<form:options items="${paises}" itemLabel="nombre" />
						</form:select>
					</div>
				</div>
				
				<!-- plataformas de usuario -->
				<%@include file="/WEB-INF/views/layout/chipsPlataforma.jsp" %>

				<!-- Imagen de usuario -->
				<c:if test="${edit}">
					<div class="row">
						<div class="col s12 m8 offset-m2 l6 offset-l3">
							<div class="row valign-wrapper">
								<form:input path="id" type="hidden" />
								<div class="col s6">
									<img width="200px"
										src="${pageContext.request.contextPath}${nuevoUsuario.foto}"
										alt="" class="circle responsive-img">
								</div>
								<div class="col s6">
									<span> Imagen de ${nuevoUsuario.nombre} con id:
										${nuevoUsuario.id} </span>
								</div>
							</div>
						</div>
					</div>
				</c:if>
				<!-- foto -->
				<div class="row">
					<div class="col s12 m12 l6 offset-l3">
						<div class="file-field input-field">
							<div class="btn">
								<form:label path="foto">
									<span>Imagen de perfil</span>
								</form:label>
								<input type="file" name="file" required />
								<form:errors path="foto" class="error"></form:errors>
							</div>
							<div class="file-path-wrapper">
								<input class="file-path validate" type="text"
									placeholder="Suba aqui su foto">
							</div>
						</div>
					</div>
				</div>
				<!-- fecha alta -->
				<c:if test="${edit}">
					<div class="row">
						<div class="input-field col s12 m12 l6 offset-l3">
							<input type="text" disabled value="${nuevoUsuario.fechaAlta}" id="fechaAlta" class="validate">
							<label for="fechaAlta">Fecha Alta</label>
						</div>
					</div>
				</c:if>
				<div class="row">
					<div class="col s12 m12 l6 offset-l3">
						<c:choose>
							<c:when test="${edit}">
								<button class="btn waves-effect waves-light botones"
									name="action">
									Actualizar <i class="material-icons right">send</i>
								</button>
							</c:when>
							<c:otherwise>
								<button class="btn waves-effect waves-light botones"
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
	<footer class="page-footer">
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>
</body>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/usuario/registro.js"></script>
</body>
</html>
