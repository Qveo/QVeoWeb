<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ page import="com.qveo.qveoweb.utils.DateUtils" %> 
<html>
<head>
<meta charset="ISO-8859-1">
<title>QVeo web</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
	href="${pageContext.request.contextPath}/resources/css/materialize-social.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/modal.css">
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main class="animated fadeIn">
		<c:if test="${empty plataformas}">
			<sec:authorize access="isAnonymous()">
				<div class="container">
					<h3 class="text">Un error ha ocurrido y no se pueden recuperar
						las películas y series de las plataformas. Por favor, pruebe de
						nuevo más tarde.</h3>
				</div>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<div class="container">
					<h3 class="text">
						Por favor, seleccione las plataformas a las que está suscritas en
						su <a href="<c:url value="/mi-configuracion"/>">perfil</a>.
					</h3>
				</div>
			</sec:authorize>
		</c:if>

		<div class="container">
			<div class="carousel carousel-slider center caja "
				data-indicators="true">
				<div class="left">
					<a id="4" href="Previo"
						class="prevCaja middle-indicator-text flecha content-indicator"><i
						class="material-icons left  middle-indicator-text portada">chevron_left</i></a>
				</div>

				<div class="right">
					<a id="4" href="Siguiente"
						class=" nextCaja middle-indicator-text flecha content-indicator"><i
						class="material-icons right middle-indicator-text portada">chevron_right</i></a>
				</div>
				<div class="carousel-item red white-text">
					<a class="modal-trigger" href="/qveo/peliculas/22"> <img
						src="${pageContext.request.contextPath}/resources/img/portada/infinity-war-big.jpg"
						width="100%" />
					</a>
				</div>
				<div class="carousel-item amber white-text">
					<a class="modal-trigger enl" href="/qveo/serie/19"> <img
						src="${pageContext.request.contextPath}/resources/img/portada/Mr-Robot.jpg"
						width="100%" /></a>
				</div>
				<div class="carousel-item green white-text">
					<a class="modal-trigger enl" href="/qveo/peliculas/1"> <img
						src="${pageContext.request.contextPath}/resources/img/portada/madagascar.jpg"
						width="100%" /></a>
				</div>
				<div class="carousel-item blue white-text">
					<a class="modal-trigger enl" href="/qveo/peliculas/20"> <img
						src="${pageContext.request.contextPath}/resources/img/portada/spiderman.jpeg"
						width="100%" /></a>
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
				<div>
					<div class="col s12">
						<div
							class="carousel carousel_${fn:replace(plataforma.nombre,' ','_')}">
							<c:forEach items="${plataforma.peliculaPlataformas}"
								var="peliculaPlataformas">
								<c:if test="${peliculaPlataformas.fechaCaducidad eq null or
 									DateUtils.isDateGreaterThanToday(peliculaPlataformas.fechaCaducidad)}">
									<div class="carousel-item">
										<a class="modal-trigger mod-movie"
											href="#modal-pelicula${plataforma.id}-${peliculaPlataformas.pelicula.id}">
											<img
											src="${pageContext.request.contextPath}${peliculaPlataformas.pelicula.poster}" />
										</a>
									</div>
 								</c:if>
							</c:forEach>

							<c:forEach items="${plataforma.series}" var="serie">
								<div class="carousel-item">
									<a class="modal-trigger mod-serie"
										href="#modal-serie${plataforma.id}-${serie.id}"> <img
										src="${pageContext.request.contextPath}${serie.poster}">
									</a>
								</div>
							</c:forEach>

							<a id="carousel-prev"
								class="movePrevCarousel Prev${fn:replace(plataforma.nombre,' ','_')} middle-indicator-text content-indicator flecha left"><i
								class="material-icons left  middle-indicator-text">chevron_left</i></a>
							<a id="carousel-next"
								class="moveNextCarousel Next${fn:replace(plataforma.nombre,' ','_')} middle-indicator-text content-indicator flecha right"><i
								class="material-icons right middle-indicator-text">chevron_right</i></a>
						</div>
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
	src="${pageContext.request.contextPath}/resources/js/usuario/add-to-list.js"></script>

</html>
