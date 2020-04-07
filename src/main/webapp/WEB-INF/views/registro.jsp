<%--
  Created by IntelliJ IDEA.
  User: Marta
  Date: 03/04/2020
  Time: 20:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Registro nuevo usuario</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="row">
			<form:form method="POST" action="#" modelAttribute="nuevoUsuario"
				enctype="multipart/form-data" class="col s10">
				<div class="row">
					<div class="input-field col s12">
						<form:input path="nombre" id="first_name" class="validate" />
						<form:label path="nombre">Nombre</form:label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<form:input path="apellidos" id="last_name" class="validate" />
						<form:label path="apellidos">Apellidos</form:label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<form:input id="email" type="email" path="email" class="validate" />
						<form:label path="email">Email</form:label>
					</div>
				</div>
				<div class="row">
					<div class="input-field col s12">
						<form:password id="password" path="password" class="validate" />
						<form:label path="password">Password</form:label>
					</div>
				</div>
				<div class="row">
					<div class="col s12">
						<form:label path="sexo">Género</form:label>
					</div>
					<form:label for="mas" path="sexo">
						<form:radiobutton id="mas" path="sexo" value="M"/>
						<span>Masculino</span>
					</form:label>
					<form:label for="fem" path="sexo">
						<form:radiobutton id="fem" path="sexo" value="F"/>
						<span>Femenino</span>
					</form:label>
				</div>
				<div class="row">
					<div class="col s12">
						<form:label path="fechaNacimiento">Fecha de Nacimiento</form:label>
						<form:input id="date" type="date" path="fechaNacimiento" />
					</div>
				</div>
				<div class="row">
					<div class="col s12">
						<span>Imagen de perfil</span><input type="file" name="foto" />
					</div>
				</div>
				<div class="row">
					<div class="col s12">

						<button class="btn waves-effect waves-light" type="submit"
							name="action">
							Registrarse <i class="material-icons right">send</i>
						</button>

					</div>
				</div>
			</form:form>
		</div>
	</main>
	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>

</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>
