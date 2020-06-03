<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<html>
<head>
<title>QVeo web</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,400;1,700;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/materialize.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/carousel.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/modal.css">
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="container">
			<div class="carousel carousel-slider center caja "
				data-indicators="true">
				<div class="flecha">
					<div class="left">
						<a href="Previo"
							class="movePrevCarousel middle-indicator-text waves-effect waves-light content-indicator"><i
							class="material-icons left  middle-indicator-text">chevron_left</i></a>
					</div>

					<div class="right">
						<a href="Siguiente"
							class=" moveNextCarousel middle-indicator-text waves-effect waves-light content-indicator"><i
							class="material-icons right middle-indicator-text">chevron_right</i></a>
					</div>
				</div>
				<div class="carousel-item red white-text">
					<a class="modal-trigger waves-effect waves-light" href="/qveo/peliculas/22"> <img
						src="${pageContext.request.contextPath}/resources/img/portada/infinity-war-big.jpg" />
					</a>
				</div>
				<div class="carousel-item amber white-text">
					<a class="modal-trigger enl" href="/qveo/serie/19"> <img
						src="${pageContext.request.contextPath}/resources/img/portada/Mr-Robot.jpg" /></a>
				</div>
				<div class="carousel-item green white-text">
					<a class="modal-trigger enl" href="/qveo/peliculas/1"> <img
						src="${pageContext.request.contextPath}/resources/img/portada/madagascar.jpg" /></a>
				</div>
				<div class="carousel-item blue white-text">
					<a class="modal-trigger enl" href="/qveo/peliculas/20"> <img
						src="${pageContext.request.contextPath}/resources/img/portada/spiderman.jpeg" /></a>
				</div>
			</div>

		</div>

		<c:forEach items="${plataformas}" var="plataforma">
			<div class="row">
				<div class="col s12">
					<h3>
						<a href="#">Peliculas y series de ${plataforma.nombre}</a>
					</h3>
				</div>
			</div>

			<div>
				<div class="col s12">
					<div class="carousel">
						<c:forEach items="${plataforma.peliculaPlataformas}"
							var="peliculaPlataformas">
							<div class="carousel-item">
								<a class="waves-effect waves-light modal-trigger"
									href="#modal-pelicula${plataforma.id}-${peliculaPlataformas.pelicula.id}">
									<img
									src="${pageContext.request.contextPath}${peliculaPlataformas.pelicula.poster}" />
								</a>
							</div>
						</c:forEach>
						<c:forEach items="${plataforma.series}" var="serie">
							<div class="carousel-item">
								<a class="waves-effect waves-light modal-trigger"
									href="#modal-serie${plataforma.id}-${serie.id}"> <img
									src="${pageContext.request.contextPath}${serie.poster}">
								</a>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</c:forEach>
	</main>
	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>

	<c:forEach items="${plataformas}" var="plataforma">
		<%@include file="/WEB-INF/views/layout/modalDetalleSerie.jsp"%>
		<%@include file="/WEB-INF/views/layout/modalDetallePelicula.jsp"%>
	</c:forEach>
</body>
<script
	src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/js/materialize.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/carousel.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/carousel2.js"></script>
</html>
