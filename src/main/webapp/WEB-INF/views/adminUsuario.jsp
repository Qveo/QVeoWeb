<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/adminUsuario.css">
</head>
<body>
<header>
    <%@include file="/WEB-INF/views/layout/header.jsp" %>
</header>
<main>

    <div class="row">
        <div class="scroll-spy-sticky col hide-on-small-only m3 l2">
            <ul class="se4ction table-of-contents">
                <li><a href="#personal">Informaci&oacuten personal</a></li>
                <li><a href="#contrasena">Cambio de contrase&ntildea</a></li>
                <li><a href="#plataformas">Mis plataformas</a></li>
            </ul>
        </div>
        <div class="col s12 m9 l10">
            <div id="personal" class="section scrollspy">
                <div class="contenedor">
                    <form:form modelAttribute="personalDto"
                               action="${pageContext.request.contextPath}/mi-configuracion/editar-personal"
                               enctype="multipart/form-data">
                        <div>
                            <h4>Informaci&oacuten personal</h4>
                        </div>
                        <div>
                            <img src="${pageContext.request.contextPath}${personalDto.foto}">
                        </div>
                        <div>
                            <div class="file-field input-field">
                                <div class="btn">
                                    <span>Imagen de perfil</span>
                                    <input type="file" name="file"/>
                                </div>
                                <div class="file-path-wrapper">
                                    <input class="file-path validate" type="text"
                                           placeholder="Pinche aquí para subir una foto">
                                </div>
                            </div>
                        </div>
                        <div>
                            <form:input path="id" type="hidden"/>
                            <form:input path="foto" type="hidden"/>
                            <form:label path="nombre">Nombre</form:label>
                            <form:input path="nombre" placeholder="Nombre"/>
                            <form:errors path="nombre"/>
                            <form:label path="apellidos">Apellidos</form:label>
                            <form:input path="apellidos" placeholder="Apellidos"/>
                            <form:errors path="apellidos"/>
                            <form:label path="sexo">Sexo</form:label>
                            <form:radiobutton path="sexo" value="M"/>Masculino
                            <form:radiobutton path="sexo" value="F"/>Femenino
                            <form:errors path="sexo"/>
                            <form:label path="email">Email</form:label>
                            <form:input path="email" type="email" placeholder="Email"/>
                            <form:errors path="email"/>
                            <form:label path="fechaNacimiento">Fecha de nacimiento</form:label>
                            <form:input path="fechaNacimiento" cssClass="datepicker"
                                        value="" placeholder="Fecha de nacimiento"/>
                            <form:errors path="fechaNacimiento"/>
                            <form:button type="submit">Guardar Cambios</form:button>
                        </div>
                    </form:form>
                </div>
            </div>

            <div id="contrasena" class="section scrollspy">
                <div class="contenedor">
                    <form:form modelAttribute="contrasenaDto"
                               action="${pageContext.request.contextPath}/mi-configuracion/editar-contrasena">
                        <div>
                            <form:input path="id" type="hidden"/>
                            <form:label path="actual">Contrase&ntildea actual</form:label>
                            <form:input path="actual" placeholder="Contraseña actual" type="password"/>
                            <form:errors path="actual"/>
                            <form:label path="nueva">Nueva contrase&ntildea</form:label>
                            <form:input path="nueva" placeholder="Nueva contraseña" type="password"/>
                            <form:errors path="nueva"/>
                            <form:label path="confirmar">Confirmar contrase&ntildea</form:label>
                            <form:input path="confirmar" placeholder="Confirmar contraseña" type="password"/>
                            <form:errors path="confirmar"/>
                            <form:button type="submit">Guardar Cambios</form:button>
                        </div>
                    </form:form>
                </div>
            </div>

            <div id="plataformas" class="section scrollspy">
                <div class="contenedor">
                    <form:form modelAttribute="plataformaDto"
                               action="${pageContext.request.contextPath}/mi-configuracion/editar-plataformas">
                        <div>
                            <form:input path="id" type="hidden"/>
                            <c:forEach items="${plataformas}" var="plataforma">
                                <form:checkbox path="plataformas" value="${plataforma.id}" label="${plataforma.nombre}"/>
                            </c:forEach>
                            <form:button type="submit">Guardar Cambios</form:button>
                        </div>
                    </form:form>
                </div>
            </div>
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
        src="${pageContext.request.contextPath}/resources/js/adminUsuario.js"></script>

</html>
