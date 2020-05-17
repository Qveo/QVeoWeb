<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Registro de una serie</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/materialize.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>

	<main>
		<section>
			<div class="row">
				<form:form method="POST" action="/qveo/serie/form"
					modelAttribute="serieNueva" enctype="multipart/form-data"
					class="col s12">
					<div class="row">
						<div class="col s2"></div>
						<div class="input-field col s8">
							<form:label path="titulo">Titulo</form:label>
							<form:input path="titulo" id="titulo" />
							<form:errors path="titulo" style="color:red"></form:errors>
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:label path="fechaInicio" for="date">Fecha de lanzamiento</form:label>
							<form:input id="date" path="fechaInicio" class="datepicker" />
							<form:errors path="fechaInicio" style="color:red"></form:errors>
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="input-field col s8">
							<form:label path="temporadas">Temporada</form:label>
							<form:input path="temporadas" id="temporadas" />
							<form:errors path="temporadas" style="color:red"></form:errors>
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="input-field col s8">
							<form:label path="capitulos">Capitulos</form:label>
							<form:input path="capitulos" id="capitulos" />
							<form:errors path="temporadas" style="color:red"></form:errors>
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:label path="poster">Poster</form:label>
							<input type="file" name="posters">

							<c:if test="${editar== true}">
								<form:input path="id" type="hidden" />
								<div class="col s4">
									<img alt="${serieNueva.titulo}"
										src="${pageContext.request.contextPath}${serieNueva.poster}"
										width="80%">
								</div>
							</c:if>

						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:label path="sinopsis">Sinopsis</form:label>
							<form:textarea path="sinopsis" id="sinopsis" rows="4" cols="20" />
							<form:errors path="sinopsis" style="color:red"></form:errors>
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:label path="generos">Género</form:label>
						</div>
						<div class="col s2"></div>
					</div>
					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<c:choose>
								<c:when test="${editar}">
									<c:forEach items="${generos}" var="genero">
										<c:if test="${fn:contains(serieNueva.generos,genero)}">
											<form:label for="${genero.nombre}" path="generos">
												<form:checkbox id="${genero.nombre}" path="generos"
													value="${genero.id}" checked="checked" />
												<span>${genero.nombre}</span>
											</form:label>
										</c:if>
										<c:if test="${not(fn:contains(serieNueva.generos,genero))}">
											<form:label for="${genero.nombre}" path="generos">
												<form:checkbox id="${genero.nombre}" path="generos"
													value="${genero.id}" />
												<span>${genero.nombre}</span>
											</form:label>
										</c:if>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<c:forEach items="${generos}" var="genero">
										<form:label for="${genero.nombre}" path="generos">
											<form:checkbox id="${genero.nombre}" path="generos"
												value="${genero.id}" />
											<span>${genero.nombre}</span>
										</form:label>
									</c:forEach>
								</c:otherwise>
							</c:choose>

						</div>

						<div class="col s2"></div>

					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:errors path="generos" style="color:red"></form:errors>
						</div>
						<div class="col s2"></div>
					</div>


					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:label path="pais">Pais de produccion</form:label>
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
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
							<form:errors path="pais" style="color:red"></form:errors>

						</div>
						<div class="col s2"></div>
					</div>
					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:errors path="pais" style="color:red"></form:errors>
						</div>
						<div class="col s2"></div>
					</div>

					<!-- Chips Actores -->
					<%@include file="/WEB-INF/views/layout/chipsActores.jsp"%>
					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:errors path="actores" style="color:red"></form:errors>
						</div>
						<div class="col s2"></div>
					</div>


					<!-- Chips directores -->
					<%@include file="/WEB-INF/views/layout/chipsDirectores.jsp"%>
					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:errors path="directores" style="color:red"></form:errors>
						</div>
						<div class="col s2"></div>
					</div>
					<!-- plataformas de series -->
					<%@include file="/WEB-INF/views/layout/chipsPlataforma.jsp"%>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:errors path="plataformas" style="color:red"></form:errors>
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
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
						<div class="col s2"></div>
					</div>
				</form:form>
			</div>
		</section>
	</main>

	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/serie.js"></script>

</body>
</html>