<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>${series.titulo}</title>
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/serie.css">
</head>
<body>
<header>
    <%@include file="/WEB-INF/views/layout/header.jsp" %>
</header>

<main>
	<section>
	<form  method="POST" enctype="multipart/form-data">
	<label>Titulo:</label><input type="text" name="titulo"><br>
	<label>Fecha de inicio:</label><input type="date" name="fechaInicio"><br>
	<label>Sinopsis:</label><textarea rows="4" cols="50" name="sinopsis"></textarea><br>
	<label>Temporada:</label><input type="text" name="temporadas">
	<label>Capitulos:</label><input type="text" name="capitulos">
	<label>Foto:</label><input type="file" name="poster">
	</form>
	
	</section>
</main>

<footer>
    <%@include file="/WEB-INF/views/layout/footer.jsp" %>
</footer>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>