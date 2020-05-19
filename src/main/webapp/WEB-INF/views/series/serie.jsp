<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<meta charset="ISO-8859-1">

<title>${series.titulo}</title>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/serie.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>

	<main>
		<div class="row">
			<div class="col s1"></div>
			<div class="col s10 derecha">
				<div class="col s4 bord">
					<img src="${pageContext.request.contextPath}${series.poster}"
						alt="rick" width="80%">

				</div>
				<div class="col s8">
					<h2>${series.titulo}
						<span class="fechaInicio">(<fmt:formatDate pattern="yyyy"
								value="${series.fechaInicio}" />)
						</span>
					</h2>
					<div>
						<ul>
							<li><span>Temporada:${series.temporadas}</span></li>
							<li><span>Capitulos:${series.capitulos}</span></li>
							<li><span>Pais:${series.pais.nombre}</span></li>
						</ul>

					</div>

					<div>
						<ul>
							<li><a>Agregar</a></li>
							<li><a>Ir a la plataforma</a></li>
						</ul>
					</div>

					<h5>Sinopsis</h5>
					<p>${series.sinopsis}</p>
					
				<div>
					<h5>Genero:</h5>
				<ul>
					<c:forEach items="${series.generos}" var="genero">

						<li><a class="genero">${genero.nombre}</a></li>
					</c:forEach>
				</ul>
			</div>	


				<div>
					<h5>
						Plataformas:
						<c:forEach items="${series.plataformas}" var="plataforma">
                     
                     ${plataforma.nombre}
                     
                       </c:forEach>
					</h5>
				</div>
				</div>
			</div>

			<div class="col s1"></div>

		</div>

		<div class="row">
			<div class="col s1"></div>
			<div class="col s10 ">
					<div class="col s4">

						<h5>Director:</h5>
						<ul>
							<c:forEach items="${series.directores}" var="director">
								<li>
									<div class="col s3">
										<img src="${pageContext.request.contextPath}${director.foto}"
											alt="${director.nombre}" width="100%">
										<div>
											<a href="#"> ${director.nombre}</a>
										</div>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				<div class="col s8">
					<h5>Reparto:</h5>

					<ul>
						<c:forEach items="${series.actores}" var="actores">
							<li>
								<div class="col s2">
									<img src="${pageContext.request.contextPath}${actores.foto}"
										alt="${actores.nombre}" width="60%">
									<div>
										<a href="#">${actores.nombre}</a>
									</div>
								</div>
							<li>
						</c:forEach>
					</ul>
				</div>
		</div>
			</div>
			<div class="row">
			<div class="col s1"></div>
			<div class="col s8">
				<div>
					<h4>Comentarios</h4>
				</div>
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
				<div class="col s3"></div>
			</div>
		
		<div class="col s1"></div>


	</main>

	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>
	<script
		src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
</body>
</html>