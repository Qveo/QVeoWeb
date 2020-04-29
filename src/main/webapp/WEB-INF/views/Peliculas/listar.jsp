<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>

<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/general.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/tabla.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icon.css">
	<title>${titulo}</title>
</head>
 <body>
        <header>
            <%@include file="/WEB-INF/views/layout/header.jsp"%>
        </header>
        <main>
            <div class="row">
                <div class="col s12">
                    <a href="/qveo/peliculas/form"><i class="waves-effect waves-light btn agregar-usuario">Nueva pelicula</i></a>
                </div>
            </div>
            <table class="centered highlight responsive-table">
                <thead>
                    <tr>
                    	<th>Poster</th>
                        <th>Titulo</th>
                        <th>Duraci&oacuten</th>
                        <th>A&ntildeo</th>
                        <th>Pais</th>
                        <th>Editar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${peliculas}" var="pelicula">
                        <tr>
                           <td><img alt="${pelicula.titulo}" src="${pageContext.request.contextPath}${pelicula.poster}"></td>
                            <td>${pelicula.titulo}</td>
                            <td>${pelicula.duracion}</td>
                            <td><fmt:formatDate value="${pelicula.anio}" pattern="yyyy-MM-dd"/></td>
                            <td>${pelicula.pais.nombre}</td>
                            <td><a href="/qveo/peliculas/form/${pelicula.id}" ><i class="material-icons editar">edit</i></a></td>
                            <td><a href="/qveo/peliculas/delete/${pelicula.id}" ><i class="material-icons eliminar">delete</i></a></td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>




        </main>
        <footer>
            <%@include file="/WEB-INF/views/layout/footer.jsp"%>
        </footer>

    </body>
    <script
    src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

</html>