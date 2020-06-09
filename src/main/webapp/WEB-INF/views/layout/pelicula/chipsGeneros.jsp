<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<div class="row">
	<div class="col s10 m12 l8 offset-l2">
		<form:label class ="especial" path="generos">Generos</form:label>
	</div>
</div>
<div class="row">
	<div id="chips"
		class="chips chipsG chips-placeholder col s12 m12 l8 offset-l2 "></div>
	<div id="generos">
		<c:choose>
			<c:when test="${editar==true || rep == true}">
				<c:forEach items="${generos}" var="genero">
					<c:choose>
						<c:when test="${fn:contains(peliculaNueva.generos,genero)}">
							<input class="${genero.nombre}" type="hidden"
								name="generos" value="${genero.id}">
						</c:when>
						<c:otherwise>
							<input class="${genero.nombre}" type="hidden"
								name="generos" value="${genero.id}" disabled>
						</c:otherwise>
					</c:choose>
					
				</c:forEach>
			</c:when>
			<c:otherwise>
				<c:forEach items="${generos}" var="genero">
					<input class="${genero.nombre}" type="hidden"
						name="generos" value="${genero.id}" disabled>
				</c:forEach>
			</c:otherwise>
		</c:choose>
	</div>
</div>