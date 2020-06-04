<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/materialize.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/login.css">
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/favicon.ico">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>

		<div class="row">
			<div class="col s12 m12 l6 offset-l5 offset-m3">
				<img
					src="${pageContext.request.contextPath}/resources/img/logo-line.png"
					width="200px" height="150px" />
			</div>
		</div>
		<div class="container">
			<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION.message}">
				<div class="error">
					<c:out value="Las credenciales son erroneas" />
				</div>
			</c:if>


			<div class="col s12 z-depth-6 card-panel">
				<form id="login" name="login" action="/qveo/login" method="POST"
					class="login-form">
					<div class="row">
						<div class="input-field col s12">
							<i class="material-icons prefix">mail_outline</i> <input
								id="email" type="text" name="username" class="validate" /> <label
								for="email">Usuario<label> <span
									class="helper-text" data-error="email inválido"
									data-success="Perfecto!"></span>
						</div>
					</div>
					<div class="row">
						<div class="input-field col s12">
							<i class="material-icons prefix">lock_outline</i> <input
								type="password" id="password" name="password" class="validate" />
							<label for="password">Password<label>
						</div>
					</div>
					<div>
						<div class="row">
							<div class="col s12 m12 l6 offset-l3">
								<button type="submit"
									class="btn waves-effect waves-light col s12">
									Entrar <i class="material-icons right">send</i>
								</button>
							</div>
						</div>
					</div>

				</form>
			</div>
		</div>
	</main>
	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/materialize.js"></script>
</body>
</html>
