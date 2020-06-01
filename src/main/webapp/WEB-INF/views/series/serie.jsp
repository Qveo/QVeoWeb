
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>

<title>${series.titulo}</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/serie/serie.css">
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
	href="${pageContext.request.contextPath}/resources/css/serie/seriesMostar.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>

	<main>
		<section>
			<div class="row">
				<div class="col s10 l10 offset-l2">
					<div class="col s12 l4">
						<img src="${pageContext.request.contextPath}${series.poster}"
							alt=">${series.titulo}" width="100%">
					</div>

					<div class="col s12 l6">
						<h5>T&iacute;tulo</h5>
						<label id="tituloSerie">${series.titulo}</label>

						<h5>Fecha de estre&ntilde;o</h5>
						<label class="fechaInicio">${series.fechaInicio}</label>

						<h5>Pa&iacute;s</h5>
						<label>${series.pais.nombre}</label>

						<h5>Temporadas</h5>
						<label>${series.temporadas}</label>

						<h5>Cap&iacute;tulos</h5>
						<label>${series.capitulos}</label>

						<h5>G&eacute;neros</h5>
						<label>
							<ul>
								<c:forEach items="${series.generos}" var="genero">

									<li>${genero.nombre}</li>
								</c:forEach>
							</ul>
						</label>
						<h5>Sinopsis</h5>
						<label>${series.sinopsis}</label>
						<div class="col s10 l9 offset-l1 offset-s1">
						<a href="#"><i class="waves-effect blue btn ">Agregar
								Serie</i></a>
					</div>
					</div>
					
				</div>


			</div>
		</section>

		<section>
			<div class="row">
				<div class="col s10 l8 offset-l2 scrollmenu">
					<h5>Reparto</h5>
					<ul>
						<c:forEach items="${series.actores}" var="actores">
							<li>
								<div class="reparto">
									<a href="/qveo/filtro/actor/${actores.id}"> <img
										src="${pageContext.request.contextPath}${actores.foto}"
										alt="${actores.nombre}" class="imagenes">
										<div>${actores.nombre}</div>
									</a>
								</div>
							</li>

						</c:forEach>
					</ul>
				</div>

			</div>

			<div class="row">
				<div class="col s10 l10 offset-l2">
					<h5>Director</h5>
					<ul>
						<c:forEach items="${series.directores}" var="director">
							<li>
								<div class="reparto">
									<a href="/qveo/filtro/director/${director.id}"> <img
										src="${pageContext.request.contextPath}${director.foto}"
										alt="${director.nombre}" class="imagenes">
										<div>${director.nombre}</div>
									</a>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>
			</div>
			<div class="row">
				<div class="col s10 l8 offset-l2 scrollmenu">
					<h5>Plataformas</h5>
					<ul>
						<c:forEach items="${series.plataformas}" var="plataforma">
							<li><div class="reparto">
									<img src="${pageContext.request.contextPath}${plataforma.foto}"
										alt="${plataforma.nombre}" class="imagenes">
									<div id="plataforma">${plataforma.nombre}</div>
								</div></li>
						</c:forEach>
					</ul>
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
		src="${pageContext.request.contextPath}/resources/js/serie/serie.js"></script>
</body>
</html>