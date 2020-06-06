<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>QVeo web - Usuario</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                <div class="contenedor mi-configuracion-section">
                    <form:form modelAttribute="personalDto"
                               action="${pageContext.request.contextPath}/mi-configuracion/editar-personal"
                               enctype="multipart/form-data">
                        <form:input path="id" type="hidden"/>
                        <form:input path="foto" type="hidden"/>
                        <h4>Informaci&oacuten personal</h4>
                        <div class="row">
                            <div class="col s12 m4 l4">
                                <div>
                                    <img class="foto-perfil" src="${pageContext.request.contextPath}${personalDto.foto}">
                                </div>
                            </div>
                            <div class="col s12 m8 l8">
                                <div class="row">
                                    <div class="col s12 m6 l6">
                                        <form:label path="nombre">Nombre</form:label>
                                        <form:input path="nombre" placeholder="Nombre"/>
                                        <form:errors cssClass="error-msg" path="nombre"/>
                                    </div>
                                    <div class="col s12 m6 l6">
                                        <form:label path="apellidos">Apellidos</form:label>
                                        <form:input path="apellidos" placeholder="Apellidos"/>
                                        <form:errors cssClass="error-msg" path="apellidos"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s12 m6 l6">
                                        <form:label path="sexo">Sexo</form:label>
                                        <label>
                                            <form:radiobutton path="sexo" value="M"/><span>Masculino</span>
                                        </label>
                                        <label>
                                            <form:radiobutton path="sexo" value="F"/><span>Femenino</span>
                                        </label>
                                        <form:errors cssClass="error-msg" path="sexo"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s12 m6 l6">
                                        <form:label path="email">Email</form:label>
                                        <form:input path="email" type="email" placeholder="Email"/>
                                        <form:errors cssClass="error-msg" path="email"/>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col s12 m6 l6">
                                        <form:label path="fechaNacimiento">Fecha de nacimiento</form:label>
                                        <form:input path="fechaNacimiento" cssClass="datepicker"
                                                    value="" placeholder="Fecha de nacimiento"/>
                                        <form:errors cssClass="error-msg" path="fechaNacimiento"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12 m4 l4">
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
                            <div class="col s12 m8 l8">
                                <button class="btn waves-effect waves-light submit-conf" type="submit" name="action">Guardar Cambios
                                </button>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>

            <div id="contrasena" class="section scrollspy">
                <div class="contenedor mi-configuracion-section">
                    <form:form modelAttribute="contrasenaDto"
                               action="${pageContext.request.contextPath}/mi-configuracion/editar-contrasena">
                        <form:input path="id" type="hidden"/>
                        <h4>Cambio de contrase&ntildea</h4>
                        <div class="row">
                            <div class="col s12 m6 l6">
                                <form:label path="actual">Contrase&ntildea actual</form:label>
                                <form:input path="actual" placeholder="Contraseña actual" type="password"/>
                                <form:errors cssClass="error-msg" path="actual"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12 m6 l6">
                                <form:label path="nueva">Nueva contrase&ntildea</form:label>
                                <form:input path="nueva" placeholder="Nueva contraseña" type="password"/>
                                <form:errors cssClass="error-msg" path="nueva"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12 m6 l6">
                                <form:label path="confirmar">Confirmar contrase&ntildea</form:label>
                                <form:input path="confirmar" placeholder="Confirmar contraseña" type="password"/>
                                <form:errors cssClass="error-msg" path="confirmar"/>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12 m12 l12">
                                <button class="btn waves-effect waves-light submit-conf" type="submit" name="action">Guardar Cambios
                                </button>
                            </div>
                        </div>
                    </form:form>
                </div>
            </div>

            <div id="plataformas" class="section scrollspy">
                <div class="contenedor mi-configuracion-section">
                    <form:form modelAttribute="plataformaDto"
                               action="${pageContext.request.contextPath}/mi-configuracion/editar-plataformas">
                        <form:input path="id" type="hidden"/>
                        <h4>Mis plataformas</h4>
                        <div class="row">
                            <div class="col s12 m12 l12">
                                <c:forEach items="${plataformas}" var="plataforma">
                                    <label class="check-label">
                                        <form:checkbox path="plataformas" value="${plataforma.id}"/><span><img class="img-plataforma" src="${pageContext.request.contextPath}${plataforma.foto}"></span>
                                    </label>
                                </c:forEach>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col s12 m12 l12">
                                <button class="btn waves-effect waves-light submit-conf" type="submit" name="action">Guardar Cambios
                                </button>
                            </div>
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
