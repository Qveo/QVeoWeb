<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>QVeo web</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/materialize.css">
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/resources/css/carousel.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">
</head>
<body>
<header>
    <%@include file="/WEB-INF/views/layout/header.jsp" %>
</header>
<main>
    <!-- 		<div class="row"> -->
    <!-- 		<div class="row"></div> -->
	<c:forEach items="${plataformas}" var="plataforma">
    <div class="row">
        <div class="col s12">
            <h3>
                <a href="#">Peliculas de ${plataforma.nombre}</a>
            </h3>
        </div>
    </div>

    <div class="row">
        <div class="col s12">
            <div class="carousel">
                <c:forEach items="${plataforma.peliculaPlataformas}" var="peliculaPlataformas">
                    <div class="carousel-item" style='background-image: url("${peliculaPlataformas.pelicula.poster}")'>
                        <a class="carousel-item" href="#modal${peliculaPlataformas.pelicula.id}">
                            <img src="${pageContext.request.contextPath}${peliculaPlataformas.pelicula.poster}">
                        </a>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
	</c:forEach>


</main>
<footer>
    <%@include file="/WEB-INF/views/layout/footer.jsp" %>
</footer>

</body>
<script
        src="${pageContext.request.contextPath}/resources/js/materialize.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/carousel.js"></script>
</html>
