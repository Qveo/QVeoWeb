<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>Login</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/materialize.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
</head>
<body>
	<main>
		<div class="container">
			<form name="login" action="/qveo/login" method="POST" 
				class="col s12 m12 l6 offset-l3 white-text">
				<div class="row">
					<div class="input-field col s12 m6 l6 offset-l3">
						<input id="email" type="text" name="username" class="validate" />
						<label for="email">Usuario<label> 
						<span
								class="helper-text" data-error="email inválido"
								data-success="Perfecto!"></span>
					</div>
					<div class="input-field col s12 m6 l6 offset-l3">
						<input type="password" id="password" name="password"
							class="validate" /> <label for="password">Password<label>
					</div>
					<div>
						<div class="row">
							<div class="col s12 m12 l6 offset-l3">
								<button type="submit" class="btn waves-effect waves-light botones">
									Entrar <i class="material-icons right">send</i>
								</button>
							</div>
						</div>
					</div>
				</div>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
		</div>
	</main>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/materialize.js"></script>
</body>
</html>
