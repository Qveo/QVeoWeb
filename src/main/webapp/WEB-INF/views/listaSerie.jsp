<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
	href="${pageContext.request.contextPath}/resources/css/tabla.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
	
	<table class="centered highlight responsive-table">
		<thead>
			<tr>
				<th>Poster</th>
				<th>Titulo</th>		
				<th>Fecha de inicio</th>
				<th>Editar</th>
				<th>Eliminar</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${series}" var="serie">
			<tr>
			<td><img alt="${serie.titulo}" src="${pageContext.request.contextPath}${serie.poster}" width="20%"></td>
			<td>${serie.titulo}</td>
			<td>${serie.fechaInicio}</td>
			<td><a href="/qveo/serie/edit/${serie.id}" >Editar</a></td>
			<td><a href="/qveo/serie/delete/${serie.id}" >Eliminar</a></td>
			</tr>
			</c:forEach>
			</tbody>
			</table>
	
	<div class="row">
			<div class="col s2">
				<a href="/qveo/serie/form"><i class="">Nueva Serie</i></a>
			</div>
		</div>
	</main>
	
	
<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>

</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</html>