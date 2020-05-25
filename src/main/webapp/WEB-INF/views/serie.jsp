<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<meta charset="ISO-8859-1">

	<title>${series.titulo}</title>
	
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
          rel="stylesheet">
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/serie.css">
</head>
<body>
<header>
    <%@include file="/WEB-INF/views/layout/header.jsp" %>
</header>

<main>
	 <section>
            <div class="row">

                <div class="col s4">
                
                     <img src="img/rick.jpg" alt="rick" width="70%" height="70%" class="izq">
                </div>
	
			<div class="col s6">
			  <h2>${series.titulo}<span class="fechaInicio">(${series.fechaInicio})</span></h2>
			  
			  <div>
			  
			  
			 	  <span>Genero:</span>
			 	  
			 	  <c:forEach items="${series.generos}" var="genero">
                     
                      <a class="genero">${genero.nombre}</a>
                   </c:forEach> 
                   
                   
			   </div>
			   <div>
			   <span>Temporada:${series.temporadas}</span>
			   </div>
			   <div>
			   <span>Capitulos:${series.capitulos}</span>
			   </div>		
			   		
			   		<div>
                        <ul>
                            <li> <a>Agregar</a></li>
                            <li> <a>Ir a la plataforma</a></li>
                        </ul>
                    </div>
                   
                 
                        <h5>Sinopsis</h5>
                        <p>${series.sinopsis}</p>
                     <p>Director:
                     <c:forEach items="${series.directores}" var="director">
                     
                     ${director.nombre}
                     
                       </c:forEach>
                     </p>
                     
                     <p>Plataformas:
                      <c:forEach items="${series.plataformas}" var="plataforma">
                     
                     ${plataforma.nombre}
                     
                       </c:forEach>
                     </p>

			</div>
			
            </div>

        	<div class="row">
        	
        	<div class="col s2"></div>
        	
        	<div class="col s8">
                    <h3>Casting</h3>
                    <ul>
                     <c:forEach items="${series.actores}" var="actores">
                     
                       <li>${actores.nombre}</li>
                     
                      </c:forEach>
                        
                    </ul>
                </div>
        	
        	<div class="col s2"></div>
        	</div>

        
        

        	<div class="row">
        	
        	<div class="col s2"></div>
        	
        	<div class="col s8">
                     <h3>Comentarios</h3>
                <div>
                    <table>
                        <tr>
                            <td>Comentario 1</td>
                            <td>Fecha</td>
                        </tr>
                        <tr>
                            <td>Comentario 2</td>
                            <td>Fecha</td>
                        </tr>
                        <tr>
                            <td>Comentario 3</td>
                            <td>Fecha</td>
                        </tr>
                    </table>
                </div>
                </div> 
                <div class="col s2"></div>
        	</div> 
        	 <div class="row">
        	 	<div class="col s2"></div>
	                <div class="col s7">
	                    <textarea rows="4" cols="50" maxlength="50">
	                    Enter text here...</textarea>
	                </div>
	             <div class="col s2"></div>
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