<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="row">
	<div class="col s12 m12 l6 offset-l3">
		<form:label path="plataformas">Plataformas</form:label>
	</div>
</div>
<div class="row">
	<div id="chips"
		class="chips chipsP chips-placeholder col s12 m12 l6 offset-l3"></div>
	<div id="plataformas">
		<c:choose>
			<c:when test="${editar==true || rep == true}">
				<c:forEach items="${plataformas}" var="plataforma">
					<c:choose>
						<c:when test="${fn:contains(peliculaNueva.plataformas,plataforma)}">
							<input class="${plataforma.nombre}" type="hidden"
								name="plataformas" value="${plataforma.id}">
						</c:when>
						<c:otherwise>
							<input class="${plataforma.nombre}" type="hidden"
								name="plataformas" value="${plataforma.id}" disabled>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<c:forEach items="${plataformas}" var="plataforma">
					<input class="${plataforma.nombre}" type="hidden"
						name="plataformas" value="${plataforma.id}" disabled>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
</div>