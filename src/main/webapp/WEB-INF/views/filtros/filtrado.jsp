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
	href="${pageContext.request.contextPath}/resources/css/filtro.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<section>

			<div class="container">
				<div class="row cabeceras">
					<div class="col s2"></div>
					<div class="col s3">Poster</div>
					<div class="col s3">Titulo</div>
					<div class="col s3">Fecha de inicio/Duracion</div>
					<div class="col s2"></div>
				</div>
				<c:forEach items="${filtrado.series}" var="serie">
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
				
				<c:forEach items="${filtrado.pelicula}" var="peli">
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
			

			<c:if test="${pintar == true}">
			<c:forEach items="${reparto.series}" var="serie">
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
				
				<c:forEach items="${reparto.peliculas}" var="peli">
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
			</c:if>
			</div>
		</section>
	</main>
	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/serie.js"></script>
</body>
</html>
