        <c:forEach items="${plataforma.series}" var="serie">
            <div id="modal-serie${plataforma.id}-${serie.id}" class="modal bottom-sheet">
                <div class="container modal-content row">
                    <div class="col s12 m4 l4">
            <img class="imagen-modal" src="${pageContext.request.contextPath}${serie.poster}"/>
                    </div>
                    <div class="col s12 m4 l4">
                        <h4 class="titulo">T&iacutetulo</h4>
                        <h4 class="titulo-principal">${serie.titulo}</h4>
                        <h4 class="titulo">Estreno</h4>
                        <h5 class="contenido">${serie.fechaInicio}</h5>
                        <h4 class="titulo">Pais</h4>
                        <h5 class="contenido">${serie.pais.nombre}</h5>
                        <h4 class="titulo">Temporadas</h4>
                        <h5 class="contenido">${serie.temporadas}</h5>
                        <h4 class="titulo">Cap&iacutetulos</h4>
                        <h5 class="contenido">${serie.capitulos}</h5>
                        <h4 class="titulo">Plataformas</h4>
                        <h5 class="contenido">${serie.plataformasConcatenadas()}</h5>
                    </div>
                    <div class="col s12 m4 l4">
                        <h4 class="titulo">Sinopsis</h4>
                        <h5 class="contenido sinopsis">${serie.sinopsis}</h5>
                        <a class="waves-effect btn-large boton-ver z-depth-2 col s8 offset-s2" href="${pageContext.request.contextPath}/serie/${serie.id}">Ver informaci$oacuten</a>
                        <security:authorize access="hasRole('USER')">
                            <a class="waves-effect btn-large add-serie boton-agregar z-depth-2 col s8 offset-s2">Agregar a mi lista</a>
                            <p class="id-series" style="display:none">${serie.id}</p>
                        </security:authorize>
                    </div>
                </div>
            </div>
        </c:forEach>
