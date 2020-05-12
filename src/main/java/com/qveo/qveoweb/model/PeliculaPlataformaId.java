package com.qveo.qveoweb.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class PeliculaPlataformaId implements Serializable {
	
	private static final long serialVersionUID = 1L;

	
	private Integer peliculaId;
	
	
	private Integer plataformaId;
	
	public PeliculaPlataformaId() {
		
	}
	public PeliculaPlataformaId(Integer peliculaId, Integer plataformaId) {
		this.peliculaId = peliculaId;
		this.plataformaId = plataformaId;
	}
	@Column(name = "ID_PELICULA")
	public Integer getPeliculaId() {
		return peliculaId;
	}
	public void setPeliculaId(Integer peliculaId) {
		this.peliculaId = peliculaId;
	}
	@Column(name = "ID_PLATAFORMA")
	public Integer getPlataformaId() {
		return plataformaId;
	}
	public void setPlataformaId(Integer plataformaId) {
		this.plataformaId = plataformaId;
	}
}
