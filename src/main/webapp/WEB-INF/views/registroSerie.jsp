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
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/serieRegistro.css">

</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>

	<main>
		<section>
			<div class="row">
				<c:choose>
					<c:when test="${editar}">
						<c:set var="action" scope="session"
							value="/qveo/serie/update/${serieNueva.id}" />
					</c:when>
					<c:otherwise>
						<c:set var="action" scope="session" value="/qveo/serie/form/add" />
					</c:otherwise>
				</c:choose>

				<form:form method="POST" action="${action}"
					modelAttribute="serieNueva" enctype="multipart/form-data"
					class="col s12">
					<div class="row">
						<div class="col s2"></div>
						<div class="input-field col s8">
							<form:label path="titulo">Titulo</form:label>
							<form:input path="titulo" id="titulo" />
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:label path="fechaInicio">Fecha de lanzamiento</form:label>
							<form:input type="date" id="fechaInicio" path="fechaInicio" />
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="input-field col s8">
							<form:label path="temporadas">Temporada</form:label>
							<form:input path="temporadas" id="temporadas" />
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="input-field col s8">
							<form:label path="capitulos">Capitulos</form:label>
							<form:input path="capitulos" id="capitulos" />
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:label path="poster">Poster</form:label>
							<input type="file" name="posters">
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:label path="sinopsis">Sinopsis</form:label>
							<form:textarea path="sinopsis" id="sinopsis" rows="4" cols="20" />
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
										<c:forEach items="${serieNueva.generos}" var="generoRegist"></c:forEach>
										<c:if test="${fn:contains(genero,generoRegist)}">
											<form:label for="${genero.nombre}" path="generos">
												<form:checkbox id="${genero.nombre}" path="generos"
													value="${genero.id}" checked="checked" />
												<span>${genero.nombre}</span>
											</form:label>
										</c:if>
										<c:if test="${not(fn:contains(generoRegist,genero))}">
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
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<form:label path="directores">Director</form:label>
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">

							<c:choose>
								<c:when test="${editar}">
									<c:forEach items="${directores}" var="director">
										<form:label for="${director.nombre}" path="directores">
											<form:checkbox id="${director.nombre}" path="directores"
												value="${director.id}" />
											<span>${director.nombre}</span>
										</form:label>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<c:forEach items="${directores}" var="director">
										<form:label for="${director.nombre}" path="directores">
											<form:checkbox id="${director.nombre}" path="directores"
												value="${director.id}" />
											<span>${director.nombre}</span>
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
							<form:label path="plataformas">Plataformas</form:label>
						</div>
						<div class="col s2"></div>
					</div>

					<div class="row">
						<div class="col s2"></div>
						<div class="col s8">
							<c:choose>
								<c:when test="${editar}">
									<c:forEach items="${plataformas}" var="plataforma">
										<form:label for="${plataforma.nombre}" path="plataformas">
											<form:checkbox id="${plataforma.nombre}" path="plataformas"
												value="${plataforma.id}" />
											<span>${plataforma.nombre}</span>
										</form:label>

									</c:forEach>
								</c:when>
								<c:otherwise>
									<c:forEach items="${plataformas}" var="plataforma">
										<form:label for="${plataforma.nombre}" path="plataformas">
											<form:checkbox id="${plataforma.nombre}" path="plataformas"
												value="${plataforma.id}" />
											<span>${plataforma.nombre}</span>
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
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script>
		$('input[type=checkbox]').each(function() {

			var name = $(this).attr('name');
			$('[name="' + '_' + name + '"]').remove();

		});

		document.addEventListener('DOMContentLoaded', function() {
			var elems = document.querySelectorAll('select');
			var instances = M.FormSelect.init(elems);
		});
		
	</script>
</body>
</html>