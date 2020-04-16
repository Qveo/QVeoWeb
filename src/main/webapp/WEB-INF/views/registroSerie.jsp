<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>Registro de una serie</title>
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/serieRegistro.css">

</head>
<body>
<header>
    <%@include file="/WEB-INF/views/layout/header.jsp" %>
</header>

<main>
	<section>
	<div class="row">
	<form:form method="POST" action="/serie/create" modelAttribute="serieNueva" enctype="multipart/form-data" class="col s12">
	<div class="row">
		<div class="col s2"></div>
		<div class="input-field col s8">
			<form:label path="titulo">Titulo</form:label>
			<form:input path="titulo" id="titulo" />
		</div>
		<div class="col s2"></div>
	</div>
	
	<div class="row">
		<div class="col s2"></div>
		<div class="col s8">
			<form:label path="fechaInicio">Fecha de lanzamiento</form:label>
			<form:input type="date"  id="fechaInicio" path="fechaInicio"/>
		</div>
		<div class="col s2"></div>
	</div>
	
	<div class="row">
		<div class="col s2"></div>
		<div class="input-field col s8">
			<form:label path="temporadas">Temporada</form:label>
			<form:input path="temporadas" id="temporadas" />
		</div>
		<div class="col s2"></div>
	</div>
	
	<div class="row">
		<div class="col s2"></div>
		<div class="input-field col s8">
			<form:input path="capitulos" id="capitulos" />
			<form:label path="capitulos">Capitulos</form:label>
		</div>
		<div class="col s2"></div>
	</div>
	
	<div class="row">
			<div class="col s2"></div>
					<div class="col s8">
						<form:label path="poster">Poster</form:label>
						<input type="file" name="poster" />
					</div>
			<div class="col s2"></div>
	</div>
	
	<div class="row">
		<div class="col s2"></div>
		<div class="col s8">
			<form:label path="sinopsis">Sinopsis</form:label>
			<form:textarea path="sinopsis" id="sinopsis" rows="4" cols="20"/>
		</div>
		<div class="col s2"></div>
	</div>
	
	<div class="row">
					<div class="col s2"></div>
					<div class="col s8">
						<form:label path="generos">Género</form:label>
					</div>
					<div class="col s2"></div>
	</div>
	<div class="row">
		<div class="col s2"></div>
		<div class="col s8">
		
			<label><input type="checkbox"/><span>Filled in</span></label>
			<form:label path="generos">
				<form:checkbox path="generos" value="Java"/>  Java 
			</form:label>
			
			<!--<c:forEach items="${generos}" var="genero">

				<form:label path="generos" for="${genero.nombre}">
				<form:checkbox path="generos" id="${genero.id}" value="${genero.id}"/>
				<span>${genero.nombre}</span>
				
				</form:label>

			</c:forEach>-->
			
		</div>
		<div class="col s2"></div>
	</div>
	
	
	<div class="row">
		<div class="col s2"></div>
		<div class="col s8">
		<form:label path="pais">Pais de produccion</form:label>
		</div>
		<div class="col s2"></div>
	</div>
	
	<div class="row">
		<div class="col s2"></div>
		<div class="col s8">
		<form:select path="pais">
			<form:option value="0" selected="true" label="Escoja un pais" />
				<c:forEach items="${paises}" var="pais">
					<form:option value="${pais.id}" label="${pais.nombre}" />
				</c:forEach>
		</form:select>
			</div>
		<div class="col s2"></div>
	</div>
	
	<div class="row">
				<div class="col s2"></div>
					<div class="col s8">

						<button class="btn waves-effect waves-light" type="submit"
							name="action">Guardar Serie <i class="material-icons right">send</i>
						</button>
					</div>
					<div class="col s2"></div>
				</div>
	</form:form>
	
	</div>
	</section>
</main>

<footer>
    <%@include file="/WEB-INF/views/layout/footer.jsp" %>
</footer>
<script
        src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
</body>
</html>