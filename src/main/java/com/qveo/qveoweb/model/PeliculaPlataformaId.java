package com.qveo.qveoweb.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class PeliculaPlataformaId implements Serializable {
	
	private static final long serialVersionUID = 1L;

	
	private Long peliculaId;
	
	
	private Long plataformaId;
	
	public PeliculaPlataformaId() {
		
	}
	public PeliculaPlataformaId(Long peliculaId, Long plataformaId) {
		this.peliculaId = peliculaId;
		this.plataformaId = plataformaId;
	}
	@Column(name = "ID_PELICULA")
	public Long getPeliculaId() {
		return peliculaId;
	}
	public void setPeliculaId(Long peliculaId) {
		this.peliculaId = peliculaId;
	}
	@Column(name = "ID_PLATAFORMA")
	public Long getPlataformaId() {
		return plataformaId;
	}
	public void setPlataformaId(Long plataformaId) {
		this.plataformaId = plataformaId;
	}
}
