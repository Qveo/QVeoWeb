<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title></title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="row">
			<c:choose>
				<c:when test="${edit}">
					<c:set var="action" scope="session"
						value="/qveo/peliculas/update/${pelicula.id}" />
				</c:when>
				<c:otherwise>
					<c:set var="action" scope="session"
						value="/qveo/peliculas/form/add" />
				</c:otherwise>
			</c:choose>

			<form:form method="POST" action="${action}"
				modelAttribute="peliculaNueva" enctype="multipart/form-data"
				class="col s12 white-text">

				<div class="row">
					<div class="input-field col s6">
						<form:input path="titulo" id="titulo" type="text" class="validate" />
						<form:label for="titulo" path="titulo">Titulo</form:label>
					</div>
					<div class="input-field col s3">
						<form:input path="duracion" id="duracion" class="validate" />
						<form:label for="duracion" path="duracion">Duraci&oacuten</form:label>
					</div>
					<div class="input-field col s3">
						<form:input path="anio" id="anio" class="validate" />
						<form:label for="anio" path="anio">A&ntildeo</form:label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s6">
						<form:input path="guion" id="guion" class="validate" />
						<form:label for="guion" path="guion">Gui&oacuten</form:label>
					</div>
					<div class="input-field col s6">
						<p>Sinopsis</p>
						<form:textarea path="sinopsis" id="sinopsis" />

					</div>
				</div>
				<div class="row">
					<div class="file-field input-field">
						<div class="btn">
							<span>File</span>
							<form:input path="poster" type="file" />
						</div>
						<div class="file-path-wrapper">
							<form:input path="poster" class="file-path validate" type="text" />
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col s12">

						<c:choose>
							<c:when test="${editar}">
								<c:forEach items="${directores}" var="director">
									<form:label path="directores">
										<c:forEach items="${peliculaNueva.directores}"
											var=" directorP">
											<c:choose>
												<c:when test="${director.id == directorP.id}">
													<form:checkbox path="directores" value="${director.id}"
														checked="checked" />${director.nombre}
													</c:when>
												<c:otherwise>
													<form:checkbox path="directores" value="${director.id}" />${director.nombre}
													</c:otherwise>
											</c:choose>
										</c:forEach>
									</form:label>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach items="${directores}" var="director">
			
								<form:label path="directores" for="${director.id}">
									<form:checkbox path="directores" value="${director.id}"
										id="${director.id}" />
										${director.nombre}
									</form:label>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
					</div>
				<div class="row">

					<div class="input-field col s12">
						<form:select path="pais">
							<c:choose>
								<c:when test="${editar}">
									<form:option value="0">Elija un país</form:option>
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

								</c:when>
								<c:otherwise>
									<form:option value="0">Elija un país</form:option>
									<c:forEach items="${paises}" var="pais">
										<form:option value="${pais.id}">${pais.nombre}</form:option>
									</c:forEach>
								</c:otherwise>
							</c:choose>
						</form:select>
					</div>

				</div>
				<div class="row">
					<div class="col s12 m12 l6 offset-l3">
						<c:choose>
							<c:when test="${edit}">
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Actualizar <i class="material-icons right">send</i>
								</button>
							</c:when>
							<c:otherwise>
								<button class="btn waves-effect waves-light" type="submit"
									name="action">
									Registrar Pelicula <i class="material-icons right">send</i>
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
        src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
        <script
        src="${pageContext.request.contextPath}/resources/js/ini.js"></script>
        <script>
        $('input[type=checkbox]').each(function() {

            var name = $(this).attr('name');
            $('[name="' + '_' + name + '"]').remove();

    });
        </script>
</html>