<%--
  Created by IntelliJ IDEA.
  User: Marta
  Date: 03/04/2020
  Time: 20:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>QVeo web - Usuario</title>
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Lato:ital,wght@0,100;0,300;0,400;0,700;0,900;1,100;1,400;1,700;1,900&display=swap"
          rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/menu.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css">
</head>
<body>
<header>
    <%@include file="/WEB-INF/views/layout/header.jsp" %>
</header>
<main>

    <div class="row">
        <div class="col hide-on-small-only m3 l2">
            <ul class="section table-of-contents">
                <li><a href="#personal">Informaci&oacuten personal</a></li>
                <li><a href="#contrasena">Cambio de contrase&ntildea</a></li>
                <li><a href="#plataformas">Mis plataformas</a></li>
            </ul>
        </div>
        <div class="col s12 m9 l10">
            <div id="personal" class="section scrollspy">
                <div class="contenedor">
                    <div>
                        <h4>Informaci&oacuten personal</h4>
                    </div>
                    <div>
                        <p>Imagen de perfil</p>
                        <p>ning&uacuten archivo seleccionado</p>
                    </div>
                    <div>
                        <p>Nombre</p>
                        <form></form>
                        <p>Apellidos</p>
                        <form></form>
                        <p>Sexo</p>
                        <p>Hombre</p>
                        <p>Mujer</p>
                        <p>Email</p>
                        <form></form>
                        <p>Fecha de nacimiento</p>
                        <form></form>
                    </div>

                </div>
            </div>

            <div id="contrasena" class="section scrollspy">
                <p>Content </p>
            </div>

            <div id="plataformas" class="section scrollspy">
                <p>Content </p>
            </div>
        </div>

    </div>

</main>
<footer>
    <%@include file="/WEB-INF/views/layout/footer.jsp" %>
</footer>
</body>
<script src="${pageContext.request.contextPath}/resources/vendor/js/jquery-3.4.1.min.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/vendor/js/materialize.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/header.js"></script>
<script
        src="${pageContext.request.contextPath}/resources/js/usuario.js"></script>

</html>
