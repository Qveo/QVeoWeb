<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta charset="ISO-8859-1">

<title>Filtro</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<section>
			<div class="row"></div>
			<div class="row"></div>
			<div class="container">
				<div class="row">
					<c:forEach items="${filtrado.series}" var="serie">
						<a href="/qveo/serie/${serie.id}">

							<div class="col s10 xl2 l2">
								<img alt="${serie.titulo}"
									src="${pageContext.request.contextPath}${serie.poster}"
									class="responsive">
							</div>

						</a>
					</c:forEach>

					<c:forEach items="${filtrado.pelicula}" var="peli">
						<a href="/qveo/peliculas/${peli.id}">
							<div class="col s10 xl2 l2">
								<img alt="${peli.titulo}"
									src="${pageContext.request.contextPath}${peli.poster}"
									class="responsive">
							</div>
						</a>
					</c:forEach>


					<c:if test="${pintar == true}">
						<c:forEach items="${reparto.series}" var="serie">
							<a href="/qveo/serie/${serie.id}">
								<div class="col s10 xl2 l2">
									<img alt="${serie.titulo}"
										src="${pageContext.request.contextPath}${serie.poster}"
										class="responsive">
								</div>
							</a>
						</c:forEach>

						<c:forEach items="${reparto.peliculas}" var="peli">
							<a href="/qveo/peliculas/${peli.id}">
								<div class="col s10 xl2 l2">
									<img alt="${peli.titulo}"
										src="${pageContext.request.contextPath}${peli.poster}"
										class="responsive">
								</div>
							</a>
						</c:forEach>
					</c:if>

				</div>
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
