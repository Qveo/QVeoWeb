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
				<th>Nombre</th>
				<th>Apellidos</th>
				<th>Email</th>
				<th>Fecha de Nacimiento</th>
				<th>Sexo</th>
				<th>Rol</th>
				<th>Editar</th>
				<th>Eliminar</th>
			</tr>
			</thead>
			<tbody>
			<c:forEach items="${usuarios}" var="usuario">
				<tr>
					<td>${usuario.nombre}</td>
					<td>${usuario.apellidos}</td>
					<td>${usuario.email}</td>
					<td>${usuario.fechaNacimiento}</td>
					<td>${usuario.sexo}</td>
					<td>${usuario.rol.nombre}</td>
					<td><a href="/qveo/usuario/edit/${usuario.id}" >Editar</a></td>
					<td><a href="/qveo/usuario/delete/${usuario.id}" >Eliminar</a></td>
				</tr>

			</c:forEach>
			</tbody>
		</table>
		
		<div class="row">
			<div class="col s2">
				<a href="/qveo/usuario/form"><i class="">Nuevo Usuario</i></a>
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