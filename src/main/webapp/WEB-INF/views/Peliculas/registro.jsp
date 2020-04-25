<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<title>${title}</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="row">
			<c:choose>
				<c:when test="${edit}">
					<c:set var="action" scope="session" value="/qveo/peliculas/form" />
				</c:when>
				<c:otherwise>
					<c:set var="action" scope="session" value="/qveo/peliculas/form" />
				</c:otherwise>
			</c:choose>

			<form:form method="POST" action="${action}"
				modelAttribute="peliculaNueva" enctype="multipart/form-data"
				class="col s12 white-text">

				<div class="row">
					<div class="input-field col s6">
						<form:input path="titulo" id="titulo" type="text" class="validate" />
						<form:label for="titulo" path="titulo">Titulo</form:label>
					</div>
					<div class="input-field col s3">
						<form:input path="duracion" id="duracion" class="validate" />
						<form:label for="duracion" path="duracion">Duraci&oacuten</form:label>
					</div>
					<div class="input-field col s3">
						<form:input path="anio" id="anio" class="validate" />
						<form:label for="anio" path="anio">A&ntildeo</form:label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s6">
						<form:input path="guion" id="guion" class="validate" />
						<form:label for="guion" path="guion">Gui&oacuten</form:label>
					</div>
					<div class="input-field col s6">
						<form:textarea path="sinopsis" id="sinopsis"
							class="materialize-textarea" />
						<form:label path="sinopsis" for="sinopsis">Sinopsis</form:label>

					</div>
				</div>

				<div class="col s2"></div>
		</div>
		<div class="row">

			<div class="input-field col s12">
				<span>Paises</span> <br>
				<form:select path="pais" multiple="false">
					<form:options items="${paises}" path="pais" />
				</form:select>
			</div>
		</div>


		<div class="row">
			<div class="col s12">

				<span>Directores</span> <br>
				<c:choose>
					<c:when test="${edit}">
						<c:forEach items="${directores}" var="director">
							<c:if test="${fn:contains(peliculaNueva.directores,director)}">
								<form:label for="${director.nombre}" path="directores">
									<form:checkbox id="${director.nombre}" path="directores"
										value="${director.id}" checked="checked" />
									<span>${director.nombre}</span>
								</form:label>
							</c:if>

							<c:if
								test="${not(fn:contains(peliculaNueva.directores,director))}">
								<form:label for="${director.nombre}" path="directores">
									<form:checkbox id="${director.nombre}" path="directores"
										value="${director.id}" />
									<span>${director.nombre}</span>
								</form:label>
							</c:if>

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
		</div>
		<div class="row">
			<div class="col s12">


				<span>Actores</span> <br>
				<c:choose>
					<c:when test="${edit}">
						<c:forEach items="${actores}" var="actor">
							<c:if test="${fn:contains(peliculaNueva.actores,actor)}">
								<form:label for="${actor.nombre}" path="actores">
									<form:checkbox id="${actor.nombre}" path="actores"
										value="${actor.id}" checked="checked" />
									<span>${actor.nombre}</span>
								</form:label>
							</c:if>

							<c:if test="${not(fn:contains(peliculaNueva.actores,actor))}">
								<form:label for="${actor.nombre}" path="actores">
									<form:checkbox id="${actor.nombre}" path="actores"
										value="${actor.id}" />
									<span>${actor.nombre}</span>
								</form:label>
							</c:if>

						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach items="${actores}" var="actor">
							<form:label for="${actor.nombre}" path="actores">
								<form:checkbox id="${actor.nombre}" path="actores"
									value="${actor.id}" />
								<span>${actor.nombre}</span>
							</form:label>
						</c:forEach>
					</c:otherwise>

				</c:choose>
			</div>
		</div>

		<div class="row">
			<div class="col s12">


				<span>Generos</span>
				<c:choose>
					<c:when test="${edit}">
						<c:forEach items="${generos}" var="genero">
							<c:if test="${fn:contains(peliculaNueva.generos,genero)}">
								<form:label for="${genero.nombre}" path="generos">
									<form:checkbox id="${genero.nombre}" path="generos"
										value="${genero.id}" checked="checked" />
									<span>${genero.nombre}</span>
								</form:label>
							</c:if>

							<c:if test="${not(fn:contains(peliculaNueva.generos,genero))}">
								<form:label for="${genero.nombre}" path="generos">
									<form:checkbox id="${genero.nombre}" path="generos"
										value="${genero.id}" checked="checked" />
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
		</div>

		<div class="row">
			<div class="col s12">


				<span>Plataforma</span>
				<c:choose>
					<c:when test="${edit}">
						<c:forEach items="${plataformas}" var="plataforma">
							<c:if test="${fn:contains(peliculaNueva.plataformas,plataforma)}">
								<form:label for="${plataforma.nombre}" path="plataformas">
									<form:checkbox id="${plataforma.nombre}" path="plataformas"
										value="${plataforma.id}" checked="checked" />
									<span>${plataforma.nombre}</span>
								</form:label>
							</c:if>

							<c:if
								test="${not(fn:contains(peliculaNueva.plataformas,plataforma))}">
								<form:label for="${plataforma.nombre}" path="plataformas">
									<form:checkbox id="${plataforma.nombre}" path="plataformas"
										value="${plataforma.id}" />
									<span>${plataforma.nombre}</span>
								</form:label>
							</c:if>

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
							Registrar Pelicula <i class="material-icons right">send</i>
						</button>

					</c:otherwise>
				</c:choose>
			</div>
		</div>

		</form:form>
		</div>
	</main>

</body>

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
	})
</script>
</html>