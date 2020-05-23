<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
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
				<li><a href="#">Mi lista</a></li>
				<li><a href="${pageContext.request.contextPath}/usuario"><img
						class="circle icon-user"
						src="${pageContext.request.contextPath}/resources/img/iconouser.jpg"></a></li>
				<li>
					<a href="<c:url value="/login" />">Sign in</a>
				</li>
				<li>
					<a href="<c:url value="/usuario/form" />">Sign up</a>
				</li>
				<security:authorize access="authenticated">
				<li>
					<a href="<c:url value="/logout" />">Logout</a>
				</li>
				</security:authorize>
			</ul>
		</div>
	</nav>
</div>
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