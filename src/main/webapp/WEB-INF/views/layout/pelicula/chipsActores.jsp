<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="row">
	<div class="col s12 m12 l8 offset-l2">
		<form:label class ="especial" path="actores">Actores</form:label>
	</div>
</div>
<div class="row">
	<div id="chips"
		class="chips chipsA chips-placeholder col s12 m12 l8 offset-l2"></div>
	<div id="actores">
		<c:choose>
			<c:when test="${editar==true || rep == true}">
				<c:forEach items="${actores}" var="actor">
					<c:choose>
						<c:when test="${fn:contains(peliculaNueva.actores,actor)}">
							<input class="${actor.nombre}" type="hidden"
								name="actores" value="${actor.id}">
						</c:when>
						<c:otherwise>
							<input class="${actor.nombre}" type="hidden"
								name="actores" value="${actor.id}" disabled>
						</c:otherwise>
					</c:choose>
					
				</c:forEach>
			</c:when>
			<c:otherwise>
				<c:forEach items="${actores}" var="actor">
					<input class="${actor.nombre}" type="hidden"
						name="actores" value="${actor.id}" disabled>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
</div>