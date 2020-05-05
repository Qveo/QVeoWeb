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
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((peliculaId == null) ? 0 : peliculaId.hashCode());
		result = prime * result + ((plataformaId == null) ? 0 : plataformaId.hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		PeliculaPlataformaId other = (PeliculaPlataformaId) obj;
		if (peliculaId == null) {
			if (other.peliculaId != null)
				return false;
		} else if (!peliculaId.equals(other.peliculaId))
			return false;
		if (plataformaId == null) {
			if (other.plataformaId != null)
				return false;
		} else if (!plataformaId.equals(other.plataformaId))
			return false;
		return true;
	}
	
	
	

}
