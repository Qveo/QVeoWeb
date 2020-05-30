<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
<head>
<meta charset="ISO-8859-1">

<title>${titulo}</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,400;1,700;1,900&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/materialize.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/icon.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/modal.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="container">
			<div class="row">
				<c:forEach items="${series}" var="serie">
					<div class="col s6 l3">
						<a class="waves-effect waves-light modal-trigger"
							href="#modal-serie-${serie.id}"> <img
							src="${pageContext.request.contextPath}${serie.poster}"
							width="100%" />
						</a>
					</div>
				</c:forEach>
				<c:forEach items="${peliculas}" var="pelicula">
					<div class="col s6 l3">
						<a class="waves-effect waves-light modal-trigger"
							href="#modal-pelicula-${pelicula.id}"> <img
							src="${pageContext.request.contextPath}${pelicula.poster}"
							width="100%" />
						</a>
					</div>
				</c:forEach>
			</div>
		</div>
	</main>
	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>
	<%@include file="/WEB-INF/views/layout/usuario/modalDetalleSerie.jsp"%>
	<%@include
		file="/WEB-INF/views/layout/usuario/modalDetallePelicula.jsp"%>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/materialize.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/usuario/add-to-list.js"></script>
</body>
</html>