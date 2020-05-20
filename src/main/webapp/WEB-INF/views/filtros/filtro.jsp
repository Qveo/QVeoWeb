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
	href="${pageContext.request.contextPath}/resources/css/filtro.css">

</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>

	<main>
		<h1>Filtro</h1>
		<section>
			<form:form method="POST" action="/qveo/filtros"
				modelAttribute="seriesBuscar">
				<div class="row">
				<div class="row">
					<div class="col s1"></div>
					<div class="col s6 ">
						<ul>
							<li><form:label path="accionFiltro" for="todos">
									<form:radiobutton id="todos" path="accionFiltro" value="1" checked="checked"/>
									<span>Todo</span>
								</form:label></li>
							<li><form:label path="accionFiltro" for="series">
									<form:radiobutton id="series" path="accionFiltro" value="2" />
									<span>Series</span>
								</form:label></li>
							<li>
							<form:label path="accionFiltro" for="pelis">
									<form:radiobutton id="pelis" path="accionFiltro" value="3" />
									<span>Pelicula</span>
								</form:label>
							</li>
						</ul>
					</div>
				</div>
					<div class="col s1"></div>
					<div class="col s10 ">
						<span>A&ntilde;o</span>
					</div>
				</div>
				<div class="row">
					<div class="col s1"></div>
					<div class="col s6 ">
						<form:select multiple="true" path="anios">
							<form:option value="">Fechas</form:option>
							<form:options items="${fechas}" />
						</form:select>
					</div>
				</div>
				<div class="row">
					<div class="col s1"></div>
					<div class="col s6 ">
						<span>Genero</span>
					</div>
				</div>
				<div class="row">
					<div class="col s1"></div>
					<div class="col s6 ">
						<form:select path="generos" multiple="true">
							<form:option value="">Genero</form:option>
							<form:options items="${generos}" itemLabel="nombre" />
						</form:select>
					</div>
				</div>
				<div class="row">
					<div class="col s1"></div>
					<div class="col s6 ">
						<span>Plataformas</span>
					</div>
				</div>
				<div class="row">
					<div class="col s1"></div>
					<div class="col s6 ">
						<form:select path="plataformas" multiple="true">
							<form:options items="${plataformas}" itemLabel="nombre"
								itemValue="id" />
						</form:select>
					</div>
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
			<table class="centered highlight responsive-table">
				<thead>
					<tr>
						<th>Poster</th>
						<th>Titulo</th>
						<th>Fecha de inicio</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${serieMostrar}" var="serie">
						<tr>
							<td><img alt="${serie.titulo}"
								src="${pageContext.request.contextPath}${serie.poster}"
								width="20%"></td>
							<td>${serie.titulo}</td>
							<td>${serie.fechaInicio}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
				<div class="row">
				<div class="col s4"></div>
				<div class="col s6">
					<c:forEach items="${serieMostrar}" var="serie">
						<c:forEach items="${serie.directores}" var="director">
							<a href="/qveo/filtro/director/${director.id}">${director.nombre}</a>
						</c:forEach>

					</c:forEach>
					<a href="/qveo/filtro/actor/5">Aqui hgdsaidsaidji</a>
				</div>
				<div class="col s4"></div>
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