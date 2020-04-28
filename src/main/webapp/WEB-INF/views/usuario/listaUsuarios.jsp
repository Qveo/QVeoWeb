<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
         <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Lista de usuarios</title>
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
              rel="stylesheet">
        <link rel="stylesheet"
              href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/css/general.css">
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/resources/css/tabla.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/icon.css">
    </head>
    <body>
        <header>
            <%@include file="/WEB-INF/views/layout/header.jsp"%>
        </header>
        <main>
            <div class="row">
                <div class="col s12">
                    <a href="/qveo/usuario/form"><i class="waves-effect waves-light btn agregar-usuario">Nuevo Usuario</i></a>
                </div>
            </div>
            <table class="centered highlight responsive-table">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellidos</th>
                        <th>Email</th>
                        <th>Fecha de Nacimiento</th>
                        <th>Sexo</th>
                        <th>Rol</th>
                        <th>Editar</th>
                        <th>Eliminar</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${usuarios}" var="usuario">
                        <tr>
                            <td>${usuario.nombre}</td>
                            <td>${usuario.apellidos}</td>
                            <td>${usuario.email}</td>
                            <td><fmt:formatDate pattern = "dd/MM/yyyy" value = "${usuario.fechaNacimiento}" /></td>
                            <td>${usuario.sexo}</td>
                            <td>${usuario.rol.nombre}</td>
                            <td><a href="/qveo/usuario/edit/${usuario.id}" ><i class="material-icons editar">edit</i></a></td>
                            <td><a href="/qveo/usuario/delete/${usuario.id}" ><i class="material-icons eliminar">delete</i></a></td>
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