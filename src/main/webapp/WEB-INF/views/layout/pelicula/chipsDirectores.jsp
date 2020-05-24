<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="row">
	<div class="col s12 m12 l6 offset-l3">
		<form:label path="directores">Directores</form:label>
	</div>
</div>
<div class="row">
	<div id="chips"
		class="chips chipsD chips-placeholder col s12 m12 l6 offset-l3"></div>
	<div id="directores">
		<c:choose>
			<c:when test="${editar || rep == true}">
				<c:forEach items="${directores}" var="director">
					<c:choose>
						<c:when test="${fn:contains(peliculaNueva.directores,director)}">
							<input class="${director.nombre}" type="hidden"
								name="directores" value="${director.id}">
						</c:when>
						<c:otherwise>
							<input class="${director.nombre}" type="hidden"
								name="directores" value="${director.id}" disabled>
						</c:otherwise>
					</c:choose>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<c:forEach items="${directores}" var="director">
					<input class="${director.nombre}" type="hidden"
						name="directores" value="${director.id}" disabled>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
</div>