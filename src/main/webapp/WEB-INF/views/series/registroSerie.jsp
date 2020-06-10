<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<c:choose>
	<c:when test="${editar}">
		<title>Actualizar Serie</title>
	</c:when>
	<c:otherwise>
		<title>Serie Formulario</title>
	</c:otherwise>
</c:choose>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/materialize.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/serie/serie.css">
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
				<form:form method="POST" action="/qveo/admin/serie/form"
					modelAttribute="serieNueva" enctype="multipart/form-data"
					class="col s12">
					<div class="row">
						<div class="col l2"></div>
						<div class="input-field formato col s12 l8">
							<form:label path="titulo">Titulo</form:label>
							<form:input path="titulo" id="titulo" class="formato"/>
							<form:errors path="titulo" style="color:red" class="error"></form:errors>
						</div>
						<div class="col l2"></div>
					</div>

					<div class="row">
						<div class="col l2"></div>
						<div class="input-field col s12 l8">
							<form:label path="fechaInicio" for="date">Fecha de lanzamiento</form:label>
							<form:input id="date" path="fechaInicio"
								class="datepicker formato" />
							<form:errors path="fechaInicio" style="color:red" class="error"></form:errors>
						</div>
						<div class="col l2"></div>
					</div>

					<div class="row">
						<div class="col l2"></div>
						<div class="input-field formato col s12 l8">
							<form:label path="temporadas">Temporada</form:label>
							<form:input path="temporadas" id="temporadas" class="formato"/>
							<form:errors path="temporadas" style="color:red" class="error"></form:errors>
						</div>
						<div class="col l2"></div>
					</div>

					<div class="row">
						<div class="col l2"></div>
						<div class="input-field formato col s12 l8">
							<form:label path="capitulos">Capitulos</form:label>
							<form:input path="capitulos" id="capitulos" class="formato"/>
							<form:errors path="temporadas" style="color:red" class="error"></form:errors>
						</div>
						<div class="col l2"></div>
					</div>

					<div class="row">
						<div class="col l2"></div>
						<div class="col s12 l8">
							<form:label path="poster" class="formato">Poster</form:label>
							<input type="file" name="posters" class="boton-Foto formato">

							<c:if test="${editar== true}">
								<form:input path="id" type="hidden" />
								<div class="col s4 l4">
									<img alt="${serieNueva.titulo}"
										src="${pageContext.request.contextPath}${serieNueva.poster}"
										width="80%">
								</div>
							</c:if>

						</div>
						<div class="col l2"></div>
					</div>

					<div class="row">
						<div class="col l2"></div>
						<div class="col s12 l8">
							<form:label path="sinopsis" class="formato">Sinopsis</form:label>
							<form:textarea path="sinopsis" id="sinopsis"
								class="especial materialize-textarea" />
							<form:errors path="sinopsis" style="color:red" class="error"></form:errors>
						</div>
						<div class="col l2"></div>
					</div>

					<div class="row">
						<div class="col s2 l2"></div>
						<div class="col s8 l8">
							<form:label path="pais" class="formato">Pais de produccion</form:label>
						</div>
						<div class="col s2 s2"></div>
					</div>

					<div class="row">
						<div class="col l2"></div>
						<div class="col s12 l8">
							<form:select path="pais">
								<c:choose>
									<c:when test="${editar}">
										<form:option value="0">Elija un pais</form:option>
										<c:forEach items="${paises}" var="pais">
											<c:choose>
												<c:when test="${pais.id == serieNueva.pais.id}">
													<form:option value="${pais.id}" selected="selected">${pais.nombre}</form:option>
												</c:when>
												<c:otherwise>
													<form:option value="${pais.id}">${pais.nombre}</form:option>
												</c:otherwise>
											</c:choose>
										</c:forEach>

									</c:when>
									<c:otherwise>

										<form:option value="0" selected="selected">Elija un pais</form:option>
										<c:forEach items="${paises}" var="pais">
											<form:option value="${pais.id}">${pais.nombre}</form:option>
										</c:forEach>

									</c:otherwise>

								</c:choose>
							</form:select>
						</div>
						<div class="col l2"></div>
					</div>
					<div class="row">
						<div class="col l2"></div>
						<div class="col s12 l8">
							<form:errors path="pais" style="color:red" class="error"></form:errors>
						</div>
						<div class="col s2 l2"></div>
					</div>


					<!-- Chips Generos Series-->
					<%@include file="/WEB-INF/views/layout/series/chipsGeneros.jsp"%>

					<div class="row">
						<div class="col s2 l2"></div>
						<div class="col s8 l8">
							<form:errors path="generos" style="color:red" class="error"></form:errors>
						</div>
						<div class="col s2 l2"></div>
					</div>
			</div>


			<!-- Chips Actores Series-->
			<%@include file="/WEB-INF/views/layout/series/chipsActores.jsp"%>
			<div class="row">
				<div class="col s2 l2"></div>
				<div class="col s8 l8">
					<form:errors path="actores" style="color:red" class="error"></form:errors>
				</div>
				<div class="col s2 l2"></div>
			</div>


			<!-- Chips directores Series-->
			<%@include file="/WEB-INF/views/layout/series/chipsDirectores.jsp"%>
			<div class="row">
				<div class="col s2 l2"></div>
				<div class="col s6 l6">
					<form:errors path="directores" style="color:red" class="error"></form:errors>
				</div>
				<div class="col s2 l2"></div>
			</div>

			<!--Chips plataformas de series -->
			<%@include file="/WEB-INF/views/layout/series/chipsPlataforma.jsp"%>

			<div class="row">
				<div class="col s2 l2"></div>
				<div class="col s6 l6">
					<form:errors path="plataformas" style="color:red" class="error"></form:errors>
				</div>
				<div class="col s2 l2"></div>
			</div>

			<div class="row">
				<div class="col s2 l2"></div>
				<div class="col s8 l8">
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
				<div class="col s2 l2"></div>
			</div>
			</form:form>
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
	<script
		src="${pageContext.request.contextPath}/resources/js/serie/serie.js"></script>
</body>
</html>