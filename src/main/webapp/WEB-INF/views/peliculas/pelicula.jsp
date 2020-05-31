<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html>
<head>
<meta charset="ISO-8859-1">

<title>${title}</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/pelicula/pelicula.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">

</head>

<header>
	<%@include file="/WEB-INF/views/layout/header.jsp"%>
</header>

<main>
	<section>
		<div class="row">
			<div class="col s10 l10 offset-l2">
				<div class="col s12 l4">
					<img src="${pageContext.request.contextPath}${peliculas.poster}"
						alt="rick" width="100%">
				</div>
				<div class="col s12 l6">
					<h5>T&iacute;tulo</h5>
					<label id="tituloSerie">${peliculas.titulo}</label>

					<h5>Fecha de estre&ntilde;o</h5>
					<label class="fechaInicio">${peliculas.anio}</label>

					<h5>Pa&iacute;s</h5>
					<label>${peliculas.pais.nombre}</label>

					<h5>Duraci&oacute;n</h5>
					<label>${peliculas.duracion}</label>

					<h5>Gui&oacute;n</h5>
					<label>${peliculas.guion}</label>

					<h5>G&eacute;neros</h5>
					<label>
						<ul>
							<c:forEach items="${peliculas.generos}" var="genero">

								<li>${genero.nombre}</li>
							</c:forEach>
						</ul>
					</label>
					<h5>Sinopsis</h5>
					<label>${peliculas.sinopsis}</label>
					<div class="col s10 l9 offset-l1 offset-s1">
						<a href="#"><i class="waves-effect blue btn ">Agregar
								Pelicula</i></a>
				</div>
			</div>


		</div>
	</section>
	<section>
		<div class="row">
			<div class="col s10 l8 offset-l2 scrollmenu">
				<h5>Reparto</h5>
				<ul>
					<c:forEach items="${peliculas.actores}" var="actores">
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
					<c:forEach items="${peliculas.directores}" var="director">
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
					<c:forEach items="${peliculas.peliculaPlataformas}" var="plataforma">
						<li><div class="reparto">
								<img src="${pageContext.request.contextPath}${plataforma.plataforma.foto}"
									alt="${plataforma.plataforma.nombre}" class="imagenes">
								<div id="plataforma">${plataforma.plataforma.nombre}</div>
							</div></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</section>

</main>