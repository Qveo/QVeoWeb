<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
	href="${pageContext.request.contextPath}/resources/css/icon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/filtro/filtro.css">

</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>

	<main>

		<section>
		
			<form:form method="POST" action="/qveo/filtros"
				modelAttribute="buscar">

				<div class="row">
					<div class="col s1"></div>
					<div class="col s6 ">
						<ul>
							<li><form:label path="accionFiltro" for="todos">
									<form:radiobutton id="todos" path="accionFiltro" value="1"
										checked="checked" />
									<span>Todo</span>
								</form:label></li>
							<li><form:label path="accionFiltro" for="series">
									<form:radiobutton id="series" path="accionFiltro" value="2" />
									<span>Series</span>
								</form:label></li>
							<li><form:label path="accionFiltro" for="pelis">
									<form:radiobutton id="pelis" path="accionFiltro" value="3" />
									<span>Pelicula</span>
								</form:label></li>
						</ul>
					</div>
					<div class="col s1"></div>
				</div>

				<div class="row">
					<div class="col s1"></div>
					<div class="col s3">
						<label>A&ntilde;o</label>
						<form:select multiple="true" path="anios">
							<form:option value="">Fechas</form:option>
							<form:options items="${fechas}" />
						</form:select>
					</div>
					<div class="col s3">
						<label> Genero</label>
						<form:select path="generos" multiple="true">
							<form:option value="">Genero</form:option>
							<form:options items="${generos}" itemLabel="nombre" />
						</form:select>
					</div>
					<div class="col s3">
						<label>Plataformas</label>
						<form:select path="plataformas" multiple="true">
							<form:options items="${plataformas}" itemLabel="nombre"
								itemValue="id" />
						</form:select>
					</div>
					<div class="col s1"></div>
				</div>
				<div class="row">
					<div class="col s1"></div>
					<div class="col s6 ">
						<button class="btn waves-effect waves-light" type="submit"
							name="action">
							Buscar <i class="material-icons right">send</i>
						</button>
					</div>
				</div>

			</form:form>
		</section>

		<section>
			<div class="container">
				<div class="row cabeceras">
					<div class="col s2"></div>
					<div class="col s3">Poster</div>
					<div class="col s3">Titulo</div>
					<div class="col s3">Fecha de inicio</div>
					<div class="col s2"></div>
				</div>

				<c:forEach items="${serieMostrar}" var="serie">
					<a href="/qveo/serie/${serie.id}">
						<div class="row cuerpo">
							<div class="col s2"></div>
							<div class="col s3">
								<img alt="${serie.titulo}"
									src="${pageContext.request.contextPath}${serie.poster}"
									width="40%">
							</div>
							<div class="col s3">${serie.titulo}</div>
							<div class="col s3">${serie.fechaInicio}</div>
							<div class="col s2"></div>
						</div>
					</a>
				</c:forEach>
				<c:forEach items="${peliculas}" var="peli">
				<a href="/qveo/peliculas/${peli.id}">
						<div class="row cuerpo">
							<div class="col s2"></div>
							<div class="col s3">
								<img alt="${peli.titulo}"
									src="${pageContext.request.contextPath}${peli.poster}"
									width="40%">
							</div>
							<div class="col s3">${peli.titulo}</div>
							<div class="col s3">${peli.duracion}</div>
							<div class="col s2"></div>
						</div>
					</a>				
				</c:forEach>
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
		src="${pageContext.request.contextPath}/resources/js/filtro/filtro.js"></script>
</body>
</html>