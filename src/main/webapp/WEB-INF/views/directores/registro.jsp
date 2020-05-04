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
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>


		<form:form method="POST" action="/qveo/directores/form"
			modelAttribute="directorNuevo" enctype="multipart/form-data"
			class="col s12 white-text">

			<div class="row">
				<div class="col s3"></div>
				<div class="input-field col s6">
					<form:input path="nombre" id="nombre" type="text" class="validate" />
					<form:label for="nombre" path="nombre">Nombre</form:label>
					<form:errors path="nombre" style="color:red"></form:errors>
				</div>
				<div class="col s3"></div>
			</div>


			<div class="row">
				<div class="col s2"></div>
				<div class="col s8">
					<form:label path="foto">Foto</form:label>
					<input type="file" name="retrato">

					<c:if test="${edit}">
						<div class="col s4">
							<img alt="${directorNuevo.nombre}"
								src="${pageContext.request.contextPath}${directorNuevo.foto}"
								width="80%">
						</div>
					</c:if>

				</div>
				<div class="col s2"></div>
			</div>

			<c:choose>
				<c:when test="${edit}">
					<form:input path="id" type="hidden" />
				</c:when>
			</c:choose>

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
								Registrar Director <i class="material-icons right">send</i>
							</button>

						</c:otherwise>
					</c:choose>
				</div>
			</div>


		</form:form>
	</main>

</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
</html>