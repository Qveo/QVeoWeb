
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Registro nuevo usuario</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
		<div class="row">
			<form:form method="POST" action="/qveo/usuario/form/add" modelAttribute="nuevoUsuario"
				enctype="multipart/form-data" class="col s12">
				<div class="row">
					<div class="col s2"></div>
					<div class="input-field col s8">
						<form:input path="nombre" id="first_name" class="validate" />
						<form:label path="nombre">Nombre</form:label>
					</div>
					<div class="col s2"></div>
				</div>
				<div class="row">
				<div class="col s2"></div>
					<div class="input-field col s8">
						<form:input path="apellidos" id="last_name" class="validate" />
						<form:label path="apellidos">Apellidos</form:label>
					</div>
					<div class="col s2"></div>
				</div>
				<div class="row">
				<div class="col s2"></div>
					<div class="input-field col s8">
						<form:input id="email" type="email" path="email" class="validate" />
						<form:label path="email">Email</form:label>
					</div>
					<div class="col s2"></div>
				</div>
				<div class="row">
				<div class="col s2"></div>
					<div class="input-field col s8">
						<form:password id="password" path="password" class="validate" />
						<form:label path="password">Password</form:label>
					</div>
					<div class="col s2"></div>
				</div>
				<div class="row">
					<div class="col s2"></div>
					<div class="col s8">
						<form:label path="sexo">Género</form:label>
					</div>
					<div class="col s2"></div>
				</div>
				<div class="row">
					<div class="col s2"></div>
					<div class="col s8">
						<form:label for="mas" path="sexo">
							<form:radiobutton id="mas" path="sexo" value="M" />
							<span>Masculino</span>
						</form:label>
						<form:label for="fem" path="sexo">
							<form:radiobutton id="fem" path="sexo" value="F" />
							<span>Femenino</span>
						</form:label>
					</div>
					<div class="col s2"></div>
				</div>
				<div class="row">
					<div class="col s2"></div>
					<div class="col s8">
						<form:label path="fechaNacimiento">Fecha de Nacimiento</form:label>
						<form:input id="date" type="date" path="fechaNacimiento" />
					</div>
					<div class="col s2"></div>
				</div>
				<div class="row">
				<div class="col s2"></div>
					<div class="col s8">
						<form:label path="foto">Imagen de perfil</form:label>
						<input type="file" name="file" />
					</div>
					<div class="col s2"></div>
				</div>
				<div class="row">
				<div class="col s2"></div>
					<div class="col s8">

						<button class="btn waves-effect waves-light" type="submit"
							name="action">
							Registrarse <i class="material-icons right">send</i>
						</button>
					</div>
					<div class="col s2"></div>
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
