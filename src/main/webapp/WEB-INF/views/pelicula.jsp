<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>QVeo web</title>
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/carousel.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/general.css">
</head>
<body>
	<header>
		<%@include file="/WEB-INF/views/layout/header.jsp"%>
	</header>
	<main>
	
	 <div class="row">

      <div class="col s3 izq ">
         <img src="img/rick.jpg" alt="rick" width="70%" height="70%" class="izq">
         
         <div>
			  
			  
			 	  <span>Genero:</span>
			 	  
			 	  <c:forEach items="${peliculas.generos}" var="genero">
                     
                      <a class="genero">${genero.nombre}</a>
                   </c:forEach> 
                   
                   
			   </div>
			   <div>
			   <span>Duracion:${peliculas.duracion}</span>
			   </div>
			   <div>
			   <span>Guion:${peliculas.guion}</span>
			   </div>		
			   		
			   		
                    
                     <p>Director:
                     <c:forEach items="${peliculas.directores}" var="director">
                     
                     ${director.nombre}
                     
                       </c:forEach>
                     </p>
                     
                     <p>Plataformas:
                      <c:forEach items="${peliculas.plataformas}" var="plataforma">
                     
                     ${plataforma.nombre}
                     
                       </c:forEach>
                     </p>
                     
                   
                    <p>Reparto:
                    <ul>
                     <c:forEach items="${peliculas.actores}" var="actores">
                     
                       <li>${actores.nombre}</li>
                     
                      </c:forEach>
                        
                    </ul>
                    </p>
               
                   
      </div>

      <div class="col derecha">
      
      
      	
        	<h2>${peliculas.titulo}<span class="fechaInicio">(${peliculas.anio})</span></h2>
        	
        	<div>
                        <ul>
                            <li> <a>Agregar</a></li>
                            <li> <a>Ir a la plataforma</a></li>
                        </ul>
                    </div>
        	
        	<h5>Sinopsis</h5>
                        <p>${peliculas.sinopsis}</p>
                        
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

	</main>		

	<footer>
		<%@include file="/WEB-INF/views/layout/footer.jsp"%>
	</footer>

</body>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/carousel.js"></script>
</html>
