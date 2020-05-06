<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>

	<main>
	<h1>hola mundo</h1>
<!-- 		<section> -->
			<form:form method="POST" action="/qveo/filtros" modelAttribute="seriesBuscar">
				<div class="row">
					<div class="col s1"></div>
					<div class="col s10 ">
						<span>Genero</span>
					</div>
				</div>
				<div class="row">
					<div class="col s1"></div>
					<div class="col s6 ">
						<form:select path="generos" multiple="true">
                            <form:option value="">Generos</form:option>
                            <form:options items="${generos}" itemLabel="nombre" />
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
<!-- 		</section> -->


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