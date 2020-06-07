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
				href="${pageContext.request.contextPath}/home" class="title-qveo"><img
				class="nav-logo"
				src="${pageContext.request.contextPath}/resources/img/logo-line.png" /></a>
			<ul class="right hide-on-med-and-down">
				<li><a href="${pageContext.request.contextPath}/">Inicio</a></li>
				<li><a href="/qveo/filtro">Cat&aacutelogo</a></li>
				<li><a href="/qveo/peliculas">Pel&iacuteculas</a></li>
				<li><a href="/qveo/serie">Series</a></li>
				<sec:authorize access="isAnonymous()">
					<li><a id="login" href="<c:url value="/login" />">Sign in</a></li>
					<li><a href="<c:url value="/usuario/form" />">Sign up</a></li>
				</sec:authorize>
				<security:authorize access="hasRole('USER')">
					<li><a href="#!" class="dropdown-trigger desplegable-user"
						data-target="dropdown1"><img id="foto-user"
							class="circle icon-user" src="${pageContext.request.contextPath}"><i
							class="material-icons right">arrow_drop_down</i></a></li>
				</security:authorize>
				<security:authorize access="hasRole('ADMIN')">
					<li><a href="#!" class="dropdown-trigger desplegable-user"
						data-target="dropdown2"><img id="foto-user"
							class="circle icon-user" src="${pageContext.request.contextPath}"><i
							class="material-icons right">arrow_drop_down</i></a></li>
				</security:authorize>
			</ul>
			<ul class="right">
				<li>
					<div id="buscar-nombre" class="input-field mostrar-ocultar">
						<input type="text" id="autocomplete-input" class="autocomplete"
							placeholder="Buscar..."> <a
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
<ul id="slide-out" class="sidenav">
	<div>
		<a href="${pageContext.request.contextPath}/home"><img
			class="logo-link-sidenav"
			src="${pageContext.request.contextPath}/resources/img/logo.png"></a>
	</div>
	<li><a href="${pageContext.request.contextPath}/"
		class="font-color-sidenav">Inicio</a></li>
	<li><a href="/qveo/filtro" class="font-color-sidenav">B&uacutesqueda</a></li>
	<li><a href="/qveo/serie" class="font-color-sidenav">Series</a></li>
	<li><a href="/qveo/peliculas" class="font-color-sidenav">Pel&iacuteculas</a></li>
	<security:authorize access="hasRole('USER')">
		<li><a id=""
			href="${pageContext.request.contextPath}/usuario/mylist/"
			class="font-color-sidenav mylist">Mi lista</a></li>
	</security:authorize>
	<li><div class="divider"></div></li>
	<sec:authorize access="isAnonymous()">
		<li><a id="login" href="<c:url value="/login" />">Sign in</a></li>
		<li><a href="<c:url value="/usuario/form" />">Sign up</a></li>
	</sec:authorize>
	<security:authorize access="hasRole('USER')">
		<li>Logueado como: <security:authentication
				property="principal.username" /></li>
		<li><a class="mylist"
			href="${pageContext.request.contextPath}/usuario/mylist/">Mi
				lista</a></li>
		<li><a href="<c:url value="/mi-configuracion" />">Editar
				Datos</a></li>
		<li><a href="<c:url value="/logout" />">Logout</a></li>
	</security:authorize>
	<security:authorize access="hasRole('ADMIN')">
		<li>Logueado como: <security:authentication
				property="principal.username" /></li>
		<li><a href="<c:url value="/mi-configuracion" />">Editar
				Datos</a></li>
		<li><a href="<c:url value="/usuario/form" />">Agregar un
				nuevo usuario</a></li>
		<li><a href="<c:url value="/admin/usuario/list" />">Lista
				usuarios</a></li>
		<li><a href="<c:url value="/admin/serie/listar" />">Lista
				series</a></li>
		<li><a href="<c:url value="/admin/peliculas/listar" />">Lista
				pel&iacuteculas</a></li>
		<li><a href="<c:url value="/admin/paises/listar" />">Lista
				paises</a></li>
		<li><a href="<c:url value="/admin/genero/list" />">Lista
				g&eacuteneros</a></li>
		<li><a href="<c:url value="/admin/plataformas/listar" />">Lista
				plataformas</a></li>
		<li><a href="<c:url value="/admin/actor/list" />">Lista
				actores</a></li>
		<li><a href="<c:url value="/admin/directores/listar" />">Lista
				directores</a></li>
		<li><a href="<c:url value="/logout" />">Logout</a></li>
	</security:authorize>
</ul>
<ul id="dropdown1" class="dropdown-content">
	<security:authorize access="hasRole('USER')">
		<li>Logueado como: <security:authentication
				property="principal.username" /></li>
	</security:authorize>
	<li><a class="mylist"
		href="${pageContext.request.contextPath}/usuario/mylist/">Mi lista</a></li>
	<li><a href="<c:url value="/mi-configuracion" />">Editar Datos</a></li>
	<li><a href="<c:url value="/logout" />">Logout</a></li>
</ul>
<ul id="dropdown2" class="dropdown-content">
	<security:authorize access="hasRole('ADMIN')">
		<li>Logueado como: <security:authentication
				property="principal.username" /></li>
	</security:authorize>
	<li><a href="<c:url value="/mi-configuracion" />">Editar Datos</a></li>
	<li><a href="<c:url value="/usuario/form" />">Agregar un nuevo
			usuario</a></li>
	<li><a href="<c:url value="/admin/usuario/list" />">Lista
			usuarios</a></li>
	<li><a href="<c:url value="/admin/serie/listar" />">Lista
			series</a></li>
	<li><a href="<c:url value="/admin/peliculas/listar" />">Lista
			pel&iacuteculas</a></li>
	<li><a href="<c:url value="/admin/paises/listar" />">Lista
			paises</a></li>
	<li><a href="<c:url value="/admin/genero/list" />">Lista
			g&eacuteneros</a></li>
	<li><a href="<c:url value="/admin/plataformas/listar" />">Lista
			plataformas</a></li>
	<li><a href="<c:url value="/admin/actor/list" />">Lista
			actores</a></li>
	<li><a href="<c:url value="/admin/directores/listar" />">Lista
			directores</a></li>
	<li><a href="<c:url value="/logout" />">Logout</a></li>
</ul>
<script
	src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/vendor/js/materialize.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/busqueda.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/header.js"></script>
