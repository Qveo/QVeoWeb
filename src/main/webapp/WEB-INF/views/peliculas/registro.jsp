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

					<!-- 					<div class="input-field col s12"> -->
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
					<form:errors path="pais" style="color:red" />
				</div>


				<div class="row">
					<div class="col s2"></div>
					<div class="col s8">
						<form:label path="poster">Poster</form:label>
						<input type="file" name="foto">

						<c:if test="${editar== true}">
							<form:input path="id" type="hidden" />
							<div class="col s4">
								<img alt="${peliculaNueva.titulo}"
									src="${pageContext.request.contextPath}${peliculaNueva.poster}"
									width="80%">
							</div>
						</c:if>


					</div>

					<div class="col s2"></div>
				</div>

				<div class="row">
					<div class="col s12">

						<span>Directores</span> <br>
						<c:choose>
							<c:when test="${editar}">
								<c:forEach items="${directores}" var="director">
									<c:if test="${fn:contains(peliculaNueva.directores,director)}">
										<form:label for="${director.nombre}" path="directores">
											<form:checkbox id="${director.nombre}" path="directores"
												value="${director.id}" checked="checked" />
											<span>${director.nombre}</span>
										</form:label>
									</c:if>

									<c:if
										test="${not(fn:contains(peliculaNueva.directores,director))}">
										<form:label for="${director.nombre}" path="directores">
											<form:checkbox id="${director.nombre}" path="directores"
												value="${director.id}" />
											<span>${director.nombre}</span>
										</form:label>
									</c:if>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach items="${directores}" var="director">
									<form:label for="${director.nombre}" path="directores">
										<form:checkbox id="${director.nombre}" path="directores"
											value="${director.id}" />
										<span>${director.nombre}</span>
									</form:label>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				
				<div class="row">
					<form:errors path="directores" style="color:red" />
				</div>

				<div class="row">
					<div class="col s12">


						<span>Actores</span> <br>
						<c:choose>
							<c:when test="${editar}">
								<c:forEach items="${actores}" var="actor">
									<c:if test="${fn:contains(peliculaNueva.actores,actor)}">
										<form:label for="${actor.nombre}" path="actores">
											<form:checkbox id="${actor.nombre}" path="actores"
												value="${actor.id}" checked="checked" />
											<span>${actor.nombre}</span>
										</form:label>
									</c:if>

									<c:if test="${not(fn:contains(peliculaNueva.actores,actor))}">
										<form:label for="${actor.nombre}" path="actores">
											<form:checkbox id="${actor.nombre}" path="actores"
												value="${actor.id}" />
											<span>${actor.nombre}</span>
										</form:label>
									</c:if>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach items="${actores}" var="actor">
									<form:label for="${actor.nombre}" path="actores">
										<form:checkbox id="${actor.nombre}" path="actores"
											value="${actor.id}" />
										<span>${actor.nombre}</span>
									</form:label>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				
				<div class="row">
					<form:errors path="actores" style="color:red" />
				</div>

				<div class="row">
					<div class="col s12">


						<span>Generos</span>
							<c:choose>
							<c:when test="${editar}">
								<c:forEach items="${generos}" var="genero">
									<c:if test="${fn:contains(peliculaNueva.generos,genero)}">
										<form:label for="${genero.nombre}" path="generos">
											<form:checkbox id="${genero.nombre}" path="generos"
												value="${genero.id}" checked="checked" />
											<span>${genero.nombre}</span>
										</form:label>
									</c:if>

									<c:if test="${not(fn:contains(peliculaNueva.generos,genero))}">
										<form:label for="${genero.nombre}" path="generos">
											<form:checkbox id="${genero.nombre}" path="generos"
												value="${genero.id}" />
											<span>${genero.nombre}</span>
										</form:label>
									</c:if>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach items="${generos}" var="genero">
									<form:label for="${genero.nombre}" path="generos">
										<form:checkbox id="${genero.nombre}" path="generos"
											value="${genero.id}" />
										<span>${genero.nombre}</span>
									</form:label>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				
				<div class="row">
					<form:errors path="generos" style="color:red" />
				</div>

				<div class="row">
					<div class="col s12">


						<span>Plataforma</span>
							<c:choose>
							<c:when test="${editar}">
								<c:forEach items="${plataformas}" var="plataforma">
									<c:if test="${fn:contains(peliculaNueva.plataformas,plataforma)}">
										<form:label for="${plataforma.nombre}" path="plataformas">
											<form:checkbox id="${plataforma.nombre}" path="plataformas"
												value="${plataforma.id}" checked="checked" />
											<span>${plataforma.nombre}</span>
										</form:label>
									</c:if>

									<c:if test="${not(fn:contains(peliculaNueva.plataformas,plataforma))}">
										<form:label for="${plataforma.nombre}" path="plataformas">
											<form:checkbox id="${plataforma.nombre}" path="plataformas"
												value="${plataforma.id}" />
											<span>${plataforma.nombre}</span>
										</form:label>
									</c:if>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<c:forEach items="${plataformas}" var="plataforma">
									<form:label for="${plataforma.nombre}" path="plataformas">
										<form:checkbox id="${plataforma.nombre}" path="plataformas"
											value="${plataforma.id}" />
										<span>${plataforma.nombre}</span>
									</form:label>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
				
				<div class="row">
					<form:errors path="plataformas" style="color:red" />
				</div>



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

<script src="${pageContext.request.contextPath}/resources/js/menu.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/pelicula.js"></script>



</html>