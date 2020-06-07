<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<title>C&aacute;talogo serie</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/filtro/filtro.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>

	<main>
		<div class="container">
			<form:form method="POST" action="/qveo/series"
				modelAttribute="buscar">
				<div class="row">
					<div class="col s12 l4">
						<label class="flow-text formato">A&ntilde;o</label>
						<form:select multiple="true" path="anios">
							<form:option value="">Fechas</form:option>
							<form:options items="${fechas}" />
						</form:select>
					</div>

					<div class="col s12 l4">
						<label class="flow-text formato"> Genero</label>
						<form:select path="generos" multiple="true">
							<form:option value="">G&eacute;nero</form:option>
							<form:options items="${generos}" itemValue="id"
								itemLabel="nombre" />
						</form:select>
					</div>
					<div class="col s12 l4">
						<label class="flow-text formato">Plataformas</label>
						<form:select path="plataformas" multiple="true">
							<form:options items="${plataformas}" itemLabel="nombre"
								itemValue="id" />
						</form:select>
					</div>
				</div>
				<div class="row">
					<div class="col s12">
						<button class="btn waves-effect waves-light boton-filtrar" type="submit"
							name="action">
							Buscar <i class="material-icons right">send</i>
						</button>
					</div>
				</div>
			</form:form>
			<div class="row animated fadeIn">
				<c:choose>
					<c:when test="${serieFiltradas == true}">
						<c:forEach items="${buscar.series}" var="serie">
							<div class="col s6 m3 l2">
								<a href="/qveo/serie/${serie.id}"> <img
									alt="${serie.titulo}"
									src="${pageContext.request.contextPath}${serie.poster}"
									class="responsive" />
								</a>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach items="${serieMostrar}" var="serie">
							<div class="col s6 m3 l2">
								<a href="/qveo/serie/${serie.id}"> <img
									alt="${serie.titulo}"
									src="${pageContext.request.contextPath}${serie.poster}"
									class="responsive" />
								</a>
							</div>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
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