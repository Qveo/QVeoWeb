        <c:forEach items="${plataforma.series}" var="serie">
            <div id="modal-serie${plataforma.id}-${serie.id}" class="modal bottom-sheet">
                <div class="modal-content">
                    <div class="flexbox">
                        <img class="imagen-modal" src="${pageContext.request.contextPath}${serie.poster}"/>
                    </div>
                    <div class="flexbox">
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
                        <h4 class="titulo">Sinopsis</h4>
                        <h5 class="contenido">${serie.sinopsis}</h5>
                        <h4 class="titulo">Plataformas</h4>
                        <h5 class="contenido">${serie.plataformasConcatenadas()}</h5>
                        <a class="waves-effect waves-light btn-large">A&ntildeadir a mi lista</a>
                    </div>
                </div>
            </div>
        </c:forEach>
