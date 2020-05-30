<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<div class="navbar-fixed">
	<nav>
		<div class="nav-wrapper navbar-fixed">
			<a href="#" class="sidenav-trigger" data-target="slide-out"><i
				class="material-icons">menu</i></a> <a
				href="${pageContext.request.contextPath}/home" class="title-qveo">QVEO</a>
			<ul class="right hide-on-med-and-down">
				<li><a href="${pageContext.request.contextPath}/">Inicio</a></li>
				<li><a href="#">B&uacutesqueda</a></li>
				<li><a href="#">Series</a></li>
				<li><a href="#">Pel&iacuteculas</a></li>
				<li><a href="#">M&aacutes Recientes</a></li>
				<sec:authorize access="isAnonymous()">
					<li><a id="login" href="<c:url value="/login" />">Sign in</a></li>
					<li><a href="<c:url value="/usuario/form" />">Sign up</a></li>
				</sec:authorize>
				<security:authorize access="hasRole('USER')">
					<li><a href="#!" class="dropdown-trigger"
						data-target="dropdown1"><img id="foto-user" class="circle icon-user"
							src="${pageContext.request.contextPath}"><i
							class="material-icons right">arrow_drop_down</i></a></li>
				</security:authorize>
				<security:authorize access="hasRole('ADMIN')">
					<li><a href="#!" class="dropdown-trigger"
						data-target="dropdown2"><img id="foto-user" class="circle icon-user"
							src="${pageContext.request.contextPath}"><i
							class="material-icons right">arrow_drop_down</i></a></li>
				</security:authorize>
			</ul>
			<ul class="right">
				<li>
					<div id="buscar-nombre" class="input-field mostrar-ocultar">
						<input type="text" id="autocomplete-input" class="autocomplete"
							placeholder="B&uacutesqueda..."> <a
							class="waves-effect waves-light btn clear" id="clear"><i
							class="material-icons">clear</i></a>
					</div>
				</li>
				<li><a id="buscar-nombre-trigger" class="scale-transition"
					href="#!"><i class="material-icons">search</i></a></li>
			</ul>
		</div>
	</nav>
</div>
<ul id="dropdown1" class="dropdown-content">
	<security:authorize access="hasRole('USER')">
		<li>Logueado como: <security:authentication
				property="principal.username" /></li>
	</security:authorize>
	<li><a href="#">Mi lista</a></li>
	<li><a href="#">Editar Datos</a></li>
	<li><a href="<c:url value="/logout" />">Logout</a></li>
</ul>
<ul id="dropdown2" class="dropdown-content">
	<security:authorize access="hasRole('ADMIN')">
		<li>Logueado como: <security:authentication
				property="principal.username" /></li>
	</security:authorize>
	<li><a href="#">Editar Datos</a></li>
	<li><a href="<c:url value="/usuario/form" />">Agregar un nuevo usuario</a></li>
	<li><a href="<c:url value="/admin/usuario/list" />">Lista usuarios</a></li>
	<li><a href="<c:url value="/admin/serie/listar" />">Lista series</a></li>
	<li><a href="<c:url value="/admin/peliculas/listar" />">Lista pel�culas</a></li>
	<li><a href="<c:url value="/admin/paises/listar" />">Lista paises</a></li>
	<li><a href="<c:url value="/admin/genero/list" />">Lista g�neros</a></li>
	<li><a href="<c:url value="/admin/plataformas/listar" />">Lista plataformas</a></li>
	<li><a href="<c:url value="/admin/actor/list" />">Lista actores</a></li>
	<li><a href="<c:url value="/admin/directores/listar" />">Lista directores</a></li>
	<li><a href="<c:url value="/logout" />">Logout</a></li>
</ul>
<ul id="slide-out" class="sidenav">
	<div>
		<a href="${pageContext.request.contextPath}/mi-configuracion"><img class="circle icon-user icon-user-sidenav"
			src="${pageContext.request.contextPath}/resources/img/iconouser.jpg"></a>
	</div>
	<li><a href="${pageContext.request.contextPath}/" class="font-color-sidenav">Inicio</a></li>
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
	src="${pageContext.request.contextPath}/resources/js/busqueda.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>