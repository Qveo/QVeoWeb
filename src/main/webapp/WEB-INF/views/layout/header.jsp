<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="navbar-fixed">
	<nav>
		<div class="nav-wrapper">
			<a href="#" class="sidenav-trigger" data-target="slide-out"><i
				class="material-icons">menu</i></a> <a
				href="${pageContext.request.contextPath}/home" class="title-qveo">QVEO</a>
			<ul class="right hide-on-med-and-down">
				<li><a href="#">Inicio</a></li>
				<li><a href="#">B&uacutesqueda</a></li>
				<li><a href="#">Series</a></li>
				<li><a href="#">Pel&iacuteculas</a></li>
				<li><a href="#">M&aacutes Recientes</a></li>
				<sec:authorize access="isAnonymous()">
					<li><a href="<c:url value="/login" />">Sign in</a></li>
					<li><a href="<c:url value="/usuario/form" />">Sign up</a></li>
				</sec:authorize>
				<security:authorize access="isAuthenticated()">
					<li><a href="#">Mi lista</a></li>
					<li><a href="#!" class="dropdown-trigger"
						data-target="dropdown1"><img id="foto-user" class="circle icon-user"
							src="${pageContext.request.contextPath}"><i
							class="material-icons right">arrow_drop_down</i></a></li>
				</security:authorize>
			</ul>
		</div>
	</nav>
</div>
<ul id="dropdown1" class="dropdown-content">
	<security:authorize access="isAuthenticated()">
		<li>Logueado como <security:authentication
				property="principal.username" /></li>
	</security:authorize>
	<li><a href="#">Editar Datos</a></li>
	<li><a href="<c:url value="/logout" />">Logout</a></li>
</ul>
<ul id="slide-out" class="sidenav">
	<div>
		<a href="#"><img class="circle icon-user icon-user-sidenav"
			src="${pageContext.request.contextPath}/resources/img/iconouser.jpg"></a>
	</div>
	<li><a href="#" class="font-color-sidenav">Inicio</a></li>
	<li><a href="#" class="font-color-sidenav">B&uacutesqueda</a></li>
	<li><a href="#" class="font-color-sidenav">Series</a></li>
	<li><a href="#" class="font-color-sidenav">Pel&iacuteculas</a></li>
	<li><a href="#" class="font-color-sidenav">M&aacutes Recientes</a></li>
	<li><a href="#" class="font-color-sidenav">Mi lista</a></li>
	<li><div class="divider"></div></li>
</ul>
<script
	src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/js/materialize.js"></script>
	<script
	src="${pageContext.request.contextPath}/resources/js/header.js"></script>
