<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
        <!DOCTYPE html>
        <html>

        <head>
            <title>QVeo web</title>
            <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
            <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">
        </head>

        <body>
            <header>
                <%@include file="/WEB-INF/views/layout/header.jsp"%>
            </header>
            <main>

                <table class="centered highlight responsive-table">
                    <thead>
                        <tr>
                            <th>Foto</th>
                            <th>Nombre</th>
                            <th>Editar</th>
                            <th>Eliminar</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${actores}" var="actor">
                            <tr>
                                <td>
                                <img src="${pageContext.request.contextPath}${actor.foto}" alt="${actor.nombre}" width="30%"></td>
                                <td>${actor.nombre}</td>
                           <td><a href="/qveo/actor/edit/${actor.id}">Editar</a></td>  
                            <td><a href="/qveo/actor/delete/${actor.id}">Eliminar</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>

                <div class="row">
                    <div class="col s2">
                        <a href="/qveo/actor/form"><i class="">Nuevo Genero</i></a>
                    </div>
                </div>
            </main>


            <footer>
                <%@include file="/WEB-INF/views/layout/footer.jsp"%>
            </footer>

        </body>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

        </html>