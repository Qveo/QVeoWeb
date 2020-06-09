<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
<c:choose>
	<c:when test="${editar}">
		<title>Actualizar Actor</title>
	</c:when>
	<c:otherwise>
		<title>Actor Formulario</title>
	</c:otherwise>
</c:choose>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	href="${pageContext.request.contextPath}/resources/css/actor/registro.css">
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
</head>

<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="row">
			<c:choose>
				<c:when test="${editar}">
					<c:set var="action" scope="session" value="/qveo/admin/actor/form/" />
				</c:when>
				<c:otherwise>
					<c:set var="action" scope="session" value="/qveo/admin/actor/form/" />
				</c:otherwise>
			</c:choose>
			<form:form method="POST" action="${action}"
				modelAttribute="actorNuevo" enctype="multipart/form-data"
				class="col s12 white-text">

				<div class="row">
					<div class="col l2"></div>
					<div class="input-field col s12 l8">
						<form:label path="nombre" class="formato">Nombre</form:label>
						<form:input path="nombre" id="nombre" class="formato validate"/>
						<form:errors path="nombre" style="color:red"></form:errors>
					</div>
					<div class="col l2"></div>
				</div>
				<div class="row">
					<div class="col l2"></div>
					<div class="input-field formato col s12 l8">
						<form:label path="pais">Pais de origen</form:label>
					</div>
					<div class="col l2"></div>
				</div>

				<div class="row">
					<div class="col l2"></div>
					<div class="input-field formato col s12 l8">
						<form:select path="pais">
							<c:choose>
								<c:when test="${editar}">
									<form:option value="0" class="formato">Elija un pais</form:option>
									<c:forEach items="${paises}" var="pais">
										<c:if test="${pais.id ==actorNuevo.pais.id}">
											<form:option value="${pais.id}" selected="selected" class="formato">${pais.nombre}</form:option>
										</c:if>
										<c:if test="${pais.id !=actorNuevo.pais.id}">
											<form:option value="${pais.id}">${pais.nombre}</form:option>
										</c:if>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<form:option value="0" selected="selected" class="formato">Elija un pais</form:option>
									<c:forEach items="${paises}" var="pais">
										<form:option value="${pais.id}">${pais.nombre}</form:option>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</form:select>
						<form:errors path="pais" style="color:red"></form:errors>
					</div>
				</div>
				<div class="row">
					<div class="col l2"></div>
					<div class="input-field col s12 l8">
						<form:label path="sexo">Género</form:label>
					</div>
					<div class="col l2"></div>
				</div>
				<div class="row">
					<div class="col l2"></div>
					<div class="col s12 l8">
						<form:label for="mas" path="sexo" class="formato">
							<form:radiobutton id="mas" path="sexo" value="H" class="validate" />
							<span>Masculino</span>
						</form:label>
						<form:label for="fem" path="sexo" class="formato">
							<form:radiobutton id="fem" path="sexo" value="M" class="validate" />
							<span>Femenino</span>
						</form:label>
						<form:errors path="sexo" style="color:red"></form:errors>

					</div>
					<div class="col l2"></div>
				</div>
				<div class="row">
					<div class="col l2"></div>
					<div class="col s12 l8">
						<form:label path="foto" class="formato">Foto</form:label>
						<input type="file" name="fotoActor" class="boton-Foto">
						<c:if test="${editar == true}">
							<div class="col s4">
								<form:input path="id" type="hidden" />
								<img alt="${actorNuevo.nombre}"
									src="${pageContext.request.contextPath}${actorNuevo.foto}"
									width="80%">
							</div>
						</c:if>
					</div>
					<div class="col l2"></div>
				</div>
				<div class="row">
					<div class="col l2"></div>
					<div class="col s12 l8">
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
					</div>
					<div class="col l2"></div>
				</div>
			</form:form>
		</div>
	</main>
	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/materialize.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/actor/actor.js"></script>

</body>

</html>