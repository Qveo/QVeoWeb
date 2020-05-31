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
								<a class="waves-effect waves-light modal-trigger mod-movie"
									href="#modal-pelicula${plataforma.id}-${peliculaPlataformas.pelicula.id}">
									<img
									src="${pageContext.request.contextPath}${peliculaPlataformas.pelicula.poster}" />
								</a>
							</div>
						</c:forEach>
						<c:forEach items="${plataforma.series}" var="serie">
							<div class="carousel-item">
								<a class="waves-effect waves-light modal-trigger mod-serie"
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
	src="${pageContext.request.contextPath}/resources/js/usuario/add-to-list.js"></script>
</html>
