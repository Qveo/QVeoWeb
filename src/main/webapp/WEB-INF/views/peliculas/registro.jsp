<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<title>${title}</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/menu.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">

</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="row">
			<c:set var="action" scope="session" value="/qveo/peliculas/form/add" />
			<form:form method="POST" action="${action}"
				modelAttribute="peliculaNueva" enctype="multipart/form-data"
				class="col s12 white-text">

				<div class="row">
					<div class="input-field col s6">
						<form:input path="titulo" id="titulo" type="text" class="validate" />
						<form:label for="titulo" path="titulo">Titulo</form:label>
						<form:errors path="titulo" style="color:red" />
					</div>
					<div class="input-field col s3">
						<form:input path="duracion" id="duracion" class="validate" />
						<form:label for="duracion" path="duracion">Duraci&oacuten</form:label>
						<form:errors path="duracion" style="color:red" />
					</div>
					<div class="input-field col s3">
						<form:label for="anio" path="anio">A&ntildeo</form:label>
						<form:input id="anio" class="datepicker" path="anio" />
						<form:errors path="anio" style="color:red" />
					</div>
				</div>
				<div class="row">
					<div class="input-field col s6">
						<form:input path="guion" id="guion" class="validate" />
						<form:label for="guion" path="guion">Gui&oacuten</form:label>
						<form:errors path="guion" style="color:red" />
					</div>
					<div class="input-field col s6">
						<form:textarea path="sinopsis" id="sinopsis"
							class="materialize-textarea" />
						<form:label path="sinopsis" for="sinopsis">Sinopsis</form:label>
						<form:errors path="sinopsis" style="color:red" />

					</div>
				</div>



				<div class="row">

					<div class="input-field col s12">
						<span>Paises</span> <br>

						<form:select path="pais">
							<form:option value="0">--Select--</form:option>
							<c:forEach items="${paises}" var="pais">
								<c:choose>
									<c:when test="${pais.id == peliculaNueva.pais.id}">
										<form:option value="${pais.id}" selected="selected">${pais.nombre}</form:option>
									</c:when>
									<c:otherwise>
										<form:option value="${pais.id}">${pais.nombre}</form:option>
									</c:otherwise>
								</c:choose>
							</c:forEach>
						</form:select>
					</div>
					<form:errors path="pais" style="color:red" />
				</div>


				<div class="row">
					<div class="col s2"></div>
					<div class="col s8">
						<%-- 						<form:label path="poster">Poster</form:label> --%>
						<!-- 						<input type="file" name="foto"> -->

						<c:if test="${editar== true}">
							<form:input path="id" type="hidden" />
							<div class="col s4">
								<img alt="${peliculaNueva.titulo}"
									src="${pageContext.request.contextPath}${peliculaNueva.poster}"
									width="80%">
							</div>
						</c:if>

						<div class="col s12 m12 l6 offset-l3">
							<div class="file-field input-field">
								<div class="btn">
									<form:label path="poster">
										<span>Poster de la pelicula</span>
									</form:label>
									<input type="file" name="foto" />
								</div>
								<div class="file-path-wrapper">
									<input class="file-path validate" type="text"
										placeholder="Suba aqui su foto">
								</div>
							</div>
						</div>


					</div>

					<div class="col s2"></div>
				</div>

				<%@include file="/WEB-INF/views/layout/pelicula/chipsDirectores.jsp"%>
				<div class="row">
					<form:errors path="directores" style="color:red" />
				</div>

				<%@include file="/WEB-INF/views/layout/pelicula/chipsActores.jsp"%>

				<div class="row">
					<form:errors path="actores" style="color:red" />
				</div>

				<%@include file="/WEB-INF/views/layout/pelicula/chipsGeneros.jsp"%>

				<div class="row">
					<form:errors path="generos" style="color:red" />
				</div>

				<%@include
					file="/WEB-INF/views/layout/pelicula/chipsPlataformas.jsp"%>

				<div class="row">
					<form:errors path="plataformas" style="color:red" />
				</div>

				<c:choose>
					<c:when test="${editar}">
						<form:input path="id" type="hidden" />
					</c:when>
				</c:choose>

				<div class="row">
					<div class="col s12 m12 l6 offset-l3">

						<c:choose>
							<c:when test="${editar}">
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Actualizar <i class="material-icons right">send</i>
								</button>
							</c:when>
							<c:otherwise>
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Registrarse <i class="material-icons right">send</i>
								</button>
							</c:otherwise>
						</c:choose>
					</div>
				</div>

			</form:form>
		</div>
	</main>

</body>
<script
	src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/js/materialize.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>

<script
	src="${pageContext.request.contextPath}/resources/vendor/js/pelicula.js"></script>



</html>