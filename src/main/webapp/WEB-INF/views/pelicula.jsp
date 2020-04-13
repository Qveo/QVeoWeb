<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>QVeo web</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/pelicula.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>

		<div class="row">
			<div class="col s1"></div>
			<div class="col s10 derecha ">
				<div class="col s4 bord">
				<img
					src="${pageContext.request.contextPath}/resources/img/rick.jpeg"
					alt="rick" class="izq" width="80%">
				
				
				</div>
				<div class="col s8">
				<h2>${peliculas.titulo}<span class="fechaInicio">(${peliculas.anio})</span>
				</h2>

				<div>
					<ul>
						<li><a>Agregar</a></li>
						<li><a>Ir a la plataforma</a></li>
					</ul>
				</div>

				<h5>Sinopsis</h5>
				<p>${peliculas.sinopsis}</p>

				<table>
					<tr>
						<td>Comentario 1</td>
						<td>Fecha</td>
					</tr>
					<tr>
						<td>Comentario 2</td>
						<td>Fecha</td>
					</tr>
					<tr>
						<td>Comentario 3</td>
						<td>Fecha</td>
					</tr>
				</table>
				</div>
				</div>
			
			<div class="col s1"></div>
			
			</div>

			<div class="row">
				<div class="col s1"></div>
				<div class="col s10 ">
					<span>Genero:</span>
					<ul>
						<c:forEach items="${peliculas.peliculas}" var="genero">

							<li><a class="genero">${genero.nombre}</a></li>
						</c:forEach>
					</ul>

			
				<div>
					<span>Duracion: ${peliculas.duracion}</span>
				</div>

				<div>
					<span>Pais: ${peliculas.pais.nombre}</span>
				</div>
				<div>
					<span>Plataformas: <c:forEach
							items="${peliculas.plataformas}" var="plataforma">
                     
                     ${plataforma.nombre}
                     
                       </c:forEach>
					</span>
				</div>
				<div>
					<span>Guion: ${peliculas.guion}</span>
				</div>
				<div>

					Director:
					<ul>
						<c:forEach items="${peliculas.directores}" var="director">

							<li>${director.nombre}</li>

						</c:forEach>
					</ul>

				</div>

				<div>
					Reparto:
					<ul>
						<c:forEach items="${peliculas.actores}" var="actores">

							<li>${actores.nombre}</li>

						</c:forEach>

					</ul>

				</div>
				
				</div>

			</div>

		<div class="col s1"></div>


		</div>



	</main>

	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>

</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/carousel.js"></script>
</html>
