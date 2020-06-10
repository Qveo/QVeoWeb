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


		<div class="container">
			<div class="row">
				<div class="col s12 m8 l4 offset-l4 offset-m2">
					<img
						src="${pageContext.request.contextPath}/resources/img/logo-line.png" />
				</div>
			</div>
			<div class="row">
				<div class="col s12 l4 m8 offset-l4 offset-m2 card-panel">
					<form id="login" name="login" action="/qveo/login" method="POST"
						class="login-form">
						<div class="row"></div>
						<div class="row">
							<div class="input-field col s12">

								<i class="material-icons prefix">mail_outline</i> <input
									id="email" type="text" name="username" class="validate" /> <label
									for="email" data-error="wrong" data-success="right">Email</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s12">
								<i class="material-icons prefix">lock_outline</i> <input
									type="password" id="password" name="password" class="validate" />
								<label for="password">Contrase&ntilde;a</label>
							</div>
						</div>
						<div class="row">
							<div class="input-field col s12 m12 l12">
								<button type="submit"
									class="btn waves-effect waves-light botones"
									style="width: 100%;">
									Login <i class="material-icons right">send</i>
								</button>
							</div>
						</div>

					</form>
				</div>
				<div class="col l4 m2"></div>
			</div>
			<div class="row">
				<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION.message}">
					<div class="error col s12 m8 l4 offset-l4 offset-m2" style="color:red;">
						<c:out value="Las credenciales son erroneas" />
					</div>
				</c:if>
			</div>
		</div>
	</main>
	<footer class="page-footer">
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/vendor/js/materialize.js"></script>
</body>
</html>
